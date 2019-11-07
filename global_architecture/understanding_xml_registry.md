<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

## Gathering all plugins contributions
One of the key concept of Pydio internals is that all active plugins are contributing a certain amount of information, directly declared from their manifest.xml or eventually programmatically built, and that information compose a big XML Document called the XML Registry. This registry is thus reflecting very precisely the state of the application (all active plugins), and can be queried using XPath to get such or such information.

Furthermore, once expurged from a couple of XML Elements for the sake of both performance and security, this registry is actually sent to the client, and can be parsed and searched in the same fashion directly in the web application. For this reason, a plugin will be able to declare in the same bit of XML both a specific GUI action behaviour (in javascript) and a server-side webservice pointing to a specific function of the plugin class.

Once you get this, you can even see the other way round : every XML node declared somewhere in the XML manifest files of the plugins are just fragments of a bigger document, the XML registry. This allows to merge XML branches that have the same parent node into one.

### XML Merging example
For example, if one active plugin contains the node **plugin/actions/action[name=’action1′]** and another one contains the same kind of structure with **[name=’action2′]**, both `<action>` nodes will be merged under one unique `<actions>` branch in the registry. Going further, if a third plugin contains a node **plugin/actions/action[name=’action1′]/action_detail**, this `<action_detail>` subnode will be appended to the `<action name="actions1">` node declared by the first plugin inside the registry. Want to understand this better? Open some **manifest.xml** files that are inside plugins you are indeed using, then call **content.php?get_action=get_xml_registry** to see the big picture!

This mechanism of XML merging is one of the important legs of the plugins architecture, as it allows to dynamically append or overwrite the XML contributions of a given plugin from within another one! And since this XML registry is the unique interface between the world and the plugin, and that all Javascript or PHP calls are declared in this XML, you can understand the power of this extension mechanism. In fact, it’s clearly converging with the well-known Eclipse Osgi architecture.

### Importing external XML Nodes
Last thing need to use these XML files nearly as a language scripting is to be able to insert a given set of XML from another file into a Manifest. For example, the FTP plugin is using all the same actions as the FS plugin, so it would be useless to have to re-declare all actions definitions in the FTP plugin. The `<external_file>` key is here to do the job : with an include/exclude mechanism that takes XPath expression as arguments, it allows you to import all the nodes returned by the include expression inside your current XML.

### Dependencies mechanism
At this point, you might ask your self “how to be sure that one plugin will be loaded after another?” so that plugin B overrides plugin A data and not the opposite? The third leg of the plugin mechanism indeed resides in the “dependencies” mechanism, once again declared in the manifest.xml file. If a plugin B declares that it depends on plugin A, it will indeed be loaded (and integrated to the registry) after plugin A, or not loaded at all if plugin A is not present. This mechanism can play at load level and at activation level.

## How the registry is changing in time
Now that you understand that the registry is built from the bunch of plugins contributions, you must understand how central it is in the way application, particularly the GUI. By nature, some plugins (namely the access.*, auth.* and serial.* ones) can have only one instance linked to a given state of the application. For example, even if auth.serial, auth.remote, auth.ldap, etc, are **available** plugins, only one can be **active** at a time in each category of plugin. Going further, the active plugin in this given category can dynamically change its own registry contributions, depending on the state of the current session!

Try this : log in to Pydio, then in another tab call **index.php?get_action=get_xml_registry** (or use **Pydio.getXmlRegistry()** in a JavaScript console). Observe how the current `<user>` data is passed inside the registry? Now log out and update your registry : `<user>` is out. It’s exactly the same when you are switching repository : the registry is totally rebuilt, given the registry_contributions of the active access.* plugin, which is determined by the current repository.

[:image-popup:global_architecture/understanding_xml_registry/PLUGINS-State-Tree.png]

The GUI Ajax client itself is based on the XML Registry : since **_the XML registry is evolving in time during a session, it must be partially or totally reloaded by the client_** when some predefined events occur (login, logout, switch_repository, etc…). This allow also to pass GUI components configuration to the client via the registry, and they will be reparsed and reapplyed on-the-fly (if the target components allows it). See Ajax GUI > Updating components configurations.