Better than thousand chapters, lets study the editor.audio plugin. It takes a good picture of the abilities of the plugins : XML extensions, actions, javascript code and PHP callbacks, post/pre processing… Open the audio.editor/manifest.xml file.

### Basic definition

	<editor id="editor.audio" openable="false" className="AudioPreviewer" mimes="mp3">
        <class_definition filename="plugins/editor.audio/class.AudioPreviewer.php" classname="AudioPreviewer"/>
        <resources>
            <js file="plugins/editor.audio/class.AudioPreviewer.js" className="AudioPreviewer"/>
        </resources>
        <dependencies>
            <activePlugin pluginName="access.fs|access.ftp|access.demo|access.remote_fs"/>
        </dependencies>
    ....
        

What we find here determines some bases of this plugin. First the <editor> node gives this plugin an id, a type (name of the node), and then two editor specific properties : openable (whether it can indeed open an editor, or if not just be used as a preview manager for the given mime type), mimes (a set of mimes comma-separated that will be supported), and className (that would be the class called by Javascript if the editor was openable).

Then the following tags concerns dependencies and resources loading : class_definition is the PHP class used by the eventual serverCallbacks (see after), resources can be JS, CSS or Images libraries that will be needed to load the plugin on the client side (here the AudioPreviewer js class), and dependencies defines how this plugin will be activated depending on the currently active plugins.  Here, we must be sure that one of the plugins listed with pipes at least is active.

### Actions definitions, pre and post processing on server.
Now the rest of the file concerns the registry_contributions. You’ll find three types of contributions here, all are actions :

+ **“audio_proxy”** : this is simply a server-side contribution. This means that the PHP class of the plugin (AudioPreviewer.php) must be able to handle an http query containing the paramater get_action=audio_proxy, that’s all we know,
+ **“play_whole_folder”**  : this one is on the contrary a client-side contribution : it defines a “Play Wholde Folder” action that will appear in the InfoPanel when selecting an mp3 file. What happens when clicking on this action is totally writen in the clientCallback.
+ **“ls”** : this one will append itself to the basic “ls” action present in all access.* plugins. It will in fact append the **<pre_processing>** and **<post_processing>** tags. If their applyCondition is effective, these callbacks will be called respectively before and after the standard “ls” processing. What is said here is in fact the following : apply these callback before and after “ls” when the query contains “playlist”, e.g. **get_action=ls&playlist=true**. In our case, this will in fact transform the standard “ls” output in XSPF playlist format!

Basically pre_processing and post_processing callbacks apply like follows : pre_processing takes all the “standard” callbacks arguments by reference, and can change them. If there is post_processing, both pre_ and “standard” callbacks are called with output_buffering on, then the output is redirected to the post_processor. Warning, some “exit()” call may make this useless, we still have to clean that.

### Class Implementations
Have a look at the **class.AudioPreviewer.js** : it implements the basic needs of an **editor** : getPreview and getThumbnailSource. In fact, editor can be attached to a given mime, and for this mime, it can create the simple or rich preview (used respectively by the FilesList in thumb mode and by the infoPanels), and if “openable”, open a file and view/edit it inline (see editor.text for example). Warning, the element returned by the getPreview method must have a resizePreviewElement attached to itself. As you can see, and as describe above, the basic atom passed to these method are always the ajxpNode. Last, in our case, we use this class to write the createFolderPlayer function. We could have written it “inline” inside the manifest.xml, but it’s cleaner and easyer to debug to write it in a real js file, and then call it in the manifest.xml code snippet as a static method (thus using the “prototype” keyword).

On the server side, you can follow the “ls” case inside **class.AudioPreviewer.php** : when preProcessAction is called, the “dir” parameter is just base64_decoded inside the httpVars (very usefull to base64 encode when dealing with flash and utf8…), then as post_processing, the “ls” output is parsed as an XML doc (which it is indeed) and rewritten  in a new format. The “audio_proxy” action just reads the data to the output with the right headers. It uses the Pydio StreamWrapper to access the data throught various protocols.