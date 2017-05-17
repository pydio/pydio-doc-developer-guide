### PHP Server – access points
Pydio is based on the PHP scripting language for the server-side, the main entry point being the **/index.php** of the root of the installation. Queries parameters are sent via HTTP GET or HTTP POST to the script, and responses can be sent back with various content types, depending on the action. The most common format is currently XML (always encoded in UTF-8) but JSON can be used for some specific actions (particularly in the Settings panel actions), and the downloads trigger “force-download” headers and binary data.

#### Session-based API

The standard API usage would be calling index.php with at least a **get_action** parameter. This parameter can be seen as the target service the query is adressing.  Additional parameters would then depend on this **get_action** value. This “actions” are in fact declared by all plugins, through XML files. See the **Plugins Architecture** paragraph for more details. Below, you can see a trace of the queries sent by the client to the server. The secure_token is a unique token attached to this instance of the GUI, for CSRF protection.

[:image-popup:global_architecture/technologies_overview/Snapshot-2013-06-19-at-14.37.31.png]

#### REST API v1

Actions can be triggered by the REST API: either using the API V1, that is listening on yourserver.com/pydio/api/ URL. If a “restParams” attribute is declared in the server callbacks in the XML files, and action is available through a REST call via /api/repository_alias/action_name/restParameters. Additional POST/GET parameters can be appended to the request as well.

#### REST API v2

Starting with Pydio 7, we introduced a new REST API that was designed from ground up to closely follow REST standards. The API v2 URLs are more specific and are mapped under the hood to specific pydio actions. Please see the References > REST API V2 for more information.

#### PHP Command line

Finally, all these actions can also be triggered from the command line, using PHP CLI and loading the **/cmd.php** file. Actions are in that case passed through the -a parameter, along with a repository id, users credential, and additional action parameters. The output is currently exactly the same as it would though an Http call.


### HTML5/JS WebAPP
The standard HTML client of Pydio must be seen more as a standalone application talking to the server as any “desktop” application would, than as the good old HTML pages PHP would generate on-the-fly: once all javascript resources are loaded in the browser, it acts as a remote client and only talks to the server through the API described above, retrieving and putting data but never getting “views”.

The Javascript layer is based on pure two stacks : a core library written in javascript (ES6) and graphical components written in React JS. Both are transpiled into pure-javascript using commong Grunt tasks (see below).

#### _JavaScript Compilation_

_Transpilation & Browserification_

It is now a common practice to write javascript file using cutting edge Javascript syntax, either ES6 or ES7, and "transpiling" them to javascript that will be surely understood by all browsers (ES5). Pydio uses ES6, along with JSX syntaxt (React specific syntax). The transpile operation is done using **[Babel](https://babeljs.io/)**.

Another aspect is the ability to use all the existing open source libraries available on NPM registry. This was originally designed for NodeJS programs, that can handle dynamically the load of these dependencies (using import 'libname' instructions). When it comes to browser application, an additional step is required to statically link to all dependencies and make sure they will be loaded inside the browser at runtime. This is done using **[Browserify](http://browserify.org/)**.

_Grunt Task_

Happily, if you need to make changes to javascript files or create your own plugin, you don't have to apply all these steps manually. An additional tool, **[Grunt](https://gruntjs.com/)**, can run all the necessary operation, following a set of instructions defined inside a **Gruntfile**. This is a NodeJS based tool, so in order to perform these transformation, you will have to install NodeJS/NPM on your server, and the grunt command line tool.

See next chapter "Setup Hacking".