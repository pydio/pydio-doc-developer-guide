Compute dirname of a path. It uses internal `path` library, expecting forward slashes.

Example : 

    # Assuming node path is pydiods1/folder/filename.txt
    {{.Node.Path | dir}}
    => "pydiods1/folder"