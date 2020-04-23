## ./cells-enterprise completion

Add auto-completion helper to Cells

### Synopsis

Install completion helper for Pydio Cells.

This command installs an additional plugin to provide suggestions when working with the Cells and hitting the 'tab' key.

```
./cells-enterprise completion [flags]
```

### Examples

```

1) Using Bash

On Linux, you must insure the 'bash-completion' library is installed:
	
	on Debian / Ubuntu
		sudo apt install bash-completion

	on RHEL / CentOS
		sudo yum install bash-completion

	on MacOS (make sure to follow the instructions displayed on Homebrew)
		brew install bash-completion

Then, to enable completion in your current session:
	source <(./cells-enterprise completion bash)

Or persistently:
	Debian/Ubuntu/CentOS
		./cells-enterprise completion bash | sudo tee /etc/bash_completion.d/cells

	macOS
		./cells-enterprise completion bash | tee /usr/local/etc/bash_completion.d/cells

2) Using Zsh

	Add to current zsh session:
		source <(./cells-enterprise completion zsh)

	Add persistently:
		./cells-enterprise completion zsh | sudo tee <path>/<to>/<your-zsh-completion-folder>
	
	On macOS
		./cells-enterprise completion zsh | tee /Users/<your current user>/.zsh/completion/_cells

```

### Options

```
  -h, --help   help for completion
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) (default "nats")
      --broker_address string             Broker port (default ":4222")
      --enable_metrics                    Instrument code to expose internal metrics
      --enable_pprof                      Enable pprof remote debugging
      --fork                              Used internally by application when forking processes
      --grpc_cert string                  Certificates used for communication via grpc
      --grpc_external string              External port exposed for gRPC (may be fixed if no SSL is configured or a reverse proxy is used)
      --grpc_key string                   Certificates used for communication via grpc
      --log string                        Sets the log level mode (default "info")
      --registry string                   Registry used to manage services (currently nats only) (default "nats")
      --registry_address string           Registry connection address (default ":4222")
      --registry_cluster_address string   Registry cluster address (default ":5222")
      --registry_cluster_routes string    Registry cluster routes
      --transport string                  Transport protocol for RPC (default "grpc")
      --transport_address string          Transport protocol port (default ":4222")
```

### SEE ALSO

* [./cells-enterprise](./cells-enterprise)	 - Secure File Sharing for business
* [./cells-enterprise completion bash](./cells-enterprise-completion-bash)	 - 
* [./cells-enterprise completion zsh](./cells-enterprise-completion-zsh)	 - 

###### Auto generated by Pydio Cells Enterprise Distribution v2.0.6 on 23-Apr-2020