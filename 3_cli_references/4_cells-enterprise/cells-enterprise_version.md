Print version information

### Synopsis


DESCRIPTION

  Print version information.

  You can format the output with a go template using the --format flag.
  Typically, to only output a parsable version, call:

    $ ./cells-enterprise version -f '{{.Version}}'
 
  As reference, known attributes are:
   - PackageLabel
   - Version
   - BuildTime
   - GitCommit
   - OS
   - Arch
   - GoVersion
	

```
./cells-enterprise version [flags]
```

### Options

```
  -f, --format string   Format the output using the given Go template
  -h, --help            help for version
```

### Options inherited from parent commands

```
      --config string   Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
```

### SEE ALSO

* [./cells-enterprise](./cells-enterprise)	 - Secure File Sharing for business

###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
