List all users or search them by login

### Synopsis


DESCRIPTION

  List users stored in the Pydio Cells user repository.

EXAMPLES

  1. Search a specific user
  $ ./cells-enterprise admin user search --user "alice"

  2. List all users (default --user is "*") 
  $ ./cells-enterprise admin user search

  3. List users with a pattern 
  $ ./cells-enterprise admin user search -u "a*"



```
./cells-enterprise admin user search [flags]
```

### Options

```
  -h, --help          help for search
  -l, --limit int     Max. number of returned rows, 0 for unlimited (default 100)
  -o, --offset int    Add an offset to the query when necessary
  -u, --user string   Select a user by login (list all users and groups if empty)
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

* [./cells-enterprise admin user](./cells-enterprise-admin-user)	 - Manage users

###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
