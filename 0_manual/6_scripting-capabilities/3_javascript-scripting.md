The powerful [Anko](./anko-pseudo-script) scripting language provides access to internals and golang standard libraries for interacting with Cells engine, but has a complex and non-intuitive syntax.

The [Javascript action](./javascript) provides a simpler way to write your own piece of script using the Javascript language. It is interpreted by a simple EcmaScript5 engine, and is more suited to manipulate structured data you may have loaded from a file or an external API. 


## Usage

The environment where the script will be executed is fed with the following variables : 

Inputs: 

 - **JsonBody**: if action receives a LastOutput with JsonBody, this is decoded from JSON and passed as an interface.
 - **Vars**: contents of the stacked variables passed along the previous actions
 - **Params**: locally defined parameters (in the action form)

Output: 

 - **Output**: undefined, this is your responsibility to assign something to this variable, as it will be evaluated after the process, and assigned to either JsonBody or a Variable depending on the action setup.


## Simple Example

```javascript
// Retrieve data from incoming JsonBody (we know it's an object containing a list of results), do some processing, and pass along to next action

var rows = JsonBody.Rows.map(function(row) => {
    // Do something on each row!
    //
    
    return modifiedRow
})

// Assign to "Output" javascript global variable (fixed name) so that it is extracted 
// after the processing and passed to the next action.
Output = rows;

```