## ./cells-enterprise admin jobs tpl-docs

Generate docs for jobs

### Synopsis


DESCRIPTION

  This tool generates documentation for Cells Flows default template Jobs (in MD+Yaml format)


```
./cells-enterprise admin jobs tpl-docs [flags]
```

### Options

```
  -h, --help                 help for tpl-docs
      --menu-folder string   Write MD+YAML documentations inside target folder
      --menu-name string     Write MD+YAML documentations using target menu_name tag (default "menu-admin-guide-v6-enterprise")
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

* [./cells-enterprise admin jobs](./cells-enterprise-admin-jobs)	 - Group job-related commands

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.9 on 1-Jul-2021
