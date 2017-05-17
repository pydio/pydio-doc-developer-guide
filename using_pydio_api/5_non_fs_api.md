Non-standard drivers accessing to structured data like IMAP, MySQL, Apis, etc.

## Demo (no write actions)  
This is a standard access to the filesystem but with all write actions disabled server-side.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.demo/purge_post_19)

## Remote Server (via API)  
Access a remote server implementing the Pydio API (most commonly a remote server with another Pydio installed)


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.remote_fs/purge_post_19)

## Dropbox  
This plugin allows accessing a dropbox account. Still experimental, requires PEAR/HTTP_OAuth extension.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.dropbox/purge_post_19)

## FTP Server  
This driver can access a remote FTP server


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ftp/purge_post_19)

## Mailbox (Imap or POP)  
This plugin will browse the content of a mailbox (imap or pop) and allow to grab emails attachments and copy them to another repository. Requires the PHP IMAP extension.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.imap/listNodes_get_0)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.imap/download_post_1)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.imap/stat_post_2)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.imap/get_content_post_3)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.imap/copy_post_4)

## Inbox Workspace  
Received Files


- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/download_post_0)
- **/workspace_alias/copy_inbox/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/copy_inbox_post_1)
- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/listNodes_get_2)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/mkdir_post_3)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/mkfile_post_4)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/upload_put_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/restore_post_11)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/prepare_chunk_dl_post_12)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.inbox/purge_post_13)

## S3 (Amazon Web Service)  
Access an AWS server. Requires AWS-SDK (Version 2) for PHP 


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.s3/purge_post_19)

## FTP over SSH  
Access a remote server filesystem using FTP via SSH server. Handy for working around permissions problems.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp/purge_post_19)

## SSH File Transfer Protocol (SFTP)  
The SSH File Transfer Protocol is a network protocol that provides file access, file transfer, and file management functionalities over SSH2.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/download_post_4)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/stat_post_5)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/lsync_post_6)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/apply_check_hook_post_7)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/get_content_post_8)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/put_content_post_9)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/rename_post_10)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/copy_post_11)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/move_post_12)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/delete_post_13)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/chmod_post_14)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/prepare_chunk_dl_post_15)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.sftp_psl/download_chunk_post_16)

## Samba  
Browse a Samba Server


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.smb/purge_post_19)

## Open Stack (Swift)  
Access Open Stack Object Storage via Swift API


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.swift/purge_post_19)

## WebDAV  
Access WebDAV through Guzzle and SabreDAV


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.webdav/purge_post_19)