Copy files from/to Cells

### Synopsis


DESCRIPTION

  scp copies files between your client machine and a Pydio Cells server.

  To distinguish between local and remote paths, prefix remote paths with 'cells://'
  If you have installed the completion and intend to use it, remote prefix is 'cells//', without the colon.

  Currently, copying can only be performed between the client machine and the server or vice versa.
  Direct transfers between two Cells instances are not yet supported.

  For convenience:
    - If the target folder does not exist (but its parent does), it will be created.
    - If an item with the same name already exists on the target side, the transfer will abort with an error unless "force" mode is enabled.

  When "force" mode is enabled:
    - If both 'old' (existing) and 'new' items are files: 'new' replaces 'old'.
    - If 'old' and 'new' are of different types: 'old' is erased on the target, then 'new' is copied (recursively).
    - If both are folders: each child of 'new' is copied into 'old'. If an item with the same name already exists on the target side, the rules are applied recursively.

  WARNING: This could lead to data loss on the target side. Use with caution.

  Depending on your use-case, you might want to use the 'scp' command in interactive mode, with a progress bar, or with log messages, especially when launching from a script.

TROUBLESHOOTING

  If you encounter issues with transferring large files or extensive directory structures, we recommend using the 'scp' command with a PAT and the '--no-progress' flag set.

  You can also adjust the log level, e.g., with '--log debug' and choose which events are logged by the AWS SDK that handles multipart uploads.

  Known event types and corresponding AWS SDK log types:
    - signing: aws.LogSigning
    - retries: aws.LogRetries
    - request: aws.LogRequest
    - request_with_body: aws.LogRequestWithBody
    - response: aws.LogResponse
    - response_with_body: aws.LogResponseWithBody
    - deprecated_usage: aws.LogDeprecatedUsage
    - request_event_message: aws.LogRequestEventMessage
    - response_event_message: aws.LogResponseEventMessage

  Specify the desired mix of event types with, e.g., '--multipart-debug-flags="signing | retries"' (spaces are optional).

  Convenience flags for retro-compatibility:
    - '--verbose' is equivalent to '--no-progress --log info --multipart-debug-flags="signing | retries"'
    - '--very-verbose' is equivalent to '--no-progress --log debug --multipart-debug-flags="request | response | signing | retries | deprecated_usage"'
 

EXAMPLES

  1/ Uploading a file to the server:
  $ ./cec scp ./README.md cells://common-files
  Copying ./README.md to cells://common-files
  Waiting for file to be indexed...
  File correctly indexed

  2/ Download a file from server:
  $ ./cec scp cells://personal-files/funnyCat.jpg ./
  Copying cells://personal-files/funnyCat.jpg to /home/pydio/downloads

  3/ Download a folder to an existing target, using existing folders when they are already here but re-downloading files: 
  $ ./cec scp --force cells//common-files/my-folder ./tests
  Downloading cells://common-files/my-folder to /home/pydio/downloads/tests

  Copying cells//common-files/my-folder to /home/pydio/tests	


```
./cec scp [flags]
```

### Options

```
  -f, --force                          *DANGER* turns overwrite mode on: for a given item in the source tree, if a file or folder with same name already exists on the target side, it is merged or replaced.
  -h, --help                           help for scp
      --max-parts-number int           Maximum number of parts, S3 supports 10000 but some storage require less parts. (default 5000)
      --multipart-debug-flags string   Define flags to fine tune debug messages emitted by the underlying AWS SDK during multi-part uploads
      --multipart-threshold int        Files bigger than this size (in MB) will be uploaded using Multipart Upload. (default 100)
  -n, --no-progress                    Do not show progress bar. You can then fine tune the log level
      --part-size int                  Default part size (MB), must always be a multiple of 10MB. It will be recalculated based on the max-parts-number value. (default 50)
      --parts-concurrency int          Number of concurrent part uploads. (default 3)
  -q, --quiet                          Reduce refresh frequency of the progress bars, e.g when running cec in a bash script
      --retry-max-attempts int         Limit the number of attempts before aborting. '0' allows the SDK to retry all retryable errors until the request succeeds, or a non-retryable error is thrown. (default 3)
      --retry-max-backoff string       Maximum duration to wait after a part transfer fails, before trying again, expressed in Go duration format, e.g., '20s' or '3m'. (default "3s")
      --skip-md5                       Do not compute md5 (for files bigger than 5GB, it is not computed by default for smaller files).
  -v, --verbose                        Alias for an opinionated debug configuration to investigate problematic uploads
  -w, --very-verbose                   Alias that turns most of the debug options on when investigating problematic uploads
```

### Options inherited from parent commands

```
      --config string     Location of Cells Client's config files (default: /home/teamcity/.config/pydio/cells-client/config.json)
      --log string        change log level (default: info) (default "info")
      --login string      The user login, for Client auth only
      --no-cache          Force token refresh at each call. This might slow down scripts with many calls
      --password string   The user password, for Client auth only
      --skip-keyring      Explicitly tell the tool to *NOT* try to use a keyring, even if present. Warning: sensitive information will be stored in clear text
      --skip-verify       By default the Cells Client verifies the validity of TLS certificates for each communication. This option skips TLS certificate verification
  -t, --token string      A valid Personal Access Token (PAT)
  -u, --url string        The full URL of the target server
```

### SEE ALSO

* [./cec](./cec)	 - Connect to a Pydio Cells server using the command line

###### Auto generated by Cells Client v4.3.0 on 27-May-2025
