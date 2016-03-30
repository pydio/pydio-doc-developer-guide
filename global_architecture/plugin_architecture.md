## Plugins
### Overview
For those familiar with the Eclipse architecture, Pydio is based on the same approach : all features provided by the application are packed as “plugins”. Even the GUI itself is a plugin. This allow a huge modularity in creating features, overriding them, creating dependencies between them, etc. Some plugin will implement a given interface or abstract PHP class to give a precise set of features that are “understood” by the core of the application (like the Authentification plugins for example), other can add purely custom features to access a given set of data, manipulate it, add a specific “hello world” button somewhere in the application, etc…

Below, you can see the organisation of some of the plugins that are embedded in the core application, and that may be used for all the “internal data” management: configuration storage, authentication drivers, logs, etc.

[:image-popup:global_architecture/plugin_architecture/PLUGINS-Application-Data.png]

In this second diagram, you can see the plugins implied in all the actual business data manipulation: workspace drivers and metadata management.

[:image-popup:global_architecture/plugin_architecture/PLUGINS-Workspaces.png]

 
The keypoint here, is that **whatever feature you want to develop, you should create your own plugin**: it will be encapsulated, upgrade-proof, and should always demonstrate the flexibility of the system.

### Manifest.xml
A plug-in is “auto-declarative” via a specific XML file, called `manifest.xml`. This file contains all information needed to understand how it should be initialized and used, it’s declaring all necessary files and resources used by this plugin, and it will be able to have an impact on server and/or the client side. If the manifest.xml is present inside the plugin folder and its syntax is ok, the plugin can be activated.

As we will understand in the next chapter (XML Registry), plugins can, through their manifest.xml file, declare both server-side AND client-side behaviours :

+ Server-side: trigger a user-defined PHP function (“callback”) to answer a query when calling “my_action” : remember the paramenter **get_action** described above in this tutorial? your plugin will define a given function that will be called by the application when index.php?get_action=my_action is called by the client. All http parameters are passed to your callback, so you can do exactly anything you want with it.
+ Client-side: add an button to any toolbar or menu, trigger a JavaScript code snippet on the client side when clicking this button, and more generally, add any bit of code to the loaded GUI…

### “Core” plugins
Plugins are always characterized by a “type.name” syntax. “Type” allows a certain taxonomy in the plugins organisation, and the only reserved word is “core”. The “core.*” plugins have their name part referring to an existing “type” of plugin. A “core.type” has two particularities

1. it is always activated by the framework, and can be in charge of deciding whether to load the existing type.* plugins
2. all type.* plugins can access this plugin, in a kind of “inheritance” fashion.

For example, all workspaces drivers have an “access” type (access.fs, access.ftp, access.s3, etc), and the “core.access” plugin is a special plugin that defines an abstract PHP class that all access plugins must implement.