## Plugin features
This plugin is typically provided to help you kickstart the writing of a new plugin. It demonstrates a couple of features, particularly adding a button somewhere, as well as a header and footer in the interface, and a sample communication with the server.

### Header and Footer
You can see the following registry_contribution in the manifest

	<client_configs uuidAttr="name">
        <template name="bottom" element="ajxp_desktop" position="after"><![CDATA[
            <div id="optional_bottom_div" style="font-family:arial;padding:10px;">This CDATA section will be overriden by the PHP part of the plugin</div>
        ]]></template>
        <template name="head" element="ajxp_desktop" position="before"><![CDATA[
            <div id="optional_header_div" style="background-color: #999; color: white;font-family:arial;padding:10px;">Your custom header content</div>
        ]]></template>
	</client_configs>

The Footer section is updated by the PHP plugin, during the **parseSpecificContributions()** function call. We use XPath to search the XML and replace its content with the plugin parameter value “CUSTOM_FOOTER_CONTENT” (set via the GUI).

### Action Button
The following code adds an action to the global toolbar, which opens a dialog, and use a Connexion() javascript object to retrieve some data on the server:


	<action name="my_skeleton_button_frame">
        <gui text="skeleton.4" title="skeleton.5" src="skeleton_images/ICON_SIZE/user-desktop.png" hasAccessKey="false">
            <context selection="false" dir="" recycle="hidden" actionBar="true" ajxpWidgets="ActionsToolbar" actionBarGroup="user"/>
        </gui>
        <processing>
            <clientCallback prepareModal="true"><![CDATA[
                var dialogLoadFunction = function(){
                var conn = new Connexion();
                conn.addParameter("get_action", "my_skeleton_button_frame");
                conn.onComplete = function(transport){
                $('loaded_content').update(transport.responseText);
                }
                conn.sendAsync();
                };
                modal.showDialogForm("My Link", "my_skeleton_form", dialogLoadFunction);
            ]]></clientCallback>
            <clientForm id="my_skeleton_form"><![CDATA[
                <div id="my_skeleton_form" box_width="450">
                <h3>AJXP_MESSAGE[skeleton.6]</h3>
                <div id="loaded_content"><p align="center">AJXP_MESSAGE[skeleton.7]</p></div>
                </div>
            ]]></clientForm>
            <serverCallback methodName="receiveAction" pluginId="action.skeleton"/>
        </processing>
	</action>

You can see that the **serverCallback** is pointing to the method “**receiveAction**”. In the PHP class, you’ll find the corresponding receiveAction method, with the standard callback signature **$action, $httpVars, $fileVars**.


	/**
	* @param String $action
	* @param Array $httpVars
	* @param Array $fileVars
	* @return void
	*/
	function receiveAction($action, $httpVars, $fileVars){
        if($action == "my_skeleton_button_frame"){
            header("Content-type:text/html");
            print("<p>This is a <b>dynamically</b> generated content. It is sent back to the client by the server, thus it can be the result of what you want : a query to a remote API, a constant string (like it is now), or any specific data stored by the application...</p>");
            print("<p>Here the server sends back directly HTML that is displayed by the client, but other formats can be used when it comes to more structured data, allowing the server to stay focus on the data and the client to adapt the display : <ul><li>JSON : use <b>json_encode/json_decode</b> on the PHP side, and <b>transport.reponseJSON</b> on the client side</li><li>XML : print your own XML on the php side, and use <b>transport.responseXML</b> on the client side.</li><li>The advantage of HTML can also be used to send javascript instruction to the client.</li></ul></p>");
        }
	}

## Duplicate the plugin
If your intention is to write down your own plugin, you should first duplicate this plugin and search/replace all “action.skeleton” occurences, either in the file/folder names or in the file contents themselves. Check also the resources namespaces/alias. Replace all that with your specific plugin ID / name, to make it coherent and all yours. Once done, don’t forget to CLEAR THE PLUGIN CACHE to let this new plugin appear in the list. You can also clear the i18n cache if you provide a new translation library:

	rm -f data/cache/plugins_*.ser
	rm -f data/cache/i18n/*.ser
	
You should now see your plugin appear in the plugins list.