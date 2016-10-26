## PHP Version Requirements

Due to new third-party libraries we use in Pydio code, PHP minimal version is now bumped to **5.5.9**. PHP version 7 should be supported out-of-the-box as well.

## PHP Standards Recommendations

The PHP code underwent a **massive** rewrite, following more modern PHP recommendations, particularly: 
* Namespaces for all pydio classes
* PSR4 class loading
* [Composer](https://getcomposer.org/download/) for external dependencies
* PSR7 Pattern for HTTP server modelisation, using Zend\Diactoros implementation of RequestInterface / ResponseInterface and our own implementation of the Middleware pattern.
* Pydio core code (which is not inside plugins) has been reorganised to split classes into smaller ones and make naming more comprehensive

### What does it imply?

100% of the PHP Classes were at least modified if not totally rewritten. Your custom plugins **will very probably be broken**. However, migration should not be that hard, and will often be a matter of (1) using namespaces to import and call core classes and (2) changing main action methods signatures from array parameters to Request/Response parameters. 

Where the standard signature for plugin actions used to be 

    /**
     * @param string $actionName Name of the current action
     * @param array $httpVars Array of key value passed through GET or POST
     * @param array $fileVars Array of file data parsed by php upload.
     */
    public function myAction($actionName, $httpVars, $fileVars){
        echo "Hello World";
    }

It is now
    
    use Psr\Http\Message\ResponseInterface;
    use Psr\Http\Message\ServerRequestInterface;
    use Psr\Http\Message\UploadedFileInterface;
    
    /**
     * @param string $requestInterface A Psr\
     * @param array $responseInterface Array of key value passed through GET or POST
     */
    public function myAction(ServerRequestInterface $requestInterface, ResponseInterface &$responseInterface){
        $actionName    = $requestInterface->getAttribute("action");
        $httpVars      = $requestInterface->getParsedBody();
        /** @var UploadedFileInterface[] $uploadedFiles */
        $uploadedFiles = $request->getUploadedFiles();
        $responseInterface->getBody()->write("Hello World");
    }
    
Although the first signature is backward-compatible, it is highly recommended to switch to the new one.

## Routing

One huge step is the long-awaited integration of an internal routing component that replaces all the fancy RewriteRules we had. This is super powerful, and based on the nikic/fast-route component. 

### What does it imply ?

The main .htaccess (and its web.config or nginx configs counterparts) is massively simplified - we only need to redirect all requests to /index.php. This is automatically done during upgrade for the .htaccess file. The rewrite rules now look like : 

    RewriteEngine on
    RewriteBase /pydio7
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule (.*) index.php [L]

Nice! And that's not all. 

### Shares access point

With that new ability, we removed the need for a specific `data/public` folder to access the shared links. We can easily configure the public access point to be redirected to the main index.php. By default, it will now be served on `/public/` access point! For a new install, the data/public folder should not be needed any longer. For an upgrade, the content of data/public/share.php will change to make sure links pointing to data/public are still working. 

## Context and session, caching

Another massive refactoring was done on how pydio code knows about the current 'context' in which it is operating : the context is a USER and a WORKSPACE. In the previous versions (and since AjaXplorer time), this information was stored in the session: when a user logged in and went to a workspace, the session was updated with the current state. And then in every part of the code, we retrieved the information via the session. This was ok, but had a limitation on applying actions having an impact on another context. For example, when a shared workspace action notified its "parent workspace" that something happened, we switched to a hacky temporary session then switched back after we were done. 

Instead, the Context information is now passed on throughout the code via function parameters, and only the very top layer is still managing the session context. 

Concretely, this allows us to implement new interesting features, like cross-workspace search on the user home page, and many administrative operations where admin can "impersonate" a user to launch a task on a given workspace. 

### What does it imply?

#### Caching Required

If you read about the "registry" before, you may know that this User/Workspace couple is also tightly linked to a given version of the "registry": when a user1 is logged on workspace1, the current registry is reflecting this by using the user1 role and workspace configs to enable/disable some features. Handling multiple contexts internally thus imply to handle multiple versions of the registry as well, which can be resource intensive.  

For that reason, we pushed forward the use of Caching, and **it is really, really recommended to use an in-memory caching system with Pydio**. APCu extension can be an easy-to-install solution. Using an external server such as Redis would be a much better option for large scale deployments.

#### Codes modification (for custom devs)

Typically where a plugin code was trying to find the current user, it was done in Pydio6 with 

    $loggedUser = AuthService::getLoggedUser();
    
Now the context is passed through the RequestInterface object: 

    $ctx = $requestInterface->getAttribute("ctx");
    $crtUser = $ctx->getUser();

## Removed features

Please note that some legacy features, that were already discouraged since a couple of versions **were now totally removed**: 
* PLUGINS : auth.serial / conf.serial plugins
* PLUGINS : access.remote_fs / auth.cmsms
* THEMES : oxygen, umbra, vision. All except orbit were removed, we'll rework a new theme system based on orbit in the future.

If you are using one of these, upgrade should not be possible.
