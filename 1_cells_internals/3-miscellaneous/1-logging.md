

We mainly use 2 loggers that are defined in the `cells/common/log` package and used throughout the backend:

- A syslog logger is used to log technical information.
- An audit logger only logs precise information and is used to monitor the application from a business point of view. Audit logs are among others used for GRDP compliance. WARNING: you should not modify nor remove any of the audit log.

Pydio Cells relies on the [zap logging framework](https://github.com/uber-go/zap) that manages 5 levels of information:

- Debug
- Info
- Warn
- Error
- Fatal

And 2 types of output format 

- JSON
- Console like with colors.

Depending on the launching mode (see below), the logs are redirected to:

- Standard out
- Rolling files
- A gRPC service that streams each message in JSON format to a log service that store them in a BoltDB and index them with Bleve.

The logs can then be accessed within the admin dashboard.

Currently, the application can launched in one of the three following configuration:

- **Debug**: all log messages are redirected to standard out in a console friendly format
- **Info** (this is the default mode): same as debug mode but all message with `debug` level are dropped
- **Production**: 
  - Debug message are dropped
  - Message are formatted as JSON
  - Messages are redirected to the standard output, some rolling files and streamed the gRPC service that stores and indexes the messages.

### Guidelines

- When enriching the log with zap fields, always use constants from `common/zapfields.go` as keys, otherwise the logs won't be usable for analysis
- Pydio provides some shortcuts to easily generate zap fields for commons pydio objects. Typically when logging info about a tree.Node, you should write: `...Debug("A message", node.Zap())`
- Depending on the level of details required, you can either use `Zap()` that serializes all accessible information or `ZapPath()`, `ZapUuid()` or `ZapId()` (depending on the relevant info) that simply calls zap.String() with relevant pydio zap id (as seen in common/zapfields.go) and corresponding value.
