Starting with Pydio 7, we have rewritten the REST API from ground up to stick more closely to the REST standards. The api V2 is accessible under `yourpydio/api/v2` and provides access points for managing files and folders, as well as a whole set of commands for provisioning users and workspaces.

This API is entirely described in the OpenAPI format (formerly Swagger). Please use the [Reference](https://pydio.com/en/pydio-api-v2) to get all informations about the possible requests. Below is a short description of the major groups of this api.

The access point use the various Http Methods (GET/POST/PATCH/DELETE) to perform the standard CRUD operations.

### File

These requests are related to all files manipulation (create files/folders, get information, uploads, etc...). It is split in two parts, the /api/v2/fs/ for manipulating the files and /api/v2/io/ for just uploading and downloading the content of the files. 

### User Account

These requests are used for getting information about the user who is currently logged in.

### Workspace

These request provide information about a given workspace, and some plugins can extend it to provide more info. Typically, the "changes" list used for synchronisation is done here.

### Provisioning

The group contains all requests for creating users, roles, workspaces and editing them as an administrator. This is what you will want to look at if you want to automate the provisioning of pydio.

### Task

This API is specific for the background tasks manager.