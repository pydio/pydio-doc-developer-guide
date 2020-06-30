CellsClient (a.k.a `cec`) is a dedicated tool that packages authentication and files operations into an easy-to-use binary. 

Latest binaries can be downloaded from here: 

- [Cec Linux amd64](https://download.pydio.com/latest/cells-client/release/{latest}/linux-amd64/cec)
- [Cec MacOSX](https://download.pydio.com/latest/cells-client/release/{latest}/darwin-amd64/cec) 
- [Cec Windows](https://download.pydio.com/latest/cells-client/release/{latest}/windows-amd64/cec.exe). 

### Authentication

As with other API consumers, you first need to authenticate the cec against the server. This is done by using the following command 

```
./cec configure
```
If you are on a desktop-based computer, a browser will be opened and once the authentication is finished, the application will automatically exchange the authorization code and save the authentication token. Otherwise, an URL is displayed in the console, that you must copy and paste to a browser to be able to manually get the authorization code.

If possible, depending on the OS and the available underlying libraries, the Authentication Token is stored in the local user Keyring. Also, it is automatically refreshed using the Refresh Token.

_Note: OAuth2 support starts with Cells v2.0. If you are still using an earlier version (you should not!), use `cec configure client-auth` command instead to use the OAuth2 Grant Type Password workflow._

### Usage

As documented in the [Command Line references](./cells-client-cec), cec provides the following commands :

```
Available Commands:
  clear       Clear current configuration
  completion  Add auto-completion helper to Cells Client
  configure   Configure a connection to a running server and locally persist credentials for later use
  cp          Copy files from A to B within your remote server
  doc         Generate documentation of the Cells Client
  help        Help about any command
  idm         Identity Management commands
  ls          List files in your remote server
  mkdir       Create folder(s) in the remote server
  mv          Move and/or rename nodes on the server
  rm          Trash files or folders
  scp         Copy files from/to Cells
  storage     DataSources management commands
  update      Check for available updates and apply them
  version     Show Cells Client version information
```

### Example

Using the `cec scp` command, you can easily upload or download files to/from the Cells server. Its usage is similar to the terminal `scp` command, except the Cells path must be identified by a `cells//` prefix. Which gives for example : 

**Upload to server**
```
./cec scp path/to/local/file cells//path/to/remote/file
```

**Download from server**
```
./cec scp cells//path/to/remote/file path/to/local/file
```