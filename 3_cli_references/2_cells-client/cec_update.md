Check for available updates and apply them

### Synopsis


DESCRIPTION	
	
  Without argument, the 'update' command lists available updates.
  To apply the actual update, re-run the command specifying the target version with the --version flag.

  By default, we check for update in the stable channel, that is: we only install binaries that have been properly released.
  If necessary, you can use the --dev flag to switch **at your own risks** to the pre-release channel.


```
./cec update [flags]
```

### Options

```
      --dev              If set this flag will use the dev channel to load the updates
  -d, --dry-run          If set, this flag will grab the package and save it to the tmp directory instead of replacing current binary
  -h, --help             help for update
  -v, --version string   Specify the version to be installed and trigger the actual upgrade
```

### Options inherited from parent commands

```
      --config string     Location of Cells Client's config files (default "/home/teamcity/.config/pydio/cells-client")
      --login string      The user login, for Client auth only
      --no_cache          Force token refresh at each call. This might slow down scripts with many calls
      --password string   The user password, for Client auth only
      --skip_keyring      Explicitly tell the tool to *NOT* try to use a keyring, even if present. Warning: sensitive information will be stored in clear text
      --skip_verify       By default the Cells Client verifies the validity of TLS certificates for each communication. This option skips TLS certificate verification
  -t, --token string      A valid Personal Access Token
  -u, --url string        The full URL of the target server
```

### SEE ALSO

* [./cec](./cec)	 - Connect to a Pydio Cells server using the command line

###### Auto generated by Cells Client v2.1.0 on 9-Mar-2021