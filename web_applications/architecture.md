### The GUI ? A plugin of course!
Given this components and events driven architecture and as mentionned before, it allows to dynamically build and configure the components used by the GUI. Open plugins/gui.ajax.manifest.xml . As you can see, the whole application layout is in fact defined here! Inside the **&lt;template&gt;** tag, an HTML structure defines the various split panes, files list and trees that the application will display. This work as follow : the full HTML fragment is inserted inside the “element” defined by it’s id in the **&lt;template&gt;** tag, then the application will look for HTML elements that have the **ajxpClass, ajxpOptions** and **id** attributes. If the three are found, the class javascript ajxpClass is initialize with it’s element “**id**” and options “**ajxpOptions**” (JSON format). The “position” attribute of the template element can be “top”, “bottom”, “before”, “after” and is the position of the new HTML fragment given the target “element”.

For example, your own extension could append some html before and/or after “ajxp_desktop”, which would make the same effect as  the old “usertemplate_header.html” and “usertemplate_footer.html” inserts.

Beside this **&lt;template&gt;** element, you can also see the **&lt;component_config&gt;** element. This **&lt;component_config&gt;** node will trigger an event inside the GUI, and if a component is listening to this event and recognizes its own “className”, it can then take the content and parse it as needed. For example, this is how the columns definition is dynamically updated inside the FilesList component when you are switching to a repository that uses the access.fs plugin (see access.fs manifest). This columns definition is even dynamically redefined inside the mysql plugin at each “listing” queries (not only when switching to such a repository), as listing the data of a table comes with it’s own columns each time.

### ES6 and JSX Codes
Although Pydio still have a lot of legacy javascript code based on PrototypeJS code (see below), we are slowly transitionning to EcmaScript6 for core classes and ReactJS for UI components. These scripts require a "transpilation" step to be transformed to pure ES5-compatible javascript, which is done with Babel. When you install Pydio directly from the github sources, the scripts are NOT built by default. You do have to launch grunt in each plugin. If you develop directly on a packaged version of pydio, you will see both the sources and the transpiled versions folders, generally **react/** (sources) and **build/**. Make sure to always modify the source and then perform the transpilation.
 
Luckily, this step is easily done using the Grunt tool. Each plugin containing files requiring transpilation is now packed with two files: package.json and Gruntfile.js. The first one is an NPM dependencies file that will install all necessary dependencies, the second is the actual definition of tasks that will be performed by grunt. To see your changes correctly transpiled, go to the plugin folder and run the following commands : 

`$> npm install`

`$> grunt`

This will transpile all the files, and in the case of **gui.ajax** plugin, it will also perform a couple of JS/CSS minification and compilation. Furthermore, most of the Gruntfile declare a watch task: while developing, launch `grunt watch` on the command line: it will monitor any changes in the javascript sources and trigger the transpilation automatically.

### PrototypeJS extensions, Ajxp widgets
If you want to dig in the GUI, you’ll have to be familiar with the PrototypeJS framework. Unfortunately, it may not be as spread as jQuery, but it’s as powerfull and makes clearer syntax than jQuery. It’s really fast to learn as the basis of functions is not that huge, and there are various extensions that we use to have a complete and solid framework : **Prototype.livepipe.js** (developed by livepipe) adds event management at an object level (which is only present at DOM Node level in the Prototype Core), and **Prototype.oo.js** (developed by Charles du Jeu) adds other Object-Oriented features such as interfaces and class reflexion that allow a better documentation and debuging of the code.

Please note the main but important difference introduced by **Prototype.oo.js** to the class definition (even if core classes definition are totally compatible and stay untouched in Pydio of course).

When defining a class in Prototype, you’ll write

`MyNewClass = Class.create([parentClass], {prototypeObject});`

In our case, Pydio classes are defined like this  :

`Class.create("MyNewClass", [parentClass], {prototypeObject});`

In short, it allows us to find a class by its name in a much more easy way. The prototypeObject may also contain the `__implements key`, containing a string or an array strings referencing an interface name. If a class implements a given interface and does not correctly implements all the methods defined by the interface, the framework will trigger an error. Be aware that most of the Pydio components (like the editors, the treeview, etc) do implement IAjxpWidget interfaces, and may implement other ones like IActionProvider, IFocusable, etc… Have a look at the various principal components and interfaces to have a good understanding (recommended  : class.FilesList.js, class.FoldersTree.js, interfaces/* package).

### Events and PydioDataModel
You must be familiar with event-oriented GUI building. The big advantage of this approach is that beside a couple of core components that are initialized by the main Pydio class, the GUI itself is built dynamically and couples to the core only via events. This was not the case before this release, and basically it allows us to remove/change any GUI component without breaking anything, the events just being trigger but not listened by anyone. It removes dependencies between components that have nothing to do with each other. This allow a dynamic building/refreshing of the GUI components.

New to this release is also the encapsulation of all “customer” data (that is the data browsed by the repositories) inside a DataModel, separated from the actual presentation of this data. The basic atom of data is the AjxpNode (basically a file system node if you are browsing a filesystem, for example), and it is used to send event and communicate between gui components. The main Pydio class always maintain the current **ContextNode**, and ajxpNode that defines the global context of data browsing (typically the current folder in an FS case) and the current **Selection**, a bunch of nodes that are selected inside the currently focused component.

For example, in the standard GUI, when the “ajaxplorer:context_changed” event is fired, the FoldersTree is changing its currently selected branch, the FilesList reload itself with the content of the new context node, the location bar displays the current context node path, the info panels and toolbars refresh the active actions depending on the context, etc, etc.
