Start one or more services

### Synopsis


DESCRIPTION

  Start one or more services on this machine. 
  $ ./cells-enterprise start [flags] args...

  No arguments will start all services available (see 'ps' command).  
   - Select specific services with regular expressions in the additional arguments. 
   - The -t/--tags flag may limit to only a certain category of services (see usage below)
   - The -x/--exclude flag may exclude one or more services
  All these may be used in conjunction (-t, -x, regexp arguments).

REQUIREMENTS
  
  Ulimit: set a number of allowed open files greater or equal to 2048.
  For production use, a minimum of 8192 is recommended (see ulimit -n).

  Setcap: if you intend to bind the server to standard http ports (80, 443), 
  you must grant necessary permissions on cells binary with this command:
  $ sudo setcap 'cap_net_bind_service=+ep' <path to your binary>    

EXAMPLES

  1. Start all Cells services
  $ ./cells-enterprise start

  2. Start all services whose name starts with pydio.grpc
  $ ./cells-enterprise start pydio.grpc

  3. Start only services for scheduler
  $ ./cells-enterprise start --tag=scheduler

  4. Start whole plateform except the roles service
  $ ./cells-enterprise start --exclude=pydio.grpc.idm.role

ENVIRONMENT

  1. Flag mapping

  All the command flags documented below are mapped to their associated ENV var, using upper case and CELLS_ prefix.
  For example :
  $ ./cells-enterprise start --grpc_port 54545
  is equivalent to 
  $ export CELLS_GRPC_PORT=54545; ./cells-enterprise start

  2. Working Directories 

  - CELLS_WORKING_DIR: replace the whole standard application dir
  - CELLS_DATA_DIR: replace the location for storing default datasources (default CELLS_WORKING_DIR/data)
  - CELLS_LOG_DIR: replace the location for storing logs (default CELLS_WORKING_DIR/logs)
  - CELLS_SERVICES_DIR: replace location for services-specific data (default CELLS_WORKING_DIR/services)

  3. Timeouts, limits, proxies

  - CELLS_SQL_DEFAULT_CONN, CELLS_SQL_LONG_CONN: timeouts used for SQL queries. Use a golang duration (10s, 1m, etc). Defaults are respectively 30 seconds and 10 minutes.
  - CELLS_CACHES_HARD_LIMIT: maximum memory limit used by internal caches (in MB, default is 8). This is a per/cache limit, not global.
  - CELLS_UPDATE_HTTP_PROXY: if your server uses a client proxy to access outside world, this can be set to query update server.
  - HTTP_PROXY, HTTPS_PROXY, NO_PROXY: golang-specific environment variables to configure a client proxy for all external http calls.

  4. Other environment variables (development or advanced fine-tuning)

  - CELLS_CONNECTOR_USERNAME_AS_LOGIN: For the given list of connectors IDs, use username instead of email as user identifier.
  - CELLS_DAV_MULTIPART_SIZE (20): Default part size used to automatically chunk DAV uploads, in MB
  - CELLS_DEFAULT_DS_STRUCT (false): Create default datasources using structured format instead of flat
  - CELLS_ENABLE_FORMS_DEVEL (false): Display a basic UX form with all possible fields types in the UX (for React developers)
  - CELLS_ENABLE_LIVEKIT (false): Enable experimental support for video calls in the chat window, using a livekit-server.
  - CELLS_ENABLE_SIMDMD5 (false): Empty is false by default, if set this will switch the md5 hasher to simd implementation
  - CELLS_ENABLE_WIP_LANGUAGES (def): Display partially translated languages in the UX language picker.
  - CELLS_JOBS_LOG_LEVEL (info): Log level used for scheduler jobs - to be used carefully as it may produce a large volume of logs.
  - CELLS_MINIO_STALE_DATA_EXPIRY (48h): Expiration of stale data produced by objects upload parts
  - CELLS_SPNEGO_KEYTAB: Path to an SPNEGO Keytab File
  - CELLS_TRACE_FATAL: Better display root cause of process crashes
  - CELLS_WEB_RATE_LIMIT (0): Http API rate-limiter, as a number of token allowed per seconds. 0 means no limit.




```
./cells-enterprise start [flags]
```

### Options

```
      --advertise_address string     Address that should be advertised to other members of the cluster (leave it empty for default advertise address)
      --bind_address string          Address on which servers will bind. Binding port depends on the server type (grpc, http, etc). (default "127.0.0.1")
      --broker string                Pub/sub service URL for events broadcast. Supported schemes: grpc|mem|nats|rabbit (default "mem://")
      --enable_metrics               Instrument code to expose internal metrics (to local JSON file, or service discovery if Metrics Basic Auth is set)
      --enable_pprof                 Enable pprof remote debugging
  -x, --exclude stringArray          Select services to start by filtering out some specific ones by name
      --grpc_discovery_port string   Default discovery gRPC server port (registry, broker, config, and log services). (default "8030")
      --grpc_port string             Default gRPC server port (all gRPC services, except discovery ones) (default "8031")
  -h, --help                         help for start
      --log string                   Output log level: debug, info, warn, error (production is equivalent to log_json+info) (default "info")
      --log_json                     Output log formatted as JSON instead of text
      --log_to_file                  Write logs on-file in CELLS_LOG_DIR (default true)
      --metrics_basic_auth string    Expose metrics to a service discovery endpoint /metrics/sd
      --registry string              Registry URL used to manage services. Supported schemes: etcd|etcd+tls|file|grpc|mem (default "mem://?cache=shared")
      --site_bind string             [Site] The 'site_' flags suite overrides config-defined sites. Bind is the site binding address IP|DOMAIN:PORT (default 0.0.0.0:8080)
      --site_external string         [Site] External full URL http[s]://IP|DOMAIN[:PORT] exposed to the outside
      --site_le_agree                [Site] Accept Let's Encrypt EULA
      --site_le_email string         [Site] Set email to enable Let's Encrypt automatic TLS configuration
      --site_le_staging              [Site] Use Let's Encrypt staging CA instead of production to avoid being banned on misconfiguration.
      --site_no_tls                  [Site] Use plain HTTP (default false, use self-signed)
      --site_tls_cert_file string    [Site] Path to custom TLS certificate file
      --site_tls_key_file string     [Site] Path to custom TLS key file
  -t, --tags stringArray             Select services to start by tags, possible values are 'broker', 'data', 'datasource', 'discovery', 'frontend', 'gateway', 'idm', 'scheduler'
```

### Options inherited from parent commands

```
      --config string   Configuration storage URL. Supported schemes: etcd|etcd+tls|file|grpc|mem|vault|vaults (default "file:///home/teamcity/.config/pydio/cells/pydio.json")
```

### SEE ALSO

* [./cells-enterprise](./cells-enterprise)	 - Secure File Sharing for business

###### Auto generated by Pydio Cells Enterprise Distribution v4.3.5 on 5-Feb-2024
