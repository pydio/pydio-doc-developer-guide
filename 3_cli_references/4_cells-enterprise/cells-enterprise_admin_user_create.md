Create a user

### Synopsis


DESCRIPTION

  Create a new user.

  Please, note that the login is case sensitive. You can create 2 distinct users with login 'User' and 'user'. 
  You can also create a user in a given group by entering a full path (see examples below). 

  If not provided with the -p flag, password is prompted by the command line.

EXAMPLES

  1. Create a user with a password
  $ ./cells-enterprise admin user create -u 'user' -p 'a password'

  2. Create a user with a prompt for password
  $ ./cells-enterprise admin user create -u 'user'

  3. Create a user inside a group
  $ ./cells-enterprise admin user create -u "/group/user" -p "new-password"



```
./cells-enterprise admin user create [flags]
```

### Options

```
  -h, --help              help for create
  -p, --password string   Password of the new user
  -u, --username string   Login of the new user
```

### Options inherited from parent commands

```
      --advertise_address string   Default advertise address (default "127.0.0.1")
      --broker string              Pub/sub service for events between services (default "grpc://:8030")
      --config string              Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
      --discovery string           Registry and pub/sub (default "grpc://:8030")
      --registry string            Registry used to contact services (default "grpc://:8030")
```

### SEE ALSO

* [./cells-enterprise admin user](./cells-enterprise-admin-user)	 - Manage users

###### Auto generated by Pydio Cells Enterprise Distribution v4.0.1 on 17-Oct-2022