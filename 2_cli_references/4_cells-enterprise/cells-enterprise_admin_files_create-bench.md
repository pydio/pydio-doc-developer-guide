## ./cells-enterprise admin files create-bench

Create an arbitrary number of random files in a directory

### Synopsis


DESCRIPTION

  Create an arbitrary number of random files in a directory.
  Provide --number, --path and --user parameters to perform this action.


```
./cells-enterprise admin files create-bench [flags]
```

### Options

```
  -h, --help          help for create-bench
  -n, --number int    Number of files to create
  -p, --path string   Path where to create the files (default "pydiods1")
  -u, --user string   Username used to impersonate creation (default "admin")
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Broker port (default ":4222")
      --registry string                   Registry used to manage services (currently nats only) (default "nats")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells-enterprise admin files](./cells-enterprise-admin-files)	 - Directly manage files and metadata on the nodes

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.0-rc4 on 25-Jan-2021