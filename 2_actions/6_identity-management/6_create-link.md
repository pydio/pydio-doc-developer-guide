
 Create a public link for the selected node and under a specific user

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**If a link already exists...** (onExistsBehavior)|select, possible values: load existing link without changes (use),<br/>Update existing link with parameters (update),<br/>Remove and create a new link (remove),<br/>Create a second link (ignore),<br/>Output an error (error)|use|What to do if a link exists on resource|
|**Allow Read** (accessTypeDownload)|boolean|true|Should be true most of the time|
|**Allow Write** (accessTypeUpload)|boolean|true|Let a shared file be editable or a shared folder be writeable.|
|**Custom Label** (label)|string|{{RefLabel}}|Leave {{RefLabel}} to use node name|
|**Custom Description** (description)|string|<no value>|Leave empty to use share date|
|**Password** (password)|string|<no value>|Protect link with a password|
|**Maximum Downloads** (maxDownloads)|integer|<no value>|Protect link with maximum number of downloads|
|**Reset Downloads** (resetDownloads)|boolean|<no value>|When using max download, if link exists, reset downloads number|
|**Expiration Date** (expirationDate)|integer|<no value>|Protect link with auto-expiration at a given date, use a timestamp|
|**Template for Folders** (foldersTemplateName)|select, possible values: Standard (file list with application header) (pydio_shared_folder),<br/>Images Gallery (best for photos) (pydio_film_strip),<br/>Drop Files Here (for upload-enabled minisites) (pydio_dropbox_template)|pydio_shared_folder|Default view when creating link on folder|





