<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

We will briefly describe here the core classes provided by the framework. From a developer point of view, the most important ones should be **PluginsFramework\Plugin** (from which your own plugin will extend), and all the **Services\\*** classes that gives you quick access to the application state.

Main Namespace is \Pydio, it should be prefixed inside all classes below.

## Controller

This package contains the main Controller class (C of MVC) plus various alternative tools to run pydio action, either on command line or after the connection is closed.

 - Controller\CliRunner
 - Controller\Controller
 - Controller\HTMLWriter
 - Controller\ProgressBarCLI
 - Controller\ShutdownScheduler
 - Controller\UnixProcess
 
## Exception

Pydio specific exceptions

 - Exception\ActionNotFoundException
 - Exception\AuthRequiredException
 - Exception\DBConnectionException
 - Exception\ForbiddenCharacterException
 - Exception\LoggingException
 - Exception\LoginException
 - Exception\NoActiveWorkspaceException
 - Exception\PydioException
 - Exception\PydioPromptException
 - Exception\PydioUserAlertException
 - Exception\RepositoryLoadException
 - Exception\ResponseEmissionException
 - Exception\RouteNotFoundException
 - Exception\UserInterruptException
 - Exception\UserNotFoundException
 - Exception\WorkspaceAuthRequired
 - Exception\WorkspaceForbiddenException
 - Exception\WorkspaceNotFoundException
 
 
## Http

This package handles all the communication to\from server. This is entirely based on PSR-7 interfaces (ServerRequestInterface, ResponseInterface), using the Zend\Diactoros implementation (loaded via Composer).
Additionally, the Router is based on FastRoute package (loaded via composer as well).

 - Http\**Base** : A static class in charge of boot the Server object.
 - Http\**Cli** : a specific "server" that encapsulates pydio middlewares when running via Command Line.
 
     - Http\Cli\AuthCliMiddleware
     - Http\Cli\CliMiddleware
     - Http\Cli\CliServer
     - Http\Cli\Command
     - Http\Cli\FreeArgvOptions
     - Http\Cli\FreeDefOptions
     
 - Http\**Dav** : dedicated server for serving workspace data via WebDAV.
 
     - Http\Dav\AuthBackendBasic
     - Http\Dav\AuthBackendDigest
     - Http\Dav\BrowserPlugin
     - Http\Dav\Collection
     - Http\Dav\DAVResponse
     - Http\Dav\DAVServer
     - Http\Dav\Node
     - Http\Dav\NodeLeaf
     - Http\Dav\RootCollection
 - Http\**Message** : Various classes encapsulating specific response messages
 
     - Http\Message\ExternalUploadedFile
     - Http\Message\JsActionTrigger
     - Http\Message\LoggingResult
     - Http\Message\Message
     - Http\Message\RegistryMessage
     - Http\Message\ReloadMessage
     - Http\Message\ReloadRepoListMessage
     - Http\Message\UserMessage
     - Http\Message\XMLDocMessage
     - Http\Message\XMLMessage
     
 - Http\**Middleware** : Main middleware stacked when calling a request from server
     - Http\Middleware\AuthMiddleware
     - Http\Middleware\ITopLevelMiddleware
     - Http\Middleware\SapiMiddleware
     - Http\Middleware\SecureTokenMiddleware
     - Http\Middleware\SessionMiddleware
     - Http\Middleware\SessionRepositoryMiddleware
     - Http\Middleware\WorkspaceAuthMiddleware
     
 - Http\**Response** : Special response objects that can be easily serialized to a given format (namely XML or JSON)
 
     - Http\Response\AsyncResponseStream
     - Http\Response\CLISerializableResponseChunk
     - Http\Response\FileReaderResponse
     - Http\Response\JSONSerializableResponseChunk
     - Http\Response\SerializableResponseChunk
     - Http\Response\SerializableResponseStream
     - Http\Response\XMLDocSerializableResponseChunk
     - Http\Response\XMLSerializableResponseChunk
     
 - Http\**Rest** : Specific middlewares when accessing via REST
     - Http\Rest\ApiRouter
     - Http\Rest\RestApiMiddleware
     - Http\Rest\RestApiServer
     - Http\Rest\RestAuthMiddleware
 - Http\**Server** : the base class of our PSR-7 server
 - Http\**SimpleRestResourceRouter**: Simpel router for rest resources
 - Http\**TopLevelRouter** : Top level router using plugins\core.ajaxplorer\routes\*.json files to load into FastRoute
 - Http\**Wopi** : Specific middlewares for serving files via the Wopi protocol (used for Collabora)
     - Http\Wopi\AuthFrontend
     - Http\Wopi\AuthMiddleware
     - Http\Wopi\Middleware
     - Http\Wopi\Router
     - Http\Wopi\Server
     
## Model

This package contains some Model classes or interfaces for various aspects of the application (users, workpaces, etc). Interfaces are generally implemented inside the plugins.

 - Model\AddressBookItem
 - Model\Context
 - Model\ContextInterface
 - Model\ContextProviderInterface
 - Model\FilteredRepositoriesList
 - Model\FilteredUsersList
 - Model\RepositoryInterface
 - Model\UserInterface
 
## PluginFramework

Core framework for detecting plugins and launching the plugin registry. This is really the heart of the machine.

 - PluginFramework\CoreInstanceProvider
 - PluginFramework\Plugin
 - PluginFramework\PluginsService
 - PluginFramework\SqlTableProvider
 
## Serializer

Utils used for serializing model objects into specific formats

 - Serializer\NodeXML
 - Serializer\RepositoryXML
 - Serializer\UserXML
 
## Services

Singletons available throughout the application, for getting or setting the datamodel objects.

 - Services\ApiKeysService
 - Services\ApplicationState
 - Services\AuthService
 - Services\CacheService
 - Services\ConfService
 - Services\LocalCache
 - Services\LocaleService
 - Services\RepositoriesCache
 - Services\RepositoryService
 - Services\RolesService
 - Services\SessionService
 - Services\UsersService
 
## Utils

Many tools for helping with string manipulation, request parsing, etc.

 - Utils\**Crypto**
     - Utils\Crypto\Key
     - Utils\Crypto\ZeroPaddingRijndael
     - Utils\Crypto
 - Utils\**DBHelper**
 - Utils\**FileHelper**
 - Utils\**Http**
     - Utils\Http\BruteForceHelper
     - Utils\Http\captcha_words.txt
     - Utils\Http\CaptchaProvider
     - Utils\Http\CookiesHelper
     - Utils\Http\UserAgent
 - Utils\**Reflection**
     - Utils\Reflection\DiagnosticRunner
     - Utils\Reflection\DocsParser
     - Utils\Reflection\LocaleExtractor
     - Utils\Reflection\PydioSdkGenerator
 - Utils\**TextEncoder**
 - Utils\Vars
     - Utils\Vars\InputFilter
     - Utils\Vars\OptionsHelper
     - Utils\Vars\PasswordEncoder
     - Utils\Vars\PathUtils
     - Utils\Vars\StatHelper
     - Utils\Vars\StringHelper
     - Utils\Vars\UrlUtils
     - Utils\Vars\VarsFilter
     - Utils\Vars\XMLFilter
 - Utils\XMLHelper
