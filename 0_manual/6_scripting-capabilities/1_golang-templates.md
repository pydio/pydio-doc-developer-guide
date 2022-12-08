Go’s text/template package provides a rich templating language for text templates. It's html/template counterpart is mostly used in web applications to display data in a structured way in a client’s browser. 

## Go-templates Basics

The core concept is simple. 

A data structure is passed to the template to "evaluate" its value at runtime.
Let's imagine a simple data structure: 

```json
  {
    "Field1":"string", 
    "Field2":34, 
    "Done":true, 
    "Data":{"Title": "title"}, // other data-structure 
    "List":[{}, {}] // array of data-structures
}
```

The templating language contains a rich set of control structures to render text. Template controls are always delimited with `{{...}}`. Below is an overview of the most commonly used ones. To get a detailed list of all possible structures visit [text/template](https://golang.org/pkg/text/template/#hdr-Actions).

| Control Structure	              | Definition                                         |
|---------------------------------|----------------------------------------------------|
| `{{/* a comment */}}`	          | Defines a comment                                  |
| `{{.}}`	                        | Renders the root element                           |
| `{{.Field1}}`	                  | Renders the “Field1”-field in the root element     |
| `{{.Data.Title}}`	              | Renders the “Title”-field in a nested element      |
| `{{if .Done}} {{else}} {{end}}` | Defines an if-Statement                            |
| `{{range .List}} {{.}} {{end}}` | Loops over all “List” and renders each using {{.}} |

## Using Go Templates in Jobs

**All parameters of an Action** and **all textual fields of Queries and Filters** accept templates as values. These templates will be evaluated at runtime with the current "ActionMessage" that is passed as Input (for actions and queries) or that is being passed along from one actions to another (for filters).

### Input Data

If you went through the [Actions and Messages](./actions-and-messages) and [Data Types](./data-types-queries-filters), you are already familiar with the data structure you may expect in the parameters.

Below is a sample of the data passed as template data: 

```json
{
  //
  // Job-level defined parameters
  //
  "JobParameters": {
    "Key1": "value1",
    "Key2": "value2",
  },
  //
  // Main ActionMessage object
  //
  "Input": {
    "Nodes": [],      // zero or more Nodes
    "Users": [],      // zero or more Users
    "Roles": [],      // zero or more Roles
    "Workspaces": [], // zero or more Workspaces
    "Acls": [],       // zero or more ACLs
    "OutputChain": [{}, {}]  // Stack of previous actions ActionOutput objects
  },
  //
  // Shortcuts to Input lists, for shortening templates
  //
  "Node":       {},   // A copy of .Input.Nodes[0] if it exists
  "Workspace":  {},   // A copy of .Input.Workspace[0] if it exists
  "User":       {},   // A copy of .Input.User[0] if it exists
  "Role":       {},   // A copy of .Input.Roles[0] if it exists
  "Acl":        {},   // A copy of .Input.Acls[0] if it exists
  "LastOutput": {},   // A copy of the last entry of .Input.OutputChain
  //
  // Global Environment values
  //
  "Env": {
    "Date":     "Result of time.Now().Format('01-02-2006')",// date in string format
    "Time":     "Result of time.Now().Format('15:04')",     // time in string format
    "Now":      "Result of time.Now()",                     // golang date format 
    "JobUUID":  "job-unique-identifier",
    "TaskUUID": "running-task-unique-identifier",
  },
  "ContextUser": {},       // Logged user currently running the job
  "ContextWorkspace": {}  // If applicable, current workspace detected in context 
}
```

### Example: compute a target location

With that in mind, let's assume we have an Action that takes a node as input (for example on creation), and whose task is to copy it somewhere inside "target" (action parameter). We want that "target" to be computed as follows: inside folder `TargetFolder` (defined in job-level parameters), renamed with the current user login and the date/time. 

The action "target" parameter could use the following value: 
```
{{.JobParameters.TargetFolder}}/{{.ContextUser.Login}}-{{.Env.Date}}-{{.Env.Time}}
```

Going further, we could decide that only files created inside folder `SourceFolder` are to be processed, other should be ignored. We can put a **Filter** on the "Create Node" trigger to filter all nodes by "Path Prefix", with value `{{.JobParameters.SourceFolder}}`.

And so on.
