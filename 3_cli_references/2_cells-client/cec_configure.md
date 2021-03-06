Configure a connection to a running server and persist credentials locally for later use

### Synopsis


DESCRIPTION

  Launch an interactive process to configure a connection to a running Cells server.
  By default, we use a secure OAuth2 process based on 'Authorization Code' Grant.

  If necessary, you might use an alternative authorization process and/or execute this process non-interactively calling one of the defined sub-commands.

  Once a connection with the server established, it stores necessary information locally, keeping the sensitive bits encrypted in the client machine keyring.
  If you want to forget a connection, the config file and keyring can be cleant out by calling the 'clear' subcommand.

WARNING

If no keyring is defined in the client machine, all information is stored in *clear text* in a config file of the Cells Client working directory.


```
./cec configure [flags]
```

### Options

```
  -h, --help   help for configure
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
* [./cec configure check-keyring](./cec-configure-check-keyring)	 - Try to store and retrieve a dummy value in local keyring to test it
* [./cec configure client-auth](./cec-configure-client-auth)	 - Connect to the server using Client Credentials
* [./cec configure oauth](./cec-configure-oauth)	 - Use OAuth2 credential flow to login to the server
* [./cec configure token](./cec-configure-token)	 - Configure Authentication using a Personal Access Token

###### Auto generated by Cells Client v2.1.0 on 9-Mar-2021
