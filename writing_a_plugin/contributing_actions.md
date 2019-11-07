<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

## The action XML element
The main contribution a plugin will bring to the registry is generally a set of “actions”, adding some buttons in one of the GUI toolbar, and declaring a supported callback for this action, thus extending the server API on the fly. This is done by using the `<action>` tag, inside a `<registry_contributions><actions></actions></registry_contributions>`.

The action tag must contain a name attribute, and can eventually declare a fileDefault or dirDefault attribute. In that case, it will be considered as default for double-clicking an item on the GUI.

## GUI Button definition
This is not mandatory (if you want to simply declare a service on the API side, you may not necessarily want to add a button somewhere). But if you want to, you’ll have to cover the following:

+ Button label and description: **text** & **title** attributes, referring to an i18n library key.
+ Button icon: **iconSrc** is a css class name for a font icon.
+ `<context>`: in what context will this action appear in the GUI? Whether it’s linked to something being selected (selection), or if not the case, is it only inside a directory (dir), or inside the recycle. Where does it appear : define the toolbar (actionBar) and to which group it belongs (actionbarGroup), and if it appears in the context menu.
+ `<selectionContext>`: if the context refers to a selection, you’ll be able to narrow here the type of selection concerned, files or folder, one or multiple, and even limit to a given set of mime types.

## Rights
With the `<rightsContext>` element, you can decide some specific restrictions to activate the action or not:

+ **noUser** [true|false]: does it appear if the whole user system is disabled?
+ **userLogged** [only]: if set, it appears only if a user is logged
+ **read & write**: is read (write) right required to see this action
+ **adminOnly** [true|false] : does the action appear only for admin?

## Client side code snippet
Once your action is correctly appearing at the place you want, you are able to write a code snippet that will be triggered when the action is fired. Use `<processing><clientCallback>` element.

In previous version, clientCallback tag would directly declare a javascript code snippet inside a CDATA section. This is now deprecated, and instead the clientCallback will point to a static function of any pydio javascript library.

## Server side callback

If you declare a `<processing><serverCallback>` , you point to a method of your contributed PHP class, and the query to the server with parameter get_action=your_action will be directed to this method (see the main architecture description).

## SubMenus

You can define submenus for your action, in either

+ a static mode: submenu elements are defined directly in the XML. Use the `<dynamicItems>` element, and add `<item1>`, `<item2>` elements with an `actionId` attribute referring to other already defined actions.
+ or a dynamic mode: you refer to specific javascript code to dynamically populate the menu at load time. Use a `<dynamicBuilder>` element that contains a javascript snippet which will be called at launch time. Inside this snippet, you can access a window.builderContext object, inside wich you can add a key builderMenuItems that must be a PrototypeJS array. 
E.G. you will do:


    window.buildContext.builderMenuItems = $A();
    // And then push items in it
    context.builderMenuItems.push({
        name:MessageHash[YOURKEY],
        alt:MessageHash[YOURKEY],
        icon_src: 'icon-something',
        callback:function(e){}
    });