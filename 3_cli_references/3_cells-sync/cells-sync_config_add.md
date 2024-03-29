Add a new task via command line

### Synopsis

Define a new sync task using two URI and a direction.

Endpoint URI support the following schemes: 
 - router: Direct connexion to Cells server running on the same machine
 - fs:     Path to a local folder
 - s3:     S3 compliant
 - memdb:  In-memory DB for testing purposes

Direction can be:
 - Bi:     Bidirectionnal sync between two endpoints
 - Left:   Changes are only propagated from right to left
 - Right:  Changes are only propagated from left to right

Example
 - LeftUri : "router:///personal/admin/folder"
 - RightUri: "fs:///Users/name/Pydio/folder"
 - Direction: "Bi"



```
./cells-sync config add [flags]
```

### Options

```
  -h, --help   help for add
```

### SEE ALSO

* [./cells-sync config](./cells-sync-config)	 - Manage configurations manually

###### Auto generated by Cells Sync Client v0.9.5-alpha2 on 21-Sep-2023
