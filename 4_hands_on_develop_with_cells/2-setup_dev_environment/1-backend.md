
Before trying to set up a development environment, you should first install a packaged binary version of the application. You can find a step by step guide in the [Installation guides](https://pydio.com/en/docs/cells/v1/installation-guides).

It will help insure that your system meets the necessary requirements and let you resolve potential problems that are not directly bound to the fact that you build the code on your machine.

Then, building the Pydio Cells backend from the source code is quite straightforward:

```sh
# Retrieve the code
go get -u github.com/pydio/cells
# From this line on, we assume you are in Pydio Cells' code root directory
cd $GOPATH/src/github.com/pydio/cells
# Build your binary
make dev
````

Note: we had to fork a few libraries before integrating them as dependencies. If you need to modify this part of the code, you should first retrieve a local version by executing
`./deps.sh`
