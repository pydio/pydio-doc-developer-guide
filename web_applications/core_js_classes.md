Below is a description of the main Pydio JavaScript classes that are used in the GUI. We don’t cover all the libraries, and see the JSApi access driver to have a way more detailed documentation of each class and its methods.

This document correspond to Pydio 6.4.0 release.

## Core Classes

ES6 classes that build the core of the interface. They contain no UX component, just datamodels, controllers, http clients, etc. Generally-speaking, unless for debugging purpose, you should NOT touch this part.

Folder: plugins/gui.ajax/res/js/es6  
Transpiled to: plugins/gui.ajax/res/js/core

+ **Pydio.es6** Main class. Handles registry, plugins, widgets instanciations, etc.. Singleton instance accessible as “pydio” global variable.
+ model/
  + **Action.es6** Abstraction of a Pydio Action as defined in our XML registry.
  + **AjxpNode.es6** Basic representation of a node, Tree model used by all files/folders lists
  + **BackgroundTasksManager.es6** Singleton registering / launching background tasks
  + **Controller.es6** Main controller, parsing the XML registry to create Action classes, receiving events from the datamodel to enable/disable actions based on the context.
  + **EmptyNodeProvider.es6** INodeProvider doing nothing.
  + **PydioDataModel.es6** Main container for a set of nodes and their children, sending events when DM is changing.
  + **Registry.es6** Abstraction of the XML registry
  + **RemoteNodeProvider.es6** INodeProvider talking to get_action=ls by default, can be configured at startup.
  + **Repository.es6** Abstraction of a Workspace object.
  + **User.es6** Abstraction of the currently logged user object.
+ lang/
  + **Logger.es6** Utilitary to log data to console.
  + **Observable.es6** Interface that can be added as mixin to implement pub/sub pattern on an object.
+ util/
  + **CookiesManager.es6** Read/write from navigator cookies.
  + **HasherUtils.es6** MD5 computer
  + **LangUtils.es6** Utils methods on arrays and objects. Provides translation from/to PrototypeJS structures (Hash, Array).
  + **PassUtils.es6** Utils methods to compute a password complexity.
  + **PathUtils.es6** Utils methods to manipulate file paths (dirname, basename, etc..).
  + **XMLUtils.es6** Utils methods to query an XML doc.
+ http/
  + **PydioApi.es6** Can be seen as the SDK to communicate with server.
  + **PydioUsersApi.es6** Extension of previous class providing methods to list users.
  + **ResourcesManager.es6** Dependency manager that parses the XML registry and dynamically load JS/CSS files on-demand. Could be replaced by a CommonJS or similar system at one point.
  
## PrototypeJS UI Components

Folder: plugins/gui.ajax/res/js/ui/prototype

+ **class.PydioUI.js** Main class building the whole GUI based on the XML registry. Instance accessible globally via **pydio.UI**
+ **class.AjxpBootstrap.js** Lightweight class in charge of starting the framework, and loading the Pydio main class.

+ **ajxp_utils.js** Lot of utilitary methods. Kept for legacy purpose, most of them are now alias to the XXXUtils of the Core.
+ **class.ActivityMonitor.js** A background thread to ping the server on a regularly basis, and eventually disconnect client if no action detected after a given time.
+ **class.AbstractEditor.js** A parent class for all editors.
+ **class.AjxpDraggable.js** Scriptaculous Draggable extended for Pydio
+ **class.PreviewFactory.js** Utilitary to generate a thumbnail display of an AjxpNode, looking for editors able to generate a specific thumbnail for this node mime.
+ **class.FormManager.js** Utils to parse and submit the standard Pydio forms.
+ **class.Modal.js** Global “modal” singleton, provides method to open modal dialogs in various contexts.
+ **class.ActionsToolbar.js** Display a given group of actions in a toolbar.
+ **class.AjxpAutoCompleter.js** Extension of the scriptaculous auto completer
+ **class.AjxpPane.js** Generic widget, from wich most widgets extend
+ **class.AjxpSimpleTabs.js** A simple set of tabs, used in the Users/Roles/Groups editors. Should probably be merged with AjxpTabulator
+ **class.AjxpSortable.js** A sortable table
+ **class.AjxpTabulator.js** Set of tabs, as used in the left-hand panel (Files / Shared / Bookmarks)
+ **class.AjxpUsersCompleter.js** [deprecated] AutoCompleter talking to the list_authorized_users action to provide a users & groups autocomplete field. Now replaced by a ReactJS component.
+ **class.BookmarksBar.js** [deprecated] Previously, managed the bookmarks button.
+ **class.Breadcrumb.js** Display a clickable path to the current node
+ **class.DataModelIPropery.js** Simple component that can be configured to listen to a given datamodel and display some information dynamically.
+ **class.FetchedResultPane.js** An simplified version of the FilesList, as used in the Shared and Bookmarks pane, as well as in the Search Results pane.
+ **class.FilesList.js** The monster! Central nodes list, with various renderer for the nodes (details, list, thumbnails).
+ **class.FoldersTree.js** Left-hand TreeView
+ **class.HeaderResizer.js** Tool for resizing a table-like list
+ **class.InfoPanel.js** Right-hand panel displaying info about the currently selected node.
+ **class.LocationBar.js** [deprecated] Editable version of the current path
+ **class.LogoWidget.js** Utilitary to handle the top-left logo
+ **class.MultiDownloader.js** When zip is not available, selecting multiple files for download opens a dialog with a clickable list.
+ **class.PropertyPanel.js** Display a list of parameters
+ **class.RemoteNodeProvider.js** Implementation of the INodeProvider interface, speaking with the server to list the nodes
+ **class.RepositorySelect.js** Drop-down selector for the workspaces
+ **class.RepositorySimpleLabel.js** Auto-resizeable label for the current workspace
+ **class.SearchEngine.js** Standard search engine, can be either local or remote
+ **class.SliderInput.js** A slider widget, used to change the thumbnails size
+ **class.TreeSelector.js** Open another TreeFolder inside a modal dialog
+ **class.UserWidget.js** The top-right user widget, can take some menus.
+ **class.VisibilityToggler.js** Show/hide a linked component.

## ReactJS UI Components

Folder: plugins/gui.ajax/res/js/ui/reactjs/jsx  
Transpiled to : plugins/gui.ajax/res/js/ui/reactjs/build

+ **LeftNavigation.js**
+ **ReactFormComponents.js**
+ **ReactPydioComponents.js**
+ **UsersCompleter.js**

## Additional Dependencies

Folder: plugins/gui.ajax/res/js/vendor

+ backbone/ BackboneJS framework used for the Router
+ chosen/ Enhanced SelectBox
+ es6/ Polyfills for ES6 support on old browsers.
+ jquery/ JQuery
+ leightbox/ Legacy stuff for modal and overlay.
+ modernizr/ Well-known tool to detect Javascript features support.
+ nodejs/ Core "export.js" script used by browserify to gather all dependencies and package them.
+ prototype/ PrototypeJS library and additional components.
+ scriptaculous/ PrototypeJS-based animation library.
+ webfx/ Legacy component used for the TreeView.
+ xpath-polyfill/ Polyfill for IE to use XPath on XML Document.