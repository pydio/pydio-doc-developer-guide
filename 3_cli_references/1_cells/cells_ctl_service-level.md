Update log level for a given service

### Synopsis




```
./cells ctl service-level [flags]
```

### Options

```
      --advertise_address string   Default advertise address (default "127.0.0.1")
      --broker string              Pub/sub service for events between services (default "grpc://:8030")
      --discovery string           Registry and pub/sub (default "grpc://:8030")
  -e, --enable                     Switch debug mode on for specified services (default) (default true)
  -h, --help                       help for service-level
      --registry string            Registry used to contact services (default "grpc://:8030")
  -r, --reset                      Reset all registered values
  -s, --services strings           Set specific services in debug mode. Use RegExp or the 'empty' key for logs without context
```

### Options inherited from parent commands

```
      --config string   Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
```

### SEE ALSO

* [./cells ctl](./cells-ctl)	 - Explore all registered items in registry and configuration.

###### Auto generated by Pydio Cells Home Edition v4.0.1 on 18-Oct-2022