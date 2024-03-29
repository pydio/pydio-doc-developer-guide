Datasource management commands

### Synopsis

Collection of tools for manipulating datasources.

```
./cells admin datasource [flags]
```

### Options

```
  -h, --help   help for datasource
```

### Options inherited from parent commands

```
      --advertise_address string     Default advertise address (default "127.0.0.1")
      --broker string                Pub/sub service for events between services (default "grpc://:8030")
      --config string                Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
      --discovery string             Registry and pub/sub (default "grpc://:8030")
      --grpc_client_timeout string   Default timeout for long-running GRPC calls, expressed as a golang duration (default "60m")
      --registry string              Registry used to contact services (default "grpc://:8030")
```

### SEE ALSO

* [./cells admin](./cells-admin)	 - Direct Read/Write access to Cells data
* [./cells admin datasource capture](./cells-admin-datasource-capture)	 - Capture index and objects into JSON or BoltDB format for sync debugging purposes
* [./cells admin datasource migrate](./cells-admin-datasource-migrate)	 - Migrate a datasource format (flat or structured)
* [./cells admin datasource rehash](./cells-admin-datasource-rehash)	 - Recompute all files hashes inside a given datasource
* [./cells admin datasource resync](./cells-admin-datasource-resync)	 - Trigger resync for a structured datasource
* [./cells admin datasource rethumb](./cells-admin-datasource-rethumb)	 - Find and compute missing thumbnails for images
* [./cells admin datasource snapshot](./cells-admin-datasource-snapshot)	 - Dump/Load snapshot of the index for a flat datasource

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
