## ./cec ls

List files on pydio cells

### Synopsis

List files on Pydio Cells

Use as a normal ls, with additional path to list sub-folders or read info about a node.
You can use the optional -d (--details) flag to display more information, -r (--raw) flag 
to only list found file (& folder) paths or -f (--exists) flag to only check if given path
exists on the server.
Note that you can only use *one* of the three above flags at a time.

# Examples

1/ Listing the content of the personal-files workspace

$ ./cec ls personal-files
+--------+--------------------------+
|  TYPE  |           NAME           |
+--------+--------------------------+
| Folder | personal-files           |
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

$ ./cec ls personal-files/P5021040.jpg -d
Listing: 1 results for personal-files/P5021040.jpg
+------+--------------------------------------+-----------------------------+--------+------------+
| TYPE |                 UUID                 |            NAME             |  SIZE  |  MODIFIED  |
+------+--------------------------------------+-----------------------------+--------+------------+
| File | 98bbd86c-acb9-4b56-a6f3-837609155ba6 | personal-files/P5021040.jpg | 3.1 MB | 5 days ago |
+------+--------------------------------------+-----------------------------+--------+------------+


Will show the metadata for this node (uuid, size, modification date)

3/ Only listing files and folders, one per line.

$ ./cec ls personal-files/P5021040.jpg -r
personal-files/P5021040.jpg

$ ./cec ls personal-files -r
personal-files
Huge Photo-1.jpg
Huge Photo.jpg
IMG_9723.JPG
(...)

4/ Check path existance.

$ ./cec ls personal-files/P5021040.jpg -f
true

$ ./cec ls personal-files/P5021040-not-here -f
false
...




```
./cec ls [flags]
```

### Options

```
  -d, --details   Show more information about files
  -f, --exists    Only check if the passed path exists on the server
  -h, --help      help for ls
  -r, --raw       List only found paths (one per line) with no further info to be able to use returned results in later commands
```

### Options inherited from parent commands

```
  -c, --config string   Path to the configuration file
```

### SEE ALSO

* [./cec](./cec)	 - Connect to a Cells Server using the command line

###### Auto generated by spf13/cobra on 31-Oct-2019