Although extremely powerful, using templates and remembering all functions can be complicated.

Cells Flows provides a unique Live Playground feature allowing you to test your templates before using them in jobs. In Edit Mode, click on the "Playground" icon at the bottom of the screen: 

[:image:0_overview/job-editor-button-playground.png]

## Playground presentation

You are presented with a "playground" where code is dynamically run. There are 3 zones: 

 - **Template Code**: this is where you type the Golang Template you want to test.
 - **Input Message**: this JSON is a default value for the {{.Input}} that could be received by any action. Default value displayed here is generally sufficient for basic testing, but you can edit it as well.
 - **Output Value**: computed on the fly, this is the result of the evaluation of your template with the input JSON passed as data structure.

[:image:0_overview/playground.png]

## Inline functions documentation

The playground also provides a nice way to lookup for a certain function and its associated documentation. Use the "Search functions docs" field to find a function, and display its documentation directly inline.

Looking for "to":

[:image:0_overview/playground-search.png]

Selecting "toJsonMap" function: 

[:image:0_overview/playground-result.png]