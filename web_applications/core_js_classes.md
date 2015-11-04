Below is a description of the main AjaXplorer JavaScript classes that are used in the GUI. We don’t cover all the libraries, and see the JSApi access driver to have a way more detailed documentation of each class and its methods

## Internals & Tools
+ **class.Ajaxplorer.js**  Main class. Handles registry, plugins, widgets instanciations, etc.. Singleton instance accessible as “ajaxplorer” global variable.
+ **class.AjxpBootstrap.js** Lightweight class in charge of starting the framework, and loading the Ajaxplorer main class.
+ **ajxp_utils.js** lot of utilitary methods
+ **class.Action.js**, class.ActionsManager.js Abstraction of an action and singleton class to manage all actions. Accessed through ajaxplorer.actionBar (legacy naming).
+ **class.ActivityMonitor.js** A background thread to ping the server on a regularly basis, and eventually disconnect client if no action detected after a given time.
+ **class.ResourcesManager.js** Handles all plugins resources loading, can be usefull to manually trigger a JS / CSS file loading.
+ **class.BackgroundManager.js** Trigger actions in background, and listen for server responses to consume its queue.
+ **class.AbstractEditor.js** A parent class for all editors.
+ **class.User.js** Container for the currently logged user. Accessible through ajaxplorer.user
+ **class.AjxpDraggable.js** Scriptaculous Draggable extended for AjaXplorer
+ **class.AjxpNode.js** The client-side brother of the php AJXP_Node class : basic bit of data, triggers and listen a couple of events.
+ **class.AjxpDataModel.js** : the main Model (in the sense of an MVC pattern), handling nodes.
+ **class.PreviewFactory.js** Utilitary to generate a thumbnail display of an AjxpNode, looking for editors able to generate a specific thumbnail for this node mime.
+ **class.Connexion.js** Ajax request encapsulation
+ **class.FormManager.js** Utils to parse and submit the standard ajaxplorer forms.
+ **class.Modal.js** Global “modal” singleton, provides method to open modal dialogs in various contexts.
+ **class.Repository.js** The workspace object

## Widgets
+ **class.ActionsToolbar.js** Display a given group of actions in a toolbar.
+ **class.AjxpAutoCompleter.js** Extension of the scriptaculous auto completer
+ **class.AjxpPane.js** Generic widget, from wich most widgets extend
+ **class.AjxpSimpleTabs.js** A simple set of tabs, used in the Users/Roles/Groups editors. Should probably be merged with AjxpTabulator
+ **class.AjxpSortable.js** A sortable table
+ **class.AjxpTabulator.js** Set of tabs, as used in the left-hand panel (Files / Shared / Bookmarks)
+ **class.AjxpUsersCompleter.js** AutoCompleter talking to the list_authorized_users action to provide a users & groups autocomplete field.
+ **class.BookmarksBar.js** [deprecated] Previously, managed the bookmarks button.
+ **class.Breadcrumb.js** Display a clickable path to the current node
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