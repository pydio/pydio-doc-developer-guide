## Basics
Along with the flexibility of a plugin-oriented framework comes always the need for an event-oriented mechanism to link the plugins together. This is very important to avoid introducing hard dependencies from one plugin to another, by directly calling a plugin method from within another.

Instead, the first plugin will trigger an event (here, a hook), that will be handled by a central manager, without much knowledge of what will happen to this event. The event can “transport” some bit of informations, like a node, or anything else that makes sense.

On the other side, any plugin can register to the central manager, to be informed of whenever this event is triggered. That way, Plugin A actually triggers a function inside Plugin B (and / or plugin C, D, etc), without knowing anything about the existence of plugin B.

## Hooks
In Pydio, hooks are declared as needed directly in the PHP code, by simply calling the **Controller::applyHook()** method. Thus, the available hooks list is gathered by a script that does some code introspection. The result is visible in the Settings panel, under **Developer Resources > Hooks Definitions**. Currently, there are 3 types of hooks : node.* (informing a change on a data node), user.* (informing about users creation/deletion), and msg.* (used for transporting any specific messages, generally in an “instant” manner).

To register a listener to a given hook, a plugin will add a callback inside the `<hooks>` element of its manifest.xml, declaring a method of the plugin class. For example :

	<hooks>
    	<serverCallback hookName="node.info" methodName="loadNodeInfo"/>
	</hooks>

The serverCallback will take an optional **defer** attribute, that would apply the node at the very end of the script, after all output is sent to the user.

## Examples
The figure below show some of the hooks triggered during the life of a node when a file is uploaded (node1) or when listing a directory content (node 2).

[:image-popup:server_component/hooks_event-driven_model/HOOKS-Examples.png]