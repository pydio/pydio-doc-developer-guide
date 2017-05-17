Below is a description of the main Pydio JavaScript classes that are used in the GUI. We don’t cover all the libraries, and see the JSApi access driver to have a way more detailed documentation of each class and its methods.

This document correspond to Pydio 6.4.0 release.

## Core Classes

ES6 classes that build the core of the interface. They contain no UX component, just datamodels, controllers, http clients, etc. Generally-speaking, unless for debugging purpose, you should NOT touch this part.

Folder: plugins/gui.ajax/res/js/core  

+ **Pydio** Main class. Handles registry, plugins, widgets instanciations, etc.. Singleton instance accessible as “pydio” global variable.
+ **PydioBootstrap** Lighter class that can be loaded in the html page and will load Pydio.
+ model/
  + **Action** Abstraction of a Pydio Action as defined in our XML registry.
  + **AjxpNode** Basic representation of a node, Tree model used by all files/folders lists
  + **BackgroundTasksManager** Singleton registering / launching background tasks
  + **Controller** Main controller, parsing the XML registry to create Action classes, receiving events from the datamodel to enable/disable actions based on the context.
  + **EmptyNodeProvider** INodeProvider doing nothing.
  + **PydioDataModel** Main container for a set of nodes and their children, sending events when DM is changing.
  + **Registry** Abstraction of the XML registry
  + **RemoteNodeProvider** INodeProvider talking to get_action=ls by default, can be configured at startup.
  + **Repository** Abstraction of a Workspace object.
  + **User** Abstraction of the currently logged user object.
+ lang/
  + **Logger** Utilitary to log data to console.
  + **Observable** Interface that can be added as mixin to implement pub/sub pattern on an object.
+ util/
  + **CookiesManager** Read/write from navigator cookies.
  + **HasherUtils** MD5 computer
  + **LangUtils** Utils methods on arrays and objects. Provides translation from/to PrototypeJS structures (Hash, Array).
  + **PassUtils** Utils methods to compute a password complexity.
  + **PathUtils** Utils methods to manipulate file paths (dirname, basename, etc..).
  + **XMLUtils** Utils XPath methods to query an XML doc.
  + **ActivityMonitor** Helper for handling detection of activity on screen.
  + **DOMUtils** Some functions that are generally provided by other framework to get info about window size, observe resize events, etc.
  + **FuncUtils** Find functions in a context
  + **PeriodicalExecuter** Wrapper for setInterval()

+ http/
  + **Connexion** Wraps all network calls, since Pydio 8 it is encapsulating the window.fetch API.
  + **PydioApi** Can be seen as the SDK to communicate with server.
  + **PydioUsersApi** Extension of previous class providing methods to list users.
  + **ResourcesManager** Dependency manager that parses the XML registry and dynamically load JS/CSS files on-demand. Could be replaced by a CommonJS or similar system at one point.
  + **MetaCacheManager** Helper to cache data in memory to avoid too many server calls.
  
## ReactJS UI Components

Pydio UI components are distributed into various libraries. Most of them are located under gui.ajax plugin, but beware that many of them will also be provided by plugins, and loaded dynamically by the interface. Below, we list the main libraries provided by gui.ajax, see the Admin Dashboard for more info about every classes.

Folder: plugins/gui.ajax/res/js/ui/ 
 
 Each library currently provides a global namespace starting with Pydio and lib folder name (like PydioReactUI, PydioComponents, etc), but you should avoid using that access as it may be deprecated in the future.

### ReactUI 
Contains the core of the reactJs UI. 

Example: 

    import Pydio from 'pydio'
    const {Loader} = Pydio.requireLib('boot')
    
### Components
 
Contains many generic components should be easily reused, like lists, tree views, menu, etc..
 
Example:

    import Pydio from 'pydio'
    const {ClipboardTextField} = Pydio.requireLib('components')
    
### HOCs
 
React High Order Components are "wrapping" classes that are used everywhere in the application. It helps programming generic behaviours that can be applied to any other component.
 
Example: 

    import Pydio from 'pydio'
    const {withContextMenu} = Pydio.requireLib('hoc')
    
### Workspaces
 
Contains higher level components that are generally more specific to workspaces, like full dashboard with many components, enriched files list, etc.
 
Example:

    import Pydio from 'pydio'
    const {FSTemplate} = Pydio.requireLib('workspaces')
    
### Form
 
Contains helpers and UI components for rendering forms
 
Example:

    import Pydio from 'pydio'
    const {FormPanel} = Pydio.requireLib('form')
    
### CoreActions

Static callbacks for many actions, that can be used in the XML registry declaration via the "component" tag.

Example:

    <action>
        [.....]
        <processing>
            <clientCallback module="PydioCoreActions.Navigation.up"/>
        </processing>
    </action>
    
