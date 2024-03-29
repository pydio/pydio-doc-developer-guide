Migrate a datasource format (flat or structured)

### Synopsis


DESCRIPTION

  Migrate the content of a bucket between structured and flat. It can be used in both directions. It must be run with in 
  a specific context: datasource services must be running **expect** for the sync services. You can start Cells in this 
  specific mode by using the following command: ./cells start -x pydio.grpc.data.sync

  The command executes the following actions:
  - List datasources showing their current formats. When picking a datasource, it is assumed it will be migrated to the 
    opposite format
  - Detect datasource bucket name and expect to find an second bucket named "bucket-flat" or "bucket-structured" 
    (depending on the target format).
  - Copy all files inside the new bucket, with their new name
  - If everything is ok, patch index database to add or remove .pydio hidden files (depending on target format)
  - Finally, update the datasource configuration in the configs.

  Use --dry-run parameter to display only the list of rename operations that will be performed, without touching DB or 
  configuration.

  By default, files are copied inside the new bucket and are left untouched inside the original one in case something 
  goes wrong. That means that your storage must have enough room for duplicating all data. If it's not the case, you can 
  pass the --move-files flag to delete original file after copy. You can also force the copy to be performed in-place by 
  manually editing target bucket name to its original value.



```
./cells admin datasource migrate [flags]
```

### Options

```
  -d, --dry-run      Do not apply any changes
  -f, --force        Skip initial warning
  -h, --help         help for migrate
  -m, --move-files   Delete original files after copying to new bucket
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

* [./cells admin datasource](./cells-admin-datasource)	 - Datasource management commands

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
