## ./cells version

Print version information

### Synopsis


DESCRIPTION

  Print version information.

  You can format the output with a go template using the --format flag.
  Typically, to only output a parsable version, call:

    $ ./cells version -f '{{.Version}}'
 
  As reference, known attributes are:
   - PackageLabel
   - Version
   - BuildTime
   - GitCommit
   - OS
   - Arch
   - GoVersion
	

```
./cells version [flags]
```

### Options

```
  -f, --format string   Format the output using the given Go template
  -h, --help            help for version
```

### Options inherited from parent commands

```
```

### SEE ALSO

* [./cells](./cells)	 - Secure File Sharing for business

###### Auto generated by Pydio Cells Home Edition v2.2.9 on 1-Jul-2021
