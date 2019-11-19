CellsClient (a.k.a `cec`) is a dedicated tool that packages authentication and files operations into an easy-to-use binary. 

Latest binaries can be downloaded from here: 

- [Cec Linux amd64](https://download.pydio.com/latest/cells-client/release/{latest}/linux-amd64/cec)
- [Cec MacOSX](https://download.pydio.com/latest/cells-client/release/{latest}/darwin-amd64/cec) 
- [Cec Windows](https://download.pydio.com/latest/cells-client/release/{latest}/windows-amd64/cec.exe). 

### Authentication

As with other API consumers, you first need to authenticate the cec against the server. This is done by using the following command 

```
./cec oauth
```
If you are on a desktop-based computer, a browser will be opened and once the authentication is finished, the application will automatically exchange the authorization code and save the authentication token. Otherwise, an URL is displayed in the console, that you must copy and paste to a browser to be able to manually get the authorization code.

If possible, depending on the OS and the available underlying libraries, the Authentication Token is stored in the local user Keyring. Also, it is automatically refreshed using the Refresh Token.

_Note: OAuth2 support starts with Cells v2.0. If you are still using an earlier version (you should not!), use `cec configure` command instead to use the OAuth2 Grant Type Password workflow._

### Usage

As documented in the [Command Line references](./cells-client-cec), cec provides the following commands :

```
Usage:
  ./cec [flags]
  ./cec [command]

Available Commands:
  clear       Clear current authentication stored in keyring
  completion  Auto completion for Pydio Cells
  configure   Manually configure using a user/password (use oauth instead)
  cp          Copy files from/to Cells
  doc         Generate MD and YAML documentation for all CellsClient CLI commands
  help        Help about any command
  idm         Identity management commands
  ls          List files on pydio cells
  mkdir       Create folder on remote server
  oauth       Authenticate client
  storage     Storage-related commands
  version     Version related commands

Flags:
  -c, --config string   Path to the configuration file
  -h, --help            help for ./cec

Use "./cec [command] --help" for more information about a command.
```

### Example

Using the `cec cp` command, you can easily upload or download files to/from the Cells server. Its usage is similar to the terminal `cp` command, except the Cells path must be identified by a `cells://` prefix. Which gives for example : 

**Upload to server**
```
./cec cp path/to/local/file cells://path/to/remote/file
```

**Download from server**
```
./cec cp cells://path/to/remote/file path/to/local/file
```