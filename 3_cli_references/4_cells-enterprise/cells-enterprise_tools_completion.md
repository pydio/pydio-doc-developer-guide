## ./cells-enterprise tools completion

Add auto-completion helper to Cells

### Synopsis


DESCRIPTION

  Install completion helper for Pydio Cells.
  This command installs an additional plugin to provide suggestions when working with the Cells and hitting the 'tab' key.


```
./cells-enterprise tools completion [flags]
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
```

### SEE ALSO

* [./cells-enterprise tools](./cells-enterprise-tools)	 - Additional tools
* [./cells-enterprise tools completion bash](./cells-enterprise-tools-completion-bash)	 - 
* [./cells-enterprise tools completion zsh](./cells-enterprise-tools-completion-zsh)	 - 

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.6 on 20-Apr-2021