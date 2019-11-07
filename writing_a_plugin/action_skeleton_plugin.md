<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

## Plugin features
This plugin is typically provided to help you kickstart the writing of a new plugin. It demonstrates a couple of features, particularly adding a button somewhere, as well as a header and footer in the interface, and a sample communication with the server.

### Header and Footer

You can see the following registry_contribution in the manifest

	<registry_contributions>
        <client_configs uuidAttr="name">
            <template name="skeleton_bottom" element="ajxp_desktop" position="bottom" theme="material" namespace="SkeletonActions" component="Template"/>
        </client_configs>
	</registry_contributions>

This `SkeletonActions.Template` points to a react component defined in an external javascript library. This library is loaded in the same XML with : 
 
     <client_settings>
         <resources>
             <js className="SkeletonActions" file="plugins/action.skeleton/res/build/SkeletonActions.js"/>
         </resources>
     </client_settings>


### Action Button

The following code adds an action to the global toolbar, which opens a dialog, and use a Connexion() javascript object to retrieve some data on the server:


	<registry_contributions>
	    <actions>
            <action name="my_skeleton_button">
                <gui text="skeleton.1" title="skeleton.2" hasAccessKey="false">
                    <context selection="false" dir="" recycle="hidden" actionBar="true" actionBarGroup="change_main"/>
                </gui>
                <processing>
                    <clientCallback module="SkeletonActions.Callbacks.alertButton"/>
                </processing>
            </action>
        </actions>
	</registry_contributions>


Again, the clientCallback points to our external JS library.

### JS Library

The structure of the JS library file is explained. Here the plugin does not use browserify to export the library, so we wrap the definitions in an anonymous function, and then we manually export the namespace to window.

    (function(global){
    
        class Callbacks{
   
            static alertButton() {
                // WILL BE CALLED WHEN my_skeleton_button ACTION IS TRIGGERED
            }
        
        }
    
        /**
         * Sample Dialog class used for reference only, ready to be
         * copy/pasted :-)
         */
        const SkeletonDialog = React.createClass({
    
            // Component is a dialog, let's use pydio utilitaries
            mixins:[
                ActionDialogMixin,
                CancelButtonProviderMixin,
                SubmitButtonProviderMixin
            ],

            
            // This is called on submit because it has SubmitButtonProviderMixin mixin.
            submit(){
                this.dismiss();
            },
            
            // Let's load the content of the dialog at mount time
            componentDidMount: function(){
                PydioApi.getClient().request({get_action:'my_skeleton_button_frame'}, (transport)=>{
                    this.setState({content: transport.responseText});
                });
            },
            
            // Finally the classical react render function
            render: function(){
    
                if(!this.state || !this.state.content){
                    return <Loader/>;
                }
                return (
                    <div dangerouslySetInnerHTML={{__html:this.state.content}}/>
                );
            }
    
        });
    
        // Export to global namespace
        global.SkeletonActions = {
            Callbacks: Callbacks,
            Dialog   : SkeletonDialog
        };
    
    })(window)

### Server callback

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