
 Perform a console command on the underlying server. If applied to a Cells file, data will be temporarily copied on the server file system to be processed.

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Shell Command** (cmd)|select|<no value>|Command to be called directly on server underlying OS. Authorized values must be set manually in the application configuration inside defaults/schedulerShellAllowedCommands key.|
|**Parameters** (parameters)|string|<no value>|List of space-separated parameters to be appended to the command|
|**Use temporary folder** (inputTempFile)|boolean|<no value>|Pipe file to/from the filesystem inside a temporary folder. Used in conjunction with an input Node, the command parameters can use PYDIO_INPUT_FILE to apply shell command on this file, and PYDIO_OUTPUT_FILE to read an output back to Cells.|





