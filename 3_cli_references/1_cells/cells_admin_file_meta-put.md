Create or update a metadata entry for a node

### Synopsis


DESCRIPTION

  Create or update a metadata entry for a node.
  For a given node UUID, metadata are key/values of string/json-encoded strings.

EXAMPLE

  $ ./cells admin file meta-put --uuid=NODE_UUID --key=metaname --value='{"key":"value"}'



```
./cells admin file meta-put [flags]
```

### Options

```
  -h, --help           help for meta-put
  -k, --key string     Name of the metadata
  -u, --uuid string    UUID of the node to update
  -v, --value string   *JSON-encoded* string representing the value. Strings must be quoted, eg. '"custom-value"'
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

* [./cells admin file](./cells-admin-file)	 - Directly manage files and metadata on the nodes

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
