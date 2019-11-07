<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

The &lt;client_configs&gt; element of a plugin is a container to a couple of GUI-modifying tags. See XSD for full reference.

## Component_config
The component_config element is a way to pass some parameters directly to an instanciated widget of the GUI, withouth this widget being recreated. If you developed your own widget, you’ll have to make sure it listens to the pydio:component_configs event in the Javascript. Generally, this is way to set some parameters to the FilesList. You can pass whatever XML element you want, it’s the widget mission to parse it.

Currently the following elements are already available:

&lt;columns&gt; Redefine the columns displayed in the FilesList. Contains &lt;column&gt; and &lt;additional_column&gt; elements, defining their labels, width, default visibility, etc.

&lt;infoPanel&gt; & &lt;infoPanelExtension&gt; Parsed by the InfoPanel widget, to pass arbitrary subwidgets to be displayed in the InfoPanel (see access.fs sample).

## Template / Template part
With these tags, plugins can either

+ redefine the whole layout with a &lt;template&gt;: this should be generally not be modified, as it is actually tricky. See the gui.ajax/manifest.xml where all master templates are defined
+ redefine a given template part with a &lt;template_part&gt;: this is more frequently used, to dynamically reinstanciate an existing widget of a broader template.
