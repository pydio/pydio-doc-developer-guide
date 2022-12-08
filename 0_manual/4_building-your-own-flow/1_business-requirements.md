Understanding your business requirements and starting to translate it to an "automation-oriented" sequence of actinos is the first if not the most difficult step. 

Translating a workflow requirement into actionable steps for a workflow management tool involves identifying the specific tasks and activities that need to be completed, and organizing them into a sequence or flow that represents the steps that need to be taken to complete the workflow. 

### Identifying the "what" and the "when"

A first step is to understand "**what object**" are we about to manipulate. In most case for a tool like Pydio, you are handling "files" or "folders". But in some cases, you may be willing to modify or create "users", or even "permissions"...  

Then you have to understand **the scope** of what you will be manipulating : are we talking about a specific occurence (e.g. one file) or do we have to gather a list of objects based on specific criteria?  

This scope will be generally linked to the **"when"**, i.e. the event that will trigger the workflow: will it start on a programmed recurring time? or based on a specific event happening in the platform ? 

Here are some examples below 

| Requirement                                                | When              | What                                       |
|------------------------------------------------------------|-------------------|--------------------------------------------|
| I want to process all uploaded files with a custom script  | file uploaded     | the new file                               |
| I want to alert admin when shared users will login         | user logged in    | the logged user                            |
| I want to disable public links based on certain conditions | manual or regular | A selection of workspaces                  |
| I want to purge files after 30 days                        | every night       | All files modified since more than 30 days |

### Decomposing into Atomic Actions

Probably the first thing you have identified is the actual action you want to perform during your workflow! CellsFlows provides many [ready-to-use "atomic" actions](./actions-and-messages) that try to keep as simple as possible, to provide the most flexibility. As every action always take the same Input and Output formats, they can be composed as needed. Sometimes, you will only need to use one action, but sometimes the operations you want to do will have to be decomposed into a sequence of action. 

For example, updating a User attributes is done by an action, but this action does not actually persist the changes in the database. Another action "Persist Idm Changes" (as Identity Management) must be chained to the first one and configured to persist the "Users". 

[:image:0_overview/requirements-business-meta-persist.png]

On the other hand, the operation you need to do may not be available as a simple action, but you can create it by combining actions. For example, you want to "batch files that are uploaded at the same time" : this concept does not really exist, but you can emulate it by automatically moving files to new folders stamped with the current time and attaching a metadata to them at runtime. This would require at least two actions (copy/move, set user-meta) to be chained.

[:image:0_overview/requirements-business-pseudo-batch.png]

### Identifying "Conditions" and translating into automations

When it gets complex, a Flow generally is just a sequence of various actions that are triggered based on **conditions**. Like in a programmation language, it's all about understanding logical causes and consequences that can boil down to :

```
If (condition fullfills...) then (do something) else (do something else)

// or

Retrieve objects fullfilling the following conditions [condition1, condition2, condition3, ...]
```

Cells Flows provides many ways to implement conditions:

- If you need to gather an ensemble of object based on specific criteria, Cells Flows provides the "QUERIES" objects allowing one to retrieve objects from withing Cells internal data, following specific conditions. 
- If your Flow is fed with an event-generated object (e.g. the "user" sent by the "user logged event"), the FILTERS allow you to apply the same kind of criteria and decide whether the flow should continue on a specific path or switch to another sequence of action. 

Below are some Examples

| Requirement                                     | Translates into                                  |
|-------------------------------------------------|--------------------------------------------------|
| All files modified since more than 30 days      | QUERY: Files, Modification Time parameter ">30d" |
| Public links                                    | QUERY Workspace, Scope = LINK                    |
| All Reviewers                                   | Users QUERY,  HasRole = "Reviewers"              |
| If logged user is admin, do not email           | Users FILTER, Profile not equals "admin"         |
| If DataSource is encrypted, do not extract data | DataSourceFilter, IsEncrypted = False            |

You will find the "ACTIONS", "FILTERS" and "QUERIES" in the toolbar when editing a Flow.

[:image:0_overview/requirements-business-toolbar.png]
