## ./cells-enterprise admin acl delete

Remove one or more ACLs

### Synopsis


DESCRIPTION
  
  Remove one or more ACLs by querying the ACL api.
  Flags allow you to query the grpc service and delete the resulting ACLs.



```
./cells-enterprise admin acl delete [flags]
```

### Options

```
  -a, --action stringArray         Action value
  -h, --help                       help for delete
  -n, --node_id stringArray        NodeIDs
  -r, --role_id stringArray        RoleIDs
  -w, --workspace_id stringArray   WorkspaceIDs
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Nats broker port (default ":4222")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells-enterprise admin acl](./cells-enterprise-admin-acl)	 - Manage access control lists

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.9 on 1-Jul-2021
