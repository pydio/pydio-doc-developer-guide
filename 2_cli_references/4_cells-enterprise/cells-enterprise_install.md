## ./cells-enterprise install

Launch the installation process

### Synopsis


 This command launches the installation process of Pydio Cells.

 Be ready to answer a few questions to configure the network connection of your application:
   1. Bind URL: the name (or IP) and port to hook the internal webserver on a the network interface 
   2. TLS Settings: choose the TLS configuration that is exposed by this internal webserver
   3. External URL: the URL you communicate to your end-users. It can differ from your bind address, 
      typically if the app is behind a proxy or inside a container with ports mapping.

 You can also provide these connection parameters via flags to configure the main gateway 
 and directly launch the browser install.
 Typically, define only --bind and --external flags to launch in default self-signed mode: 
 it generates locally trusted certificate with mkcert.
 If you are working locally, the installer opens a browser (if you are installing on a remote server, copy/paste the URL),
 to gather necessary extra information to finalize Pydio Cells installation. 

 Upon installation termination, all micro-services are started automatically and you can directly start using Cells. 
 It is yet good practice to stop the installer and restart cells in normal mode before going live.

 If you do not have a browser access, you can also perform the whole installation process using this CLI.

 See additional flags for more details or use another TLS mode, like in the following example that uses Let's Encrypt automatic certificate generation.

 $ ./cells-enterprise install --bind share.mydomain.tld:443 --external https://share.mydomain.tld --le_email admin@mydomain.tld --le_agree true

 Here is a list with a few examples of valid URL couples:
 
 - Bind Host: 0.0.0.0:8080
 - External Host: https://share.mydomain.tld
 Or
 - Bind Host: share.mydomain.tld:443
 - External Host: https://share.mydomain.tld
 Or
 - Bind Host: IP:1515               # internal port
 - External Host: https://IP:8080   # external port mapped by docker
 Or
 - Bind Host: localhost:8080
 - External Host: http://localhost:8080  # Non-secured local installation

 

```
./cells-enterprise install [flags]
```

### Options

```
      --bind string            Internal URL:PORT on which the main proxy will bind. Self-signed SSL will be used by default [$CELLS_BIND]
      --cli                    Do not prompt for install mode, use CLI mode by default [$CELLS_INSTALL_CLI]
      --exit_after_install     Simply exits main process after the installation is done [$CELLS_EXIT_AFTER_INSTALL]
      --external string        External PROTOCOL:URL:PORT exposed to the outside [$CELLS_EXTERNAL]
  -h, --help                   help for install
      --json string            Points toward a configuration in JSON format [$CELLS_INSTALL_JSON]
      --le_agree               Accept Let's Encrypt EULA [$CELLS_LE_AGREE]
      --le_email string        Contact e-mail for Let's Encrypt provided certificate [$CELLS_LE_EMAIL]
      --le_staging             Rather use staging CA entry point [$CELLS_LE_STAGING]
      --no_tls                 Configure the main gateway to rather use plain HTTP [$CELLS_NO_TLS]
      --tls_cert_file string   TLS cert file path [$CELLS_TLS_CERT_FILE]
      --tls_key_file string    TLS key file path [$CELLS_TLS_KEY_FILE]
      --yaml string            Points toward a configuration in YAML format [$CELLS_INSTALL_YAML]
```

### Options inherited from parent commands

```
      --broker string                     Pub/sub service for events between services (currently nats only) [$CELLS_BROKER] (default "nats")
      --broker_address string             Broker port [$CELLS_BROKER_ADDRESS] (default ":4222")
      --config string                     Config [$CELLS_CONFIG] (default "local")
      --enable_metrics                    Instrument code to expose internal metrics [$CELLS_ENABLE_METRICS]
      --enable_pprof                      Enable pprof remote debugging [$CELLS_ENABLE_PPROF]
      --fork                              Used internally by application when forking processes [$CELLS_IS_FORK]
      --grpc_cert string                  Certificates used for communication via grpc [$CELLS_GRPC_CERT]
      --grpc_external string              External port exposed for gRPC (may be fixed if no SSL is configured or a reverse proxy is used) [$CELLS_GRPC_EXTERNAL]
      --grpc_key string                   Certificates used for communication via grpc [$CELLS_GRPC_KEY]
      --log string                        Sets the log level mode [$CELLS_LOGS_LEVEL] (default "info")
      --registry string                   Registry used to manage services (currently nats only) [$CELLS_REGISTRY] (default "nats")
      --registry_address string           Registry connection address [$CELLS_REGISTRY_ADDRESS] (default ":4222")
      --registry_cluster_address string   Registry cluster address [$CELLS_REGISTRY_CLUSTER_ADDRESS]
      --registry_cluster_routes string    Registry cluster routes [$CELLS_REGISTRY_CLUSTER_ROUTES]
      --transport string                  Transport protocol for RPC [$CELLS_TRANSPORT] (default "grpc")
      --transport_address string          Transport protocol port [$CELLS_TRANSPORT_ADDRESS] (default ":4222")
```

### SEE ALSO

* [./cells-enterprise](./cells-enterprise)	 - Secure File Sharing for business

###### Auto generated by Pydio Cells Enterprise Distribution v2.2.0-rc1 on 3-Dec-2020
