The `semver` function parses a string into a Semantic Version:

```
$version := semver "1.2.3-alpha.1+123"
```

_If the parser fails, it will cause template execution to halt with an error._

At this point, `$version` is a pointer to a `Version` object with the following
properties:

- `$version.Major`: The major number (`1` above)
- `$version.Minor`: The minor number (`2` above)
- `$version.Patch`: The patch number (`3` above)
- `$version.Prerelease`: The prerelease (`alpha.1` above)
- `$version.Metadata`: The build metadata (`123` above)
- `$version.Original`: The original version as a string

Additionally, you can compare a `Version` to another `version` using the `Compare`
function:

```
semver "1.4.3" | (semver "1.2.3").Compare
```

The above will return `-1`.

The return values are:

- `-1` if the given semver is greater than the semver whose `Compare` method was called
- `1` if the version who's `Compare` function was called is greater.
- `0` if they are the same version

(Note that in SemVer, the `Metadata` field is not compared during version
comparison operations.)