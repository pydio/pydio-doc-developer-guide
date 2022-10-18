List files in your Cells server

### Synopsis


DESCRIPTION

  List files in your Cells server.

SYNTAX

  Use as a normal ls, with additional path to list sub-folders or read info about a node.
  You can use one of the below optional flags: 
   - d (--details) flag to display more information, 
   - r (--raw) flag to only list the paths of found files and folders
   - f (--exists) flag to only check if given path exists on the server.

  Note that you can only use *one* of the three above flags at a time.

EXAMPLES


1/ Listing the content of the personal-files workspace

$ cec ls personal-files
+--------+--------------------------+
|  TYPE  |           NAME           |
+--------+--------------------------+
| Folder | .			            |
| File   | Huge Photo-1.jpg         |
| File   | Huge Photo.jpg           |
| File   | IMG_9723.JPG             |
| File   | P5021040.jpg             |
| Folder | UPLOAD                   |
| File   | anothercopy              |
| File   | cec22                    |
| Folder | recycle_bin              |
| File   | test_crud-1545206681.txt |
| File   | test_crud-1545206846.txt |
| File   | test_file2.txt           |
+--------+--------------------------+

2/ Showing details about a file

$ cec ls personal-files/P5021040.jpg -d
Listing: 1 results for personal-files/P5021040.jpg
+------+--------------------------------------+-----------------------------+--------+------------+
| TYPE |                 UUID                 |            NAME             |  SIZE  |  MODIFIED  |
+------+--------------------------------------+-----------------------------+--------+------------+
| File | 98bbd86c-acb9-4b56-a6f3-837609155ba6 | personal-files/P5021040.jpg | 3.1 MB | 5 days ago |
+------+--------------------------------------+-----------------------------+--------+------------+


Will show the metadata for this node (uuid, size, modification date)

3/ Only listing files and folders, one per line.

$ cec ls personal-files/P5021040.jpg -r
personal-files/P5021040.jpg

$ cec ls personal-files -r
Huge Photo-1.jpg
Huge Photo.jpg
IMG_9723.JPG
(...)

4/ Check path existence.

$ cec ls personal-files/P5021040.jpg -f
true

$ cec ls personal-files/P5021040-not-here -f
false
...



```
cec ls [flags]
```

### Options

```
  -d, --details   Show more information about retrieved objects
  -f, --exists    Check if the passed path exists on the server and return non zero status code if not
  -h, --help      help for ls
  -r, --raw       List found paths (one per line) with no further info to be able to use returned results in later commands
```

### Options inherited from parent commands

```
      --config string     Location of Cells Client's config files, usually /home/bsinou/.config/pydio/cells-client
      --login string      The user login, for Client auth only
      --no_cache          Force token refresh at each call. This might slow down scripts with many calls
      --password string   The user password, for Client auth only
      --skip_keyring      Explicitly tell the tool to *NOT* try to use a keyring, even if present. Warning: sensitive information will be stored in clear text
      --skip_verify       By default the Cells Client verifies the validity of TLS certificates for each communication. This option skips TLS certificate verification
  -t, --token string      A valid Personal Access Token
  -u, --url string        The full URL of the target server
```

### SEE ALSO

* [cec](cec)	 - Connect to a Pydio Cells server using the command line

###### Auto generated by Cells Client v2.2.1 on 18-Oct-2022