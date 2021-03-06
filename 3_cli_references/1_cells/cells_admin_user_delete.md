## ./cells admin user delete

Delete a user

### Synopsis


DESCRIPTION

  Delete a user

  *WARNING* Policy checks are not yet implemented for the CLI. 
  You might corrupt your existing user and group repository,  
  So please use with extra care. Also, remember that login are case sensitive. 

EXAMPLE

  $ ./cells user delete -u '<user login>'


```
./cells admin user delete [flags]
```

### Options

```
  -h, --help              help for delete
  -u, --username string   Login(s) of the group(s) or user(s) to delete
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

* [./cells admin user](./cells-admin-user)	 - Manage users

###### Auto generated by Pydio Cells Home Edition v2.2.9 on 1-Jul-2021
