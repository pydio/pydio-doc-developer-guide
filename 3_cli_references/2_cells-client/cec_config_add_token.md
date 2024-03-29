Configure Authentication using a Personal Access Token

### Synopsis


DESCRIPTION

  Configure your Cells Client to connect to your distant server using a Personal Acces Token.
  A token can be generated with the 'token' command for a given user on the server side (not in this client),
  see 'cells admin user token --help' for further details.

  Please beware that the Personal Access Token will be stored in clear text if you do not have a **correctly configured and running** keyring on your client machine.

  This is the preferred way to handle authentication between Cells and your client.


```
./cec config add token [flags]
```

### Options

```
  -h, --help   help for token
```

### Options inherited from parent commands

```
      --config string     Location of Cells Client's config files (default: /home/teamcity/.config/pydio/cells-client/config.json)
      --login string      The user login, for Client auth only
      --no_cache          Force token refresh at each call. This might slow down scripts with many calls
      --password string   The user password, for Client auth only
      --skip_keyring      Explicitly tell the tool to *NOT* try to use a keyring, even if present. Warning: sensitive information will be stored in clear text
      --skip_verify       By default the Cells Client verifies the validity of TLS certificates for each communication. This option skips TLS certificate verification
  -t, --token string      A valid Personal Access Token (PAT)
  -u, --url string        The full URL of the target server
```

### SEE ALSO

* [./cec config add](./cec-config-add)	 - Configure a new connection to a running server and persist credentials locally

###### Auto generated by Cells Client v4.1.0 on 21-Feb-2024
