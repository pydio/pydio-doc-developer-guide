
## Go Template

| value             |                          | description                                                                                                  |
|-------------------|--------------------------|--------------------------------------------------------------------------------------------------------------|
| {{.Input}}        |                          | Access the entire input Object containing everyhing below                                                    |
| {{.Node}}         | input.Nodes[0]           | Access the first Node Object                                                                                 |
| {{.User}}         | input.Users[0]           | Access the first User Object                                                                                 |
| {{.Workspace}}    | input.Workspace[0]       | Access the first Workspace Object                                                                            |
| {{.Role}}         | input.Roles[0]           | Access the first Role Object                                                                                 |
| {{.LastOutput}}   | input.GetLastOutput()    | Access the LastOutput Object                                                                                 |
| {{.Env}}          | see example **4)** below | Custom object that gives access to, "time", "date"...                                                        |
| {{.Context.User}} |                          | Access the context user object (originating the current request or flow). It can differ from the .Input.User |
|                   |                          |                                                                                                              |

### Commonly used template functions

| value      | function          | example                                                           |
|------------|-------------------|-------------------------------------------------------------------|
| base       | calls path.Base() | base "/folderA/subfolderB/image.jpg" = "image.jpg"                |
| dir        | calls path.Dir()  | dir "/folderA/subfolderB/image.jpg" = "/folderA/subfolderB"       |
| ext        | call path.Ext()   | ext "/folderA/subfolderB/image.jpg" = "jpg"                       |
|            |                   |                                                                   |
| toJson     | json.Marshal()    | {{toJson .Node}} = a json representation of the TreeNodeObject    |

### Examples with templates

Lets assume that we have a Read Node event on a node in "common-files" (pydiods1/images/image.jpg)

```json
{
  "Uuid": "124554-5154a-a6e54-az65e4a1e2",
	"Path": "pydiods1/images/image.jpg",
  "Type": "LEAF",
  "Size": "1264878"
  ....
  ....
}
```


```json
{{.Node.Path}} -> "pydiods1/images/image.jpg" .will be replaced with the path
```


```json
{{toJson .Node}} -> will change the object into a json string (see below)
```


```json
{{ext .Node.Path}} -> "jpg"
```


```json
{{.Env.Date}} -> "01-02-2020"
{{.Env.Time}} -> "23:42"
{{.Env.Now}}  -> "2009-11-10 23:00:00 +0000 UTC m=+0.000000001"
{{.Env.JobUUID}} -> "224454-32a1z21-2s13qdd-21ad21ad2a"
{{.Env.TaskUUID}} -> "224454-32a1z21-2s13qdd-21ad21ad2a"
```

