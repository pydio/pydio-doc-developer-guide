In Pydio Cells, APIs are first-class citizen that you can use to automate task on your server. These APIs are tested, consistent, and used by all official Cells client applications (Web UX, mobile applications, sync clients). We will focus here on the two API that are useful for the day-to-day operations like managing the files and folders and their various metadata, provisioning configurations, etc.

### Rest API

The main set of available API's are a list of REST endpoints, accessible using HTTP/1.1 protocol at [https://yourcells.tld/a/](https://yourcells.tld/a/), and protected using the OAuth2 protocol (see next section).

These API's provide all the necessary tools for:

- **Provisioning** : manipulating configuration data, workspaces, etc.
- **Authorization** : reading/writing information about users and their permissions.
- **Files** : Getting information about the files (metadata), triggering files/folders background operations, etc. This API is _NOT_ used for uploading or downloading files contents (see below)

REST API is documented in the OpenAPI JSON Document format, the de-facto standard that can be used to generate documentations or generate client SDK or servers stubs. It is documented in the next chapter "Rest API", and you can also consult a more detailed version of the documentation hosted on the [Swagger Hub](https://app.swaggerhub.com/apis-docs/pydio/pydiocells/2.0).

### S3 API

For **manipulating the file contents** in a consistent way (uploads/downloads), Cells provides an S3-compatible API. The root of your installation can be used as an s3-compatible storage in a third party software that supports such feature. There is only one bucket available, named `io`.

This endpoint requires the standard S3-Signature headers, which can be fairly complex to generate, so we recommend using one of the numerous libraries available out there to communicate with S3. To connect to the Cells, an S3 Client will require the following settings:

- **Custom URL** : your Cells URL.
- **Data Bucket** : `io`
- **Access key and secret** : use the JWT (see Authentication section) as the API Key, and `gatewaysecret` as a fixed API Secret.

_Please note_: make sure the library handles bucket name _as path_ and not _as subdomain_.

### Node paths

When manipulating files through the APIs, the nodes (files or folders) are identified by their **path**, that are slash-separated segments similar to file paths (always using forward slash, even if Cells is running on Windows).

#### User Context

In most cases, a typical path looks like `/workspace-slug/path/to/file.txt`.

The very first segment is always composed of the workspace slug, locating the resource inside a given workspace (or Cell). For example, listing files under the `/` root path will result in listing the workspaces visible to the currently logged user :

```
POST https://SERVER_NAME/a/tree/stats {"NodePaths":["/*"]}
{
    "Nodes": [
        {
            "Path": "personal-files", // WORKSPACE SLUG
            "Type": "COLLECTION",
            "MetaStore": {...}
        },
        {
            "Path": "common-files", // WORKSPACE SLUG
            "Type": "COLLECTION",
            "MetaStore": {...}
        }
    ]
}
```

#### Admin Context

Some specific _admin-oriented APIs_ (like AdminTreeService) will list the paths starting at the very root of the server internal tree, which means displaying the datasources ids as its first level:

```sh
POST https://SERVER_NAME/a/tree/admin/list {"Node":{"Path":"/"}}}

{
    "Parent": {
        "Uuid": "ROOT",
        "Path": "/"
    },
    "Children": [
        {
            "Uuid": "DATASOURCE:cellsdata",
            "Path": "cellsdata", // DATASOURCE NAME
            "MetaStore": {...}
        },
        {
            "Uuid": "DATASOURCE:personal",
            "Path": "personal", // DATASOURCE NAME
            "MetaStore": {...}
        },
        {
            "Uuid": "DATASOURCE:pydiods1",
            "Path": "pydiods1", // DATASOURCE NAME
            "MetaStore": {
                "name": "\"pydiods1\""
            }
        }
    ]
}
```
