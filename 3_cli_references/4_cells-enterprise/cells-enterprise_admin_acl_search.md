List current ACLs

### Synopsis


DESCRIPTION

  List ACLs currently stored in the ACL microservice.

EXAMPLES

  1. List all ACLs that give READ access
  $ ./cells-enterprise admin acl search -a "READ"

  2. List all ACLs for root group  
  $ ./cells-enterprise admin acl search -r "ROOT_GROUP"

  3. List all ACLs of a given node 
  $ ./cells-enterprise admin acl search -n "53a65cc3-e407-4fcc-9230-5630ff054659"



```
./cells-enterprise admin acl search [flags]
```

### Options

```
  -a, --action stringArray         Action value
  -h, --help                       help for search
  -l, --limit int                  Max. number of returned rows, 0 for unlimited (default 100)
  -n, --node_id stringArray        NodeIDs
  -o, --offset int                 Add an offset to the query when necessary
  -r, --role_id stringArray        RoleIDs
  -w, --workspace_id stringArray   WorkspaceIDs
```

### Options inherited from parent commands

```
      --advertise_address string   Default advertise address (default "127.0.0.1")
      --broker string              Pub/sub service for events between services (default "grpc://:8030")
      --config string              Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
      --discovery string           Registry and pub/sub (default "grpc://:8030")
      --registry string            Registry used to contact services (default "grpc://:8030")
```

### SEE ALSO

* [./cells-enterprise admin acl](./cells-enterprise-admin-acl)	 - Manage access control lists

###### Auto generated by Pydio Cells Enterprise Distribution v4.0.1 on 17-Oct-2022