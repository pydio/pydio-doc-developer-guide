<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

Most current operations on files and folders, their metadata, and additional sharing features.



## File System (Standard)  
The most standard access to a filesystem located on the server.


- **/workspace_alias/ls/dir+**  
  Standard listing action         to retrieve the list of children for a given directory. For the main parameters, use {nodes} parameter, the {dir}+{file} are kept for backward compatibility.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/listNodes_get_0)
- **/workspace_alias/mkdir/file+**  
  Creates a directory with name {dirname} at the given location.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/mkdir_post_1)
- **/workspace_alias/mkfile/node+**  
  Creates a file at the given path. Optionally sets a content.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/mkfile_post_2)
- **/workspace_alias/upload/input_stream/dir+**  
  Post a file content for upload, by default as x-www-form-urlencoded, but can be passed as input stream as well.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/upload_put_3)
- **/workspace_alias/download/file+**  
  Download one or many files at once. If multiple files (or a folder path) passed, they are sent back as an archive.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/download_post_4)
- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/compress_post_5)
- **/workspace_alias/stat/file+**  
  Returns an fstat() structure  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/stat_post_6)
- **/workspace_alias/lsync/**  
  For externally modified files, triggers the node.change event in the platform  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/lsync_post_7)
- **/workspace_alias/apply_check_hook/hook_name/node+**  
  Applies a node.before_create or node.before_change event to check for exemple that an upload is authorized before posting actual upload.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/apply_check_hook_post_8)
- **/workspace_alias/get_content/node+**  
  Alternative to Download, without attachment headers but more in a stream-like format, depending on file type (image, audio, video, plain text).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/get_content_post_9)
- **/workspace_alias/put_content/node+**  
  PUT the content inside a file, directly from the POST array.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/put_content_post_10)
- **/workspace_alias/restore/node+**  
  For an item located inside the recycle bin, tries to find its original location and move it there.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/restore_post_11)
- **/workspace_alias/rename/**  
  Rename a resource, file or folder.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/rename_post_12)
- **/workspace_alias/copy/**  
  Copy one or more items to a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/copy_post_13)
- **/workspace_alias/move/**  
  Move a resource at a given target  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/move_post_14)
- **/workspace_alias/delete/nodes+**  
  Delete one or more resources. If the workspace supports Recycle Bin features, resource is actually moved to the recycle bin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/delete_post_15)
- **/workspace_alias/chmod/node+**  
  Change the FS permissions of the selected item.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/chmod_post_16)
- **/workspace_alias/prepare_chunk_dl/chunk_count/node+**  
  Use the filesize of the file to generate an list of pieces to be downloaded using {download_chunk} action. Will generate a unique file_id to be used later.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/prepare_chunk_dl_post_17)
- **/workspace_alias/download_chunk/chunk_index/file_id**  
  Chunk file into pieces before downloading the pieces. Can be handy for problematic and limited servers.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/download_chunk_post_18)
- **/workspace_alias/purge/**  
  If the workspace has a PURGE configured parameter, finds the expired files and delete them. Can be typically called from command line.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.fs/purge_post_19)

## Audio Player  
Inserts a flash player for reading mp3 files online, and playing a whole folder in a separate window.


- **/workspace_alias/audio_proxy/file+**  
  Server an audio file as a stream  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/editor.audio/audio_proxy_post_0)

## Image viewer  
Image viewer, used for previewing images and browsing them in a diaporama. Generates a thumbnail version of the images.


- **/workspace_alias/preview_data_proxy/file+**  
  Server an image with correct mimetype, eventually rendered as thumb.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/editor.diaporama/imagePreview_post_0)

## Image Magick  
Image Magick viewer supports PDF and various images formats preview. Requires external library to be installed on the server.


- **/workspace_alias/imagick_data_proxy/file+**  
  Serve JPG previews for a PDF or imagick-compatible file.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/editor.imagick/imagick_data_proxy_post_0)
- **/workspace_alias/get_extracted_page/file/src_file+**  
  Server a prefetched thumbnail for a PDF or imagick compatible file. See imagick_data_proxy.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/editor.imagick/get_extracted_page_post_1)

## Video Player  
Inserts a video player in the info panel, either HTML5 or Flash depending on the format.


- **/workspace_alias/read_video_data/file+**  
  Server a video file as a stream  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/editor.video/read_video_data_post_0)

## Power FS  
This set of extensions assume that you have an administration access to your server: ability to tweak the webserver and the php configuration, ability to access the command line, etc.


- **/workspace_alias/compress/file+**  
  Compress one or many files into a Zip archive. May be disabled for remote-access workspaces (like FTP).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.powerfs/compress_post_0)

## Sharing Features  
Share Center actions and hooks


- **/workspace_alias/share/simple_share_type/file+**  
  Main action for sharing a file or a folder  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/share_post_0)
- **/workspace_alias/load_shared_element_data/file+**  
  Loads all current sharing data for a given resource. Workspace must support metadata management (metastore).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/load_shared_element_data_post_1)
- **/workspace_alias/unshare/file+**  
  Stop sharing a folder, or remove a public link from a file.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/unshare_post_2)
- **/workspace_alias/toggle_link_watch/file+**  
  Toggle a shared element status for being watched or not.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/toggle_link_watch_post_3)
- **/workspace_alias/reset_counter/file+**  
  Reset download counter for a given link generated on a file.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/reset_counter_post_4)
- **/workspace_alias/sharelist-clearExpired/**  
  Clear expired links  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.share/sharelist-clearExpired_post_5)

## Lucene Search Engine  
Zend_Search_Lucene implementation to index all files and search a whole workspace quickly.


- **/workspace_alias/search/query**  
  Search the Lucene index  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/index.lucene/search_post_0)
- **/workspace_alias/search_by_keyword/field/query**  
  Search the Lucene on a specific document field  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/index.lucene/searchByKeyword_post_1)

## Syncable Workspace  
Track changes on this workspace to enable the synchronization with an external client


- **/workspace_alias/changes/seq_id**  
  List all changes on this workspace starting at a given sequence id  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.syncable/changes_post_0)
- **/workspace_alias/resync_storage/**  
  Use the current index to compare with underlying storage and detect events  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.syncable/resync_storage_post_1)

## Exif Metadata  
Extracts the EXIF metadata of a JPG image. Used in conjunction with editor.exif


- **/workspace_alias/extract_exif/format/file+**  
  Extract all exif data from a compatible image (JPG).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.exif/extract_exif_post_0)

## Comments Feed  
Display a chat-like feed on all nodes


- **/workspace_alias/load_comments_feed/file+**  
  Load the comments on this file or below  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.comments/load_comments_feed_post_0)
- **/workspace_alias/post_comment/file+**  
  Post a comment linked to a given file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.comments/post_comment_post_1)
- **/workspace_alias/delete_comment/**  
  Delete a comment by reposting its json representation  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.comments/delete_comment_post_2)

## File Hasher  
Compute on-demand a hash of the file content and stores it in the metadata if a metastore is provided


- **/workspace_alias/filehasher_signature/file+**  
  Get the signature of an existing file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.filehasher/rdiffSignature_post_0)
- **/workspace_alias/filehasher_delta/file+**  
  Compute a delta computed against an existing signature. Signature is posted as attached file (userfile_0)  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.filehasher/rdiffDelta_post_1)
- **/workspace_alias/filehasher_patch/file+**  
  Apply a patch to an existing file. Patch is posted as attached file (userfile_0)  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.filehasher/rdiffPath_post_2)
- **/workspace_alias/stat_hash/file+**  
  Returns an fstat() structure including the hash of the file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.filehasher/stat_hash_post_3)

## Git-based Versioning  
Keep tracks of all files modifications using a local Git workspace


- **/workspace_alias/git_history/file+**  
  Load the GIT history of this file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.git/git_history_post_0)
- **/workspace_alias/git_getfile/file+**  
  Download a given version of the file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.git/git_getfile_post_1)
- **/workspace_alias/git_revertfile/file+**  
  Revert a file to a given version in GIT  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.git/git_revertfile_post_2)

## User quota  
Maintain the size of a given directory for each user


- **/workspace_alias/monitor_quota/**  
  Get current quota usage information  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.quota/monitor_quota_post_0)

## Simple Lock  
Manual Locking mechanism to avoid concurrent edition


- **/workspace_alias/sl_lock/file+**  
  Lock/Unlock a file for usage by other users.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.simple_lock/sl_lock_post_0)

## Text Metadata  
Simple metadata implementation stored in a hidden file.


- **/workspace_alias/edit_user_meta/file+**  
  Edit user-defined metadata on a node  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.user/edit_user_meta_post_0)

## Watch Metadata  
Register watched on files or folders


- **/workspace_alias/toggle_watch/file+**  
  Set or unset a monitor watch on the selected node  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/meta.watch/toggle_watch_post_0)