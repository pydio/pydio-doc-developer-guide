Import certificate in vault

### Synopsis


DESCRIPTION

  Import a certificate in the vault. 

SYNTAX

  Use uuid to assign a recognizable id to the certificate in the vault. If not present, defaults to the file name (with extension)

EXAMPLE

  Import a certificate file into the vault 
  $ ./cells admin cert import ~/path/to/my/certificate --uuid 123456.pem



```
./cells admin cert import [flags]
```

### Options

```
  -h, --help          help for import
      --uuid string   Certs Import Namespace
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

* [./cells admin cert](./cells-admin-cert)	 - Certification manager

###### Auto generated by Pydio Cells Home Edition v4.0.1 on 18-Oct-2022