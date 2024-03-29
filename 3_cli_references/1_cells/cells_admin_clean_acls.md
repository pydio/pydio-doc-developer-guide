Clean Expired ACLs

### Synopsis


DESCRIPTION

  When deleted after a node deletion, ACLs are not really deleted but only expired, to be able to restore them
  if necessary. This can lead to keep unused data, and particularly shared links information that may prevent users to 
  re-use an existing custom link value. Use this command to definitely delete expired ACLs based on a period. 

  Parameters accept either timestamps or durations. In the later case, corresponding time is computed using "Now - Duration".

EXAMPLES

  Clean all ACLs expired before last 24h 

  $ ./cells clean admin acls --before 24h 



```
./cells admin clean acls [flags]
```

### Options

```
  -a, --after string    Expiration date is greater than...
  -b, --before string   Expiration date is lower than... (default "240h")
  -h, --help            help for acls
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

* [./cells admin clean](./cells-admin-clean)	 - Housekeeping commands

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
