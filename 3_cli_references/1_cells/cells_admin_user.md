Manage users

### Synopsis


DESCRIPTION

  Manage users from the command line by calling the dedicated services.


```
./cells admin user [flags]
```

### Options

```
  -h, --help   help for user
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
* [./cells admin user create](./cells-admin-user-create)	 - Create a user
* [./cells admin user delete](./cells-admin-user-delete)	 - Delete a user
* [./cells admin user search](./cells-admin-user-search)	 - List all users or search them by login
* [./cells admin user set-profile](./cells-admin-user-set-profile)	 - Set profile
* [./cells admin user set-pwd](./cells-admin-user-set-pwd)	 - Change user password
* [./cells admin user token](./cells-admin-user-token)	 - Generate a personal token for a user
* [./cells admin user unlock](./cells-admin-user-unlock)	 - Unlock User

###### Auto generated by Pydio Cells Home Edition v4.4.0-rc2 on 25-Mar-2024
