The root element of any manifest should be an `<ajxp_plugin>` element, with the id attribute set to the plugin id (id = type.name). For the sake of listing and documenting the pluging, a couple of attributes are required :

+ id: type.name of the plugin. Actually it is added automatically if not there
+ label, description: can either be simple texts (“My Plugin Name”, “A more detailed description”), but it is recommanded to enclose the text inside a CONF_MESSAGE[“your text here”] bracket. This will refer to i18n libraries, see the dedicated section.
+ mixins: refers to the /plugins/core.ajaxplorer/ajxp_mixins.xml file, where some commonly used set of XML elements are defined. You can refer to a comma-separated list of “mixins”, they will be merged automatically to this XML.

Note: Editors (editor.*) plugins have some specific attributes, their root node must be an `<editor>` node.

The first-level of children of the root element will be generally the following:

+ `<plugin_info>`  Documentation like set of tags, to describe the plugin author, version, etc.
+ `<class_definition>` defines the PHP file and class name of your plugin. The class must extend the AJXP_Plugin core class. This is not mandatory, a plugin can be a client-side only Javascript contributor.
+ `<client_settings>` a set of resources used by the clients : i18n (see specific section), javascript files to load, CSS stylesheets to load.
+ `<server_settings>` the parameters of this plugin, either global (will apply to all instances), or to be set for each instance of this plugin.
+ `<registry_contributions>` All the actions, hooks and other tags that will be dynamically concatenated to create the XML registry.
+ `<dependencies>` Add a dependency to another active plugin, so that if it’s not active this one cannot activate, and/or trigger the load of another plugin resources (php class, or js/css resources).

The parameters described in server_settings follow a syntax that can be used in a free manner to build forms, along with a set of Javascript tools to parse them, build the forms, and send the result. See the “AjaXplorer Forms” section.