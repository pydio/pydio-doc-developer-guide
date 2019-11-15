### Requirements

The following is required to develop on Cells backend and frontend

- Go version 1.12+
- Git
- Nodejs 6.+ (and npm 3.10+)
- Grunt & grunt-cli

### Building binary

Before trying to set up a development environment, you should first install a packaged binary version of the application. You can find a step by step guide in the [Quick Start section of the admin guide](https://pydio.com/en/docs/cells/v2/quick-start).

It helps insuring that your system meets the necessary requirements and let you resolve potential problems that are not directly bound to the fact that you build the code on your machine.

Then, building the Pydio Cells backend from the source code is quite straightforward:

```sh
# Retrieve the code
> go get -u github.com/pydio/cells
> cd $GOPATH/src/github.com/pydio/cells

# Build the  cellsbinary
> make dev
```

### Installation

To have the environment running, you must also:

- Create a database in your chosen DB server,
- Run the Pydio Cells installer that will guide you through the necessary steps: you might refer to [the admin guide](https://pydio.com/en/docs/administration-guides) for additional information.

```sh
> ./cells install
```

### Running the tests

To run the tests, simply do: `go test -v ./...`
