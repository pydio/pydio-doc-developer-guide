<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

### ES6 and JSX Codes

As explained in the Global Architecture > Technology Overview pages, Pydio javascript require a "transpilation" step to be transformed to pure ES5-compatible javascript, which is done with Babel. When you install Pydio directly from the github sources, the scripts are NOT built by default. You do have to launch grunt in each plugin. If you develop directly on a packaged version of pydio, you will see both the sources and the transpiled versions folders, generally **react/** (sources) and **build/**. Make sure to always modify the source and then perform the transpilation.
 
Luckily, this step is easily done using the Grunt tool. Each plugin containing files requiring transpilation is now packed with two files: package.json and Gruntfile.js. The first one is an NPM dependencies file that will install all necessary dependencies, the second is the actual definition of tasks that will be performed by grunt. To see your changes correctly transpiled, go to the plugin folder and run the following commands : 

`$> npm install`

`$> grunt`

This will transpile all the files, and in the case of **gui.ajax** plugin, it will also perform a couple of JS/CSS minification and compilation. Furthermore, most of the Gruntfile declare a watch task: while developing, launch `grunt watch` on the command line: it will monitor any changes in the javascript sources and trigger the transpilation automatically.

### React JS Components

Pydio UI is entirely written using the ReactJS framework. It helps make the codebase more scalable and maintainable, while executing super fast in the browser, thanks to its MVVM and Virtual DOM approach.
  
Please read about the basics of ReactJS if you want to go further.

### Events and PydioDataModel

You must be familiar with event-oriented GUI building. The big advantage of this approach is that beside a couple of core components that are initialized by the main Pydio class, the GUI itself is built dynamically and couples to the core only via events. This was not the case before this release, and basically it allows us to remove/change any GUI component without breaking anything, the events just being trigger but not listened by anyone. It removes dependencies between components that have nothing to do with each other. This allow a dynamic building/refreshing of the GUI components.

### Templates

Once you have some React components written and ready to be displayed, you will want to actually mount them in the interface. This is not done by the classical `ReactDOM.mountComponentAtNode()` call, but by declaring some "templates" tags in the XML of your plugin (then pydio will actually perform the 'mount' call).

See for example in `plugins/gui.ajax.manifest.xml` :

As you can see, the whole application layout is defined here: **&lt;template&gt;** tags are pointing to specific React components and may be mounted on certain condition (e.g. if theme is XXX).

    <!-- The bottom black message bar appearing/disappearing on-demand -->
    <template name="material_snack" element="body" position="bottom" namespace="PydioReactUI" component="MessageBar" props='{"containerId":"pydio_message_bar"}'/>
    <!-- The top progress bar that registers itself to listen to any network call and display an indeterminate progress -->
    <template name="network_loader" element="body" position="bottom" namespace="PydioReactUI" component="NetworkLoader" props='{}'/>    


Beside this **&lt;template&gt;** element, you can also see the **&lt;component_config&gt;** element. This **&lt;component_config&gt;** node will trigger an event inside the GUI, and if a component is listening to this event, it can then take the content and parse it as needed. For example, this is how the columns definition is dynamically updated inside the FilesList component when you are switching to a repository that uses the access.fs plugin (see access.fs manifest).