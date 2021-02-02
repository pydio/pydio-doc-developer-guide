As explained in previous section, all Actions receive an Input Message that contains some arbitrary data. Below are described the currently supported data types.

## Data Types

### ActionMessage

Input Messages always have the following structure (described here in protobuf syntax):

```json
// Message passed along from one action to another, main properties
// are modified by the various actions.
message ActionMessage {
    // Initial event that triggered the Job
    google.protobuf.Any Event = 1;
    // One or more Node
    repeated tree.Node Nodes = 2;
    // One or more User
    repeated idm.User Users = 3;
    // One or more Role
    repeated idm.Role Roles = 6;
    // One or more Workspace
    repeated idm.Workspace Workspaces = 7;
    // One or more ACL
    repeated idm.ACL Acls = 8;
    // One or more Activity
    repeated activity.Object Activities = 4;
    // Stack of ActionOutput messages appended by all previous actions
    repeated ActionOutput OutputChain = 5;
}

// The ActionMessage.OutputChain is a stack of ActionOutput messages:
// ActionOutput message is less-typed and can contain arbitrary String, JSON or Binary data.
message ActionOutput {
    // True if action succeeded
    bool Success = 1;
    // Arbitrary bytes sequence
    bytes RawBody = 2;
    // Arbitrary string
    string StringBody = 3;
    // Arbitrary JSON-encoded bytes
    bytes JsonBody = 4;
    // Error
    string ErrorString = 5;
    // If action was returned WithIgnore()
    bool Ignored = 6;
    // Time taken to run the action
    int32 Time = 7;
}

```
Fields "Nodes", "Users", "Roles", "Workspaces" are the most commonly used by actions. For example, a message containing just a given reference to a file would look like: 

```JSON
{
  "Nodes": [
    {
      "Uuid": "086bdb2d-51d8-4be5-9913-24e002e38b5f",
      "Path": "pydiods1/fakepath/foo.bar",
      "Type": "LEAF",
      "Size": "100",
      "MTime": "1612260750",
      "Etag": "sample-etag"
    }
  ]
}
```

### Reading data with Golang Templates

In many cases, action parameters will give you enough flexibility to ignore the data type format that comes in input. But soon you will want to use one specific piece of information to be treated by the action. That's where Golang Templating comes into place. Given the previous example, let's say you want to write an action that prints out the Path of the file passed in input, you would use the following syntax: 

```golang
{{.Input.Nodes[0].Path}}
```
or as a shortcut (as first Node, first User, etc... are passed by default as `Node`, `User`,... fields to the template): 
```
{{.Node.Path}}
```

See the detailed section about [Scripting Capabilities](./scripting-capabilities) to learn more. 


## Loading Data

### Input data provided by Events

When triggering jobs on events, the data associated with that event will be implicitely appended to the first action Input.

Typically, when a job reacts to an event like "Node Created", the associated Node (file or folder) is automatically appended to the job first Input.

### Loading data with Queries

You may need to explicitely load some data to feed a given sequence of actions. This is done using **Queries** that allows you to select rows (like you would in an SQL database) based on various criteria.  One can for example _list all files under a certain path_, or _list all Workspaces updated since a certain period_, etc.

The following image shows the available Queries that can be used to select data to feed any action. To create your own query, select a query type and then **drop the query on the target action**.

[:image-popup:0_overview/anatomy-queries-types.png]

When Queries return many results, you may either choose to pass all the results along **as a bulk** to one specific action, or to **fan out each result as a unique message** passed to many instances of the same action. In the later case, multiple action instances will be triggered in parallel, each one processing one of the result.

[:image:0_overview/anatomy-query-collect.png]

[:image:0_overview/anatomy-query-fan-out.png]


### Filtering Data

Once some data is transferred from one action to another, you can perform dynamic filtering to e.g. reduce the amount of data to process, or continue the sequence only if received data meets certain conditions. **Filters** offer the same kind of criteria as would the **Queries**, but are applied on the current set of data.

The following image shows the available Filters that can be used to select data to feed any action. To create a filter, select the filter type and the **drop the filter** on the connector between the two actions where you want the filtering to be applied. 

[:image-popup:0_overview/anatomy-filters-types.png]

**Notes** 

 - You must **first connect two actions** to be able to drop a filter on the connector.  
 - **a Filter returning no result will stop the current flow**, to avoid launching actions that would do nothing.  
 - A Filter can be also **applied directly to an event trigger**. As implied by the previous restriction (stop if empty), this is a best-practice to make sure to launch a job only if filter passes.  

### Conditional Filtering

As explained above, filters are useful to limit the data that we want to process, but can be also used as simple "show-stoppers": if condition on data is not met, just stop there. In that case, you may want to provide an alternative sequence of actions. Switching a filter to "Conditional" mode will allow you to create "if/else" branches.

[:image:0_overview/anatomy-conditional.png]

## Advanced Query Builder

Both Queries and Filters are built in a similar fashion: they are a composition of criteria that can be combined using sub-queries that will be applied in together in two possible ways: 
 
 - Condition passes if **all condition are met (AND)**
 - Condition passed if **at least one condition is met (OR)** 

Although queries and filters are "typed" components ("Files/Folders" does not offer the same criteria as a "Users"), their "Query Builder" look the same. 

 - Select/filter all Nodes that are "LEAF" (files) AND not named ".pydio"
   [:image:0_overview/anatomy-filter-and.png]
 
 - Select/filter all Nodes that are named "possible1" OR "possible2"
   [:image:0_overview/anatomy-filter-or.png]

See all the available building blocks for creating Queries and Filters [in the dedicated section](./filter-queries).