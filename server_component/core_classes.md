We will briefly describe here the core classes provided by the framework. From a developer point of view, the most important ones should be AJXP_Plugin (from which your own plugin will extend), and eventually the AJXP_Utils, AJXP_XMLWriter, HTMLWriter classes, that provides a wide bunch of static “utilitary” functions.

## Internals
The classes described here are mainly used by the internal framework to propagate the requests, handle the plugins registry, or manage low-level features. You generally don’t access them directly

+ **AbstractTest** an abstract class from wich all start-up tests must inherit
+ **AJXP_Controller** the main “Controller” (in the sense of an MVC pattern), applying the user-defined callbacks on webservice calls.
+ **AJXP_JSPacker** Utilitary tool to compile all JavaScripts into one more performant script
+ **UnixProcess** Used to launch tasks in background using php CLI
+ **AJXP_VarsFilter** : in charge of actually applying the declared filters

## Tools
+ **AJXP_Utils**: lot of static methods, check the code
+ **AJXP_XMLWriter** static methods to manipulate XML output
+ **HTMLWriter** static methods to manipulate HTML output
+ **HttpClient** Object to send requests from the server to a remote http server. See also the http_class/ library (alternative client)
+ **UserSelection** Parse a query sent by the WebApp with the standard file, file_0, file_1 parameters
+ **SystemTextEncoding** Useful methods to transcode something not-UTF8 to UTF8 and vice versa
+ **AJXP_Cache** Generic object used by the various editors to cache the thumbnails or other objects generated.

## Application Objects
+ **AJXP_Node** The very basic bit of data extracted from a repository, i.e. generally a file or a folder. Contains the metadata. The main method, loadNodeInfo(), will trigger a “node.info” hook that can be listened to enrich the node metadata at load time.
+ **AJXP_Role** (warning the class AjxpRole is deprecated) Define a set of Permissions, disabled actions and plugin parameters value that can be mapped to a user, a group, or a role.
+ **Repository** The representation of a workspace (= repository, same same).

## Useful Services
+ **AJXP_PluginsService** Manages all enabled / active plugins, can be queried to find a plugin
+ **AJXP_ShutdownScheduler** You can register some tasks to be performed after shutdown
+ **AJXP_Safe** Encapsulate credentials in a session, in an encrypted fashion.
+ dibi.compat.php Necessary if you want to speak SQL (database abstraction layer, see http://dibiphp.com)
+ **AuthService** All operations on users & groups, and a register of the currently logged user (AuthService::getUserLogged() )
+ **ConfService** Speaks with the configs backend, to a load all AjaXplorer internal data, but also the actual user implementations.