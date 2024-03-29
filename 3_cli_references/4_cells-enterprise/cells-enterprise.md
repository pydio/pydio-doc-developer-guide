Secure File Sharing for business

### Synopsis


DESCRIPTION

  Pydio Cells is self-hosted Document Sharing & Collaboration software for organizations that need 
  advanced sharing without security trade-offs. Cells gives you full control of your document sharing 
  environment – combining fast performance, huge file transfer sizes, granular security, and advanced 
  workflow automations in an easy-to-set-up and easy-to-support self-hosted platform.

CONFIGURE

  For the very first run, use './cells-enterprise configure' to begin the browser-based or command-line based installation wizard. 
  Services will automatically start at the end of a browser-based installation.

RUN

  Run '$ ./cells-enterprise start' to load all services.

WORKING DIRECTORIES

  By default, application data is stored under the standard OS application dir: 
  
   - Linux: ${USER_HOME}/.config/pydio/cells
   - Darwin: ${USER_HOME}/Library/Application Support/Pydio/cells
   - Windows: ${USER_HOME}/ApplicationData/Roaming/Pydio/cells

  You can customize the storage locations with the following ENV variables: 
  
   - CELLS_WORKING_DIR: replace the whole standard application dir
   - CELLS_DATA_DIR: replace the location for storing default datasources (default CELLS_WORKING_DIR/data)
   - CELLS_LOG_DIR: replace the location for storing logs (default CELLS_WORKING_DIR/logs)
   - CELLS_SERVICES_DIR: replace location for services-specific data (default CELLS_WORKING_DIR/services) 

LOGS LEVEL

  By default, logs are outputted in console format at the Info level and appended to a CELLS_LOG_DIR/pydio.log file. You can: 
   - Change the level (debug, info, warn or error) with the --log flag
   - Output the logs in json format with --log_json=true 
   - Prevent logs from being written to a file with --log_to_file=false

  For backward compatibility:
   - The CELLS_LOGS_LEVEL environment variable still works to define the --log flag (or CELLS_LOG env var)
     but is now deprecated and will disappear in version 4.     
   - The --log=production flag still works and is equivalent to "--log=info --log_json=true --log_to_file=true"
      


### Options

```
      --config string   Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
  -h, --help            help for ./cells-enterprise
```

### SEE ALSO

* [./cells-enterprise admin](./cells-enterprise-admin)	 - Direct Read/Write access to Cells data
* [./cells-enterprise configure](./cells-enterprise-configure)	 - Setup required configurations
* [./cells-enterprise ctl](./cells-enterprise-ctl)	 - Explore all registered items in registry and configuration.
* [./cells-enterprise start](./cells-enterprise-start)	 - Start one or more services
* [./cells-enterprise update](./cells-enterprise-update)	 - Check for available updates and apply them
* [./cells-enterprise version](./cells-enterprise-version)	 - Print version information

###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
