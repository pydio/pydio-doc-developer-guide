The  `<client_settings>` tag allows one to define dynamically a set of resources that a plugin will use. There are three available types : i18n (internationalisation library), js (javascript class), css (CSS Stylesheet).

## Language library
An i18n library is defined by its **namespace** and a **path** to a folder. Best practice is to use the plugin_dir/res/i18n folder, but it’s not mandatory. The namespace is a unique keyword identifying the plugin, and the will be used to prefix all references to this library of strings.

### Library structure
All PHP files must be UTF-8 encoded. The folder containing the library must be structure as follow

+ **en.php** the “master” file of the strings, containing a PHP array named $mess , associating keys (number, or whatever) and values (english version of each strings). 
+ **fr.php, de.php, “any two-letters language code”.php** : a replica of the en.php, but in a foreign language version. Must contain exactly the same set of keys than the en.php, otherwise there will be problems. But if the current language of the application is not implemented, we will fallback automatically to the en.php file
+ **conf/** a folder containing more specific strings for all plugins labels and descriptions, as well as parameters.
	- **en.php** : same as above, but the keys are the strings found in the CONF_MESSAGE[“string”] brackets, instead of arbitrary numbers (see below)
	- **other_languages.php**: same as above.

### Referring to a language file
Once a library is declared with a namespace, the main files will contains key/value pairs like “1” => “My String” , “2” => “Another String”. They  can be used everywhere in the code by using the following syntaxes:

#### _Inside an XML file_

+ Some specific attributes (like  `<gui text="" title="">` ) are specifically referring to language files keys. Thus you can directly use **_namespace.key_**.
+ Otherwise, for using for example inside a CDATA XML block, there is a filter applied to all XML that allows you to use **_AJXP_MESSAGE[namespace.key]_**

Inside a Javascript file

All i18n strings are compiled and sent to the client as big hash table. The global window variable MessageHash is available, thus you can use **_MessageHash[‘namespace.key’]_**

#### _Inside the PHP Code_

The same message table is available in the code by getting **ConfService::getMessages()**, which returns an array $messages, and you can use $messages[“namespace.key”].

#### _Namespace exception_

The plugin **core.ajaxplorer** is providing the main message file, and the strings defined in the library have no namespace, they can be called directly with their key.

## Javascript Class
Although the manifest files allow you to write Javascript snippets directly embedded in the XML, as soon as it’s more complex than calling a couple of function, it is recommended to place your code in a dedicated javascript class. It must follow our modified PrototypeJS class definition (see Webapplication structure), as this is allowing the resource manager to detect whether it is already loaded or not. As a good practice, use **res/js/** inside your plugin folder.

For example, the editor.diaporama declares its javascript class (this mandatory for an editor) with the following tag :

	<js file="plugins/editor.diaporama/class.Diaporama.js" className="Diaporama"/>

This will be loaded on demand (i.e. the first time a Diaporama is required), but you can also set an **_autoload=”true”_** attribute to make sure this Javascript library is loaded at the application startup.

## CSS Stylesheet
A plugin can also provide its own style sheet. This is done by using a <css> tag, where only the file is necessary. The autoload attribute is also optional to make sure the style sheet is loaded at startup. As a good practice, use **res/css/** inside your plugin folder

## Image library
If your plugin comes with its own set of images, you will have to declare an image library, providing here an “alias”, that you can use when referring to images in your XML. The library itself is then a path to the plugin sub folder where you store your images. A good practice is to use **res/img/** The application will be able to resolve this alias to the real path. For example, if the alias is “my_plugin_imgs”, you can then use in an action “src” attribute the following:

<code>src=”my_plugin_imgs/ICON_SIZE/myimage.png”</code>

If you use ICON_SIZE, it will be replaced automatically, and you must make sure the according folders (22, 32, 64) are created in your image library.