### PHP Server – access points
AjaXplorer is based on the PHP scripting language for the server-side, the main entry point being the **/index.php** of the root of the installation. Queries parameters are sent via HTTP GET or HTTP POST to the script, and responses can be sent back with various content types, depending on the action. The most common format is currently XML (always encoded in UTF-8) but JSON can be used for some specific actions (particularly in the Settings panel actions), and the downloads trigger “force-download” headers and binary data.

The standard API usage would be calling index.php with at least a **get_action** parameter. This parameter can be seen as the target service the query is adressing.  Additional parameters would then depend on this **get_action** value. This “actions” are in fact declared by all plugins, through XML files. See the **Plugins Architecture** paragraph for more details. Below, you can see a trace of the queries sent by the client to the server. The secure_token is a unique token attached to this instance of the GUI, for CSRF protection.

[:image-popup:global_architecture/technologies_overview/Snapshot-2013-06-19-at-14.37.31.png]

As explained in the Administrator Guide, all these actions can also be triggered from the command line, using PHP CLI and loading the **/cmd.php** file. Action are in that case passed through the -a parameter, along with a repository id, users credential, and additional action parameters. The output is currently exactly the same as it would though an Http call.

In v5.0.0, we introduced a **/rest.php** access point to server the API in a more RESTful oriented way. This is still a bit experimental, as it requires you to edit the file and manually set up a Key / Secret pair, and as all actions are not yet supporting this access. See the “restParams” attribute of the server callbacks in the XML files for a definition of the rest path to use.

### HTML5/JS WebAPP
The standard HTML client of AjaXplorer must be seen more as a standalone application talking to the server as any “desktop” application would, than as the good old HTML pages PHP would generate on-the-fly: once all javascript resources are loaded in the browser, it acts as a remote client and only talks to the server through the API described above, retrieving and putting data but never getting “views”.

The Javascript layer is powered by PrototypeJS, enhanced with some custom object orientation aspects, as well as event-driver orientation aspects.

#### _Developer Tools_
Working on such a GUI needs a different approach than good old HTML. The complex structure of the JavaScript framework, and the dynamic building of DOM elements make it even harder to debug when you have display problems. When communicating with the server, all queries are done by XmlHttpRequest, never by a reloading of the page, and these queries are thus “hidden” to the user sight.

To solve these problems, the best tool ever : the Web Developer Tools from Google Chrome. It will allow you to scan the DOM structure in real time, monitor the XHR queries, debug the JavaScript, etc. But be also aware that what you develop will be executed on many different browsers : Firefox, Webkit (chrome/safari), Internet Explorer, Opera, etc… Always test your changes on all browser.

#### _JavaScript Compilation?_
When running Javascript frameworks, it’s now a common task to apply a transformation to the javascript source to make it smaller. This “compilation”, in fact a succession of **_obfuscation_** and **_minification_**, leads to a drastic gain in download and in performance for the users. The same kind of transformation is applied to Cascading StyleSheets to make them smaller. The only backdraft of this is that when you are developping, you’ll have to compile your changes in both the JavaScript and the CSS, to be able to see them appear in the GUI.

The configuration option **AJXP_CLIENT_DEBUG** in the `conf/bootstrap_context.php` file is here for that: when set to true, the GUI no more calls the compiled version of the files, but each file separately. Thus you can debug much more easily, and once you’re finished, you compile and refresh your application.

[:image-popup:global_architecture/technologies_overview/Snapshot-2013-06-19-at-14.41.50.png]

To compile, still in “debug” mode, call /path/to/ajaxplorer/?compile=true. Then you can either switch back the AJXP_CLIENT_DEBUG to false, or if you are in a developement cycle and don’t wan’t to edit the conf/bootstrap_context.php file each time, you can call **/path/to/ajaxplorer/?skipDebug=true**.

NOTE: You must be aware that this “compilation” transforms the JavaScript code and among other, removes all line breaks. This means that your JavaScript syntax must be “perfect” to avoid seeing errors appear in your compiled version that are not detected in the original version. For example, a forgotten semi-column at the end of a line may pass through in source mode, as the line-break is interpreted as a “;” by the Javascript interpreters, but this will make an error in compiled mode.