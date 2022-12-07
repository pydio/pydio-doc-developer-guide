
[Sprig](https://github.com/Masterminds/sprig) provides tons of utilitary functions to be used inside templates.


## abbrev

 Truncate a string with ellipses (`...`)

Parameters:

- max length
- the string

```
abbrev 5 "hello world"
```

The above returns `he...`, since it counts the width of the ellipses against the
maximum length.

## abbrevboth

 Abbreviate both sides:

```
abbrevboth 5 10 "1234 5678 9123"
```

the above produces `...5678...`

It takes:

- left offset
- max length
- the string


## add

 Sum numbers with `add`. Accepts two or more inputs.

```
add 1 2 3
```

## add1

 To increment by 1, use `add1`

## adler32sum

 No documentation for this function

## ago

 The `ago` function returns duration from time.Now in seconds resolution.

```
ago .CreatedAt"
```

returns in `time.Duration` String() format

```
2h34m7s
```

## append

 Append a new item to an existing list, creating a new list.

```
$new = append $myList 6
```

The above would set `$new` to `[1 2 3 4 5 6]`. `$myList` would remain unaltered.

`append` panics if there is a problem while `mustAppend` returns an error to the
template engine if there is a problem.

## atoi

 `atoi`: Convert a string to an integer.

Only `atoi` requires that the input be a specific type. The others will attempt
to convert from any type to the destination type. For example, `int64` can convert
floats to ints, and it can also convert strings to ints.

## b32dec

 Sprig has the following encoding and decoding functions:

- `b32enc`/`b32dec`: Encode or decode with Base32

## b32enc

 Sprig has the following encoding and decoding functions:

- `b32enc`/`b32dec`: Encode or decode with Base32

## b64dec

 Sprig has the following encoding and decoding functions:

- `b64enc`/`b64dec`: Encode or decode with Base64

## b64enc

 Sprig has the following encoding and decoding functions:

- `b64enc`/`b64dec`: Encode or decode with Base64

## base

 Return the last element of a path.

```
base "foo/bar/baz"
```

The above prints "baz"

## biggest

 No documentation for this function

## buildCustomCert

 The `buildCustomCert` function allows customizing the certificate.

It takes the following string parameters:

- A base64 encoded PEM format certificate
- A base64 encoded PEM format private key

It returns a certificate object with the following attributes:

- `Cert`: A PEM-encoded certificate
- `Key`: A PEM-encoded private key

Example:

```
$ca := buildCustomCert "base64-encoded-ca-crt" "base64-encoded-ca-key"
```

Note that the returned object can be passed to the `genSignedCert` function
to sign a certificate using this CA.

## camelcase

 Convert string from snake_case to CamelCase

```
camelcase "http_server"
```

This above will produce `HttpServer`.

## cat

 The `cat` function concatenates multiple strings together into one, separating
them with spaces:

```
cat "hello" "beautiful" "world"
```

The above produces `hello beautiful world`

## ceil

 Returns the greatest float value greater than or equal to input value

`ceil 123.001` will return `124.0`

## clean

 Clean up a path.

```
clean "foo/bar/../baz"
```

The above resolves the `..` and returns `foo/baz`

## coalesce

 The `coalesce` function takes a list of values and returns the first non-empty
one.

```
coalesce 0 1 2
```

The above returns `1`.

This function is useful for scanning through multiple variables or values:

```
coalesce .name .parent.name "Matt"
```

The above will first check to see if `.name` is empty. If it is not, it will return
that value. If it _is_ empty, `coalesce` will evaluate `.parent.name` for emptiness.
Finally, if both `.name` and `.parent.name` are empty, it will return `Matt`.

## compact

 Accepts a list and removes entries with empty values.

```
$list := list 1 "a" "foo" ""
$copy := compact $list
```

`compact` will return a new list with the empty (i.e., "") item removed.

`compact` panics if there is a problem and `mustCompact` returns an error to the
template engine if there is a problem.

## concat

 No documentation for this function

## contains

 Test to see if one string is contained inside of another:

```
contains "cat" "catch"
```

The above returns `true` because `catch` contains `cat`.

## date

 The `date` function formats a date.

Format the date to YEAR-MONTH-DAY:

```
now | date "2006-01-02"
```

Date formatting in Go is a [little bit different](https://pauladamsmith.com/blog/2011/05/go_time.html).

In short, take this as the base date:

```
Mon Jan 2 15:04:05 MST 2006
```

Write it in the format you want. Above, `2006-01-02` is the same date, but
in the format we want.

## dateInZone

 Same as `date`, but with a timezone.

```
dateInZone "2006-01-02" (now) "UTC"
```


## dateModify

 The `dateModify` takes a modification and a date and returns the timestamp.

Subtract an hour and thirty minutes from the current time:

```
now | date_modify "-1.5h"
```

If the modification format is wrong `dateModify` will return the date unmodified. `mustDateModify` will return an error otherwise.

## date_in_zone

 Same as `date`, but with a timezone.

```
dateInZone "2006-01-02" (now) "UTC"
```


## date_modify

 The `dateModify` takes a modification and a date and returns the timestamp.

Subtract an hour and thirty minutes from the current time:

```
now | date_modify "-1.5h"
```

If the modification format is wrong `dateModify` will return the date unmodified. `mustDateModify` will return an error otherwise.

## decryptAES

 No documentation for this function

## deepCopy

 No documentation for this function

## deepEqual

 No documentation for this function

## default

 To set a simple default value, use `default`:

```
default "foo" .Bar
```

In the above, if `.Bar` evaluates to a non-empty value, it will be used. But if
it is empty, `foo` will be returned instead.

The definition of "empty" depends on type:

- Numeric: 0
- String: ""
- Lists: `[]`
- Dicts: `{}`
- Boolean: `false`
- And always `nil` (aka null)

For structs, there is no definition of empty, so a struct will never return the
default.


## derivePassword

 The `derivePassword` function can be used to derive a specific password based on
some shared "master password" constraints. The algorithm for this is
[well specified](https://masterpassword.app/masterpassword-algorithm.pdf).

```
derivePassword 1 "long" "password" "user" "example.com"
```

Note that it is considered insecure to store the parts directly in the template.

## dict

 Creating dictionaries is done by calling the `dict` function and passing it a
list of pairs.

The following creates a dictionary with three items:

```
$myDict := dict "name1" "value1" "name2" "value2" "name3" "value 3"
```


## dir

 Compute dirname of a path. It uses internal `path` library, expecting forward slashes.

Example : 

    # Assuming node path is pydiods1/folder/filename.txt
    {{.Node.Path | dir}}
    => "pydiods1/folder"

## div

 Perform integer division with `div`

## empty

 The `empty` function returns `true` if the given value is considered empty, and
`false` otherwise. The empty values are listed in the `default` section.

```
empty .Foo
```

Note that in Go template conditionals, emptiness is calculated for you. Thus,
you rarely need `if empty .Foo`. Instead, just use `if .Foo`.


## encryptAES

 No documentation for this function

## ext

 Return the file extension.

```
ext "foo.bar"
```

The above returns `.bar`.

## fail

 Unconditionally returns an empty `string` and an `error` with the specified
text. This is useful in scenarios where other conditionals have determined that
template rendering should fail.

```
fail "Please accept the end user license agreement"
```


## first

 To get the head item on a list, use `first`.

`first $myList` returns `1`

`first` panics if there is a problem while `mustFirst` returns an error to the
template engine if there is a problem.

## float64

 `float64`: Convert to a `float64`.

## floor

 Returns the greatest float value less than or equal to input value

`floor 123.9999` will return `123.0`

## genCA

 The `genCA` function generates a new, self-signed x509 certificate authority.

It takes the following parameters:

- Subject's common name (cn)
- Cert validity duration in days

It returns an object with the following attributes:

- `Cert`: A PEM-encoded certificate
- `Key`: A PEM-encoded private key

Example:

```
$ca := genCA "foo-ca" 365
```

Note that the returned object can be passed to the `genSignedCert` function
to sign a certificate using this CA.

## genPrivateKey

 
The `genPrivateKey` function generates a new private key encoded into a PEM
block.

It takes one of the values for its first param:

- `ecdsa`: Generate an elliptic curve DSA key (P256)
- `dsa`: Generate a DSA key (L2048N256)
- `rsa`: Generate an RSA 4096 key

## genSelfSignedCert

 The `genSelfSignedCert` function generates a new, self-signed x509 certificate.

It takes the following parameters:

- Subject's common name (cn)
- Optional list of IPs; may be nil
- Optional list of alternate DNS names; may be nil
- Cert validity duration in days

It returns an object with the following attributes:

- `Cert`: A PEM-encoded certificate
- `Key`: A PEM-encoded private key

Example:

```
$cert := genSelfSignedCert "foo.com" (list "10.0.0.1" "10.0.0.2") (list "bar.com" "bat.com") 365
```

## genSignedCert

 The `genSignedCert` function generates a new, x509 certificate signed by the
specified CA.

It takes the following parameters:

- Subject's common name (cn)
- Optional list of IPs; may be nil
- Optional list of alternate DNS names; may be nil
- Cert validity duration in days
- CA (see `genCA`)

Example:

```
$ca := genCA "foo-ca" 365
$cert := genSignedCert "foo.com" (list "10.0.0.1" "10.0.0.2") (list "bar.com" "bat.com") 365 $ca
```

## getHostByName

 No documentation for this function

## has

 Test to see if a list has a particular element.

```
has 4 $myList
```

The above would return `true`, while `has "hello" $myList` would return false.

`has` panics if there is a problem while `mustHas` returns an error to the
template engine if there is a problem.

## hasKey

 The `hasKey` function returns `true` if the given dict contains the given key.

```
hasKey $myDict "name1"
```

If the key is not found, this returns `false`.

## hasPrefix

 The `hasPrefix` and `hasSuffix` functions test whether a string has a given
prefix or suffix:

```
hasPrefix "cat" "catch"
```

The above returns `true` because `catch` has the prefix `cat`.

## hasSuffix

 The `hasPrefix` and `hasSuffix` functions test whether a string has a given
prefix or suffix:

```
hasPrefix "cat" "catch"
```

The above returns `true` because `catch` has the prefix `cat`.

## hello

 No documentation for this function

## htmlDate

 The `htmlDate` function formats a date for inserting into an HTML date picker
input field.

```
now | htmlDate
```

## htmlDateInZone

 Same as htmlDate, but with a timezone.

```
htmlDateInZone (now) "UTC"
```


## indent

 The `indent` function indents every line in a given string to the specified
indent width. This is useful when aligning multi-line strings:

```
indent 4 $lots_of_text
```

The above will indent every line of text by 4 space characters.

## initial

 This compliments `last` by returning all _but_ the last element.
`initial $myList` returns `[1 2 3 4]`.

`initial` panics if there is a problem while `mustInitial` returns an error to the
template engine if there is a problem.

## initials

 Given multiple words, take the first letter of each word and combine.

```
initials "First Try"
```

The above returns `FT`

## int

 `int`: Convert to an `int` at the system's width.

## int64

 int64`: Convert to an `int64`.

## isAbs

 To check whether a file path is absolute, use `isAbs`.

## join

 Join a list of strings into a single string, with the given separator.

```
list "hello" "world" | join "_"
```

The above will produce `hello_world`

`join` will try to convert non-strings to a string value:

```
list 1 2 3 | join "+"
```

The above will produce `1+2+3`

## kebabcase

 No documentation for this function

## keys

 The `keys` function will return a `list` of all of the keys in one or more `dict`
types. Since a dictionary is _unordered_, the keys will not be in a predictable order.
They can be sorted with `sortAlpha`.

```
keys $myDict | sortAlpha
```

When supplying multiple dictionaries, the keys will be concatenated. Use the `uniq`
function along with `sortAlpha` to get a unqiue, sorted list of keys.

```
keys $myDict $myOtherDict | uniq | sortAlpha

## kindIs

 There are two Kind functions: `kindOf` returns the kind of an object.

```
kindOf "hello"
```

The above would return `string`. For simple tests (like in `if` blocks), the
`isKind` function will let you verify that a value is a particular kind:

```
kindIs "int" 123
```

The above will return `true`

## kindOf

 There are two Kind functions: `kindOf` returns the kind of an object.

```
kindOf "hello"
```

The above would return `string`. For simple tests (like in `if` blocks), the
`isKind` function will let you verify that a value is a particular kind:

```
kindIs "int" 123
```

The above will return `true`

## last

 To get the last item on a list, use `last`:

`last $myList` returns `5`. This is roughly analogous to reversing a list and
then calling `first`.

## list

 No documentation for this function

## lower

 Convert the entire string to lowercase:

```
lower "HELLO"
```

The above returns `hello`

## max

 Return the largest of a series of integers:

This will return `3`:

```
max 1 2 3
```

## merge

 Merge two or more dictionaries into one, giving precedence to the dest dictionary:

```
$newdict := merge $dest $source1 $source2
```

This is a deep merge operation but not a deep copy operation. Nested objects that
are merged are the same instance on both dicts. If you want a deep copy along
with the merge than use the `deepCopy` function along with merging. For example,

```
deepCopy $source | merge $dest
```

`mustMerge` will return an error in case of unsuccessful merge.

## mergeOverwrite

 No documentation for this function

## min

 Return the smallest of a series of integers.

`min 1 2 3` will return `1`

## mod

 Modulo with `mod`

## mul

 Multiply with `mul`. Accepts two or more inputs.

```
mul 1 2 3
```


## nindent

 The `nindent` function is the same as the indent function, but prepends a new
line to the beginning of the string.

```
nindent 4 $lots_of_text
```

The above will indent every line of text by 4 space characters and add a new
line to the beginning.

## nospace

 Remove all whitespace from a string.

```
nospace "hello w o r l d"
```

The above returns `helloworld`

## now

 The current date/time. Use this in conjunction with other date functions.

## omit

 The `omit` function is similar to `pick`, except it returns a new `dict` with all
the keys that _do not_ match the given keys.

```
$new := omit $myDict "name1" "name3"
```

The above returns `{name2: value2}`

## pick

 The `pick` function selects just the given keys out of a dictionary, creating a
new `dict`.

```
$new := pick $myDict "name1" "name2"
```

The above returns `{name1: value1, name2: value2}`

## pluck

 The `pluck` function makes it possible to give one key and multiple maps, and
get a list of all of the matches:

```
pluck "name1" $myDict $myOtherDict
```

The above will return a `list` containing every found value (`[value1 otherValue1]`).

If the give key is _not found_ in a map, that map will not have an item in the
list (and the length of the returned list will be less than the number of dicts
in the call to `pluck`.

If the key is _found_ but the value is an empty value, that value will be
inserted.

A common idiom in Sprig templates is to uses `pluck... | first` to get the first
matching key out of a collection of dictionaries.

## plural

 Pluralize a string.

```
len $fish | plural "one anchovy" "many anchovies"
```

In the above, if the length of the string is 1, the first argument will be
printed (`one anchovy`). Otherwise, the second argument will be printed
(`many anchovies`).

The arguments are:

- singular string
- plural string
- length integer

NOTE: Sprig does not currently support languages with more complex pluralization
rules. And `0` is considered a plural because the English language treats it
as such (`zero anchovies`). The Sprig developers are working on a solution for
better internationalization.

## prepend

 Push an element onto the front of a list, creating a new list.

```
prepend $myList 0
```

The above would produce `[0 1 2 3 4 5]`. `$myList` would remain unaltered.

`prepend` panics if there is a problem while `mustPrepend` returns an error to the
template engine if there is a problem.

## push

 No documentation for this function

## quote

 These functions wrap a string in double quotes (`quote`) or single quotes
(`squote`).

## cat

The `cat` function concatenates multiple strings together into one, separating
them with spaces:

```
cat "hello" "beautiful" "world"
```

The above produces `hello beautiful world`

## randAlpha

 These four functions generate cryptographically secure (uses ```crypto/rand```)
random strings, but with different base character sets:

- `randAlphaNum` uses `0-9a-zA-Z`
- `randAlpha` uses `a-zA-Z`
- `randNumeric` uses `0-9`
- `randAscii` uses all printable ASCII characters

Each of them takes one parameter: the integer length of the string.

```
randNumeric 3
```

The above will produce a random string with three digits.

## randAlphaNum

 These four functions generate cryptographically secure (uses ```crypto/rand```)
random strings, but with different base character sets:

- `randAlphaNum` uses `0-9a-zA-Z`
- `randAlpha` uses `a-zA-Z`
- `randNumeric` uses `0-9`
- `randAscii` uses all printable ASCII characters

Each of them takes one parameter: the integer length of the string.

```
randNumeric 3
```

The above will produce a random string with three digits.

## randAscii

 These four functions generate cryptographically secure (uses ```crypto/rand```)
random strings, but with different base character sets:

- `randAlphaNum` uses `0-9a-zA-Z`
- `randAlpha` uses `a-zA-Z`
- `randNumeric` uses `0-9`
- `randAscii` uses all printable ASCII characters

Each of them takes one parameter: the integer length of the string.

```
randNumeric 3
```

The above will produce a random string with three digits.

## randNumeric

 These four functions generate cryptographically secure (uses ```crypto/rand```)
random strings, but with different base character sets:

- `randAlphaNum` uses `0-9a-zA-Z`
- `randAlpha` uses `a-zA-Z`
- `randNumeric` uses `0-9`
- `randAscii` uses all printable ASCII characters

Each of them takes one parameter: the integer length of the string.

```
randNumeric 3
```

The above will produce a random string with three digits.

## regexFind

 Return the first (left most) match of the regular expression in the input string

```
regexFind "[a-zA-Z][1-9]" "abcd1234"
```

The above produces `d1`

`regexFind` panics if there is a problem and `mustRegexFind` returns an error to the
template engine if there is a problem.

## regexFindAll

 Returns a slice of all matches of the regular expression in the input string.
The last parameter n determines the number of substrings to return, where -1 means return all matches

```
regexFindAll "[2,4,6,8]" "123456789" -1
```

The above produces `[2 4 6 8]`

`regexFindAll` panics if there is a problem and `mustRegexFindAll` returns an error to the
template engine if there is a problem.


## regexMatch

 Returns true if the input string contains any match of the regular expression.

```
regexMatch "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$" "test@acme.com"
```

The above produces `true`

`regexMatch` panics if there is a problem and `mustRegexMatch` returns an error to the
template engine if there is a problem.

## regexReplaceAll

 Returns a copy of the input string, replacing matches of the Regexp with the replacement string replacement.
Inside string replacement, $ signs are interpreted as in Expand, so for instance $1 represents the text of the first submatch

```
regexReplaceAll "a(x*)b" "-ab-axxb-" "${1}W"
```

The above produces `-W-xxW-`

`regexReplaceAll` panics if there is a problem and `mustRegexReplaceAll` returns an error to the
template engine if there is a problem.

## regexReplaceAllLiteral

 Returns a copy of the input string, replacing matches of the Regexp with the replacement string replacement
The replacement string is substituted directly, without using Expand

```
regexReplaceAllLiteral "a(x*)b" "-ab-axxb-" "${1}"
```

The above produces `-${1}-${1}-`

`regexReplaceAllLiteral` panics if there is a problem and `mustRegexReplaceAllLiteral` returns an error to the
template engine if there is a problem.


## regexSplit

 Slices the input string into substrings separated by the expression and returns a slice of the substrings between those expression matches. The last parameter `n` determines the number of substrings to return, where `-1` means return all matches

```
regexSplit "z+" "pizza" -1
```

The above produces `[pi a]`

`regexSplit` panics if there is a problem and `mustRegexSplit` returns an error to the
template engine if there is a problem.


## repeat

 Repeat a string multiple times:

```
repeat 3 "hello"
```

The above returns `hellohellohello`


## replace

 Perform simple string replacement.

It takes three arguments:

- string to replace
- string to replace with
- source string

```
"I Am Henry VIII" | replace " " "-"
```

The above will produce `I-Am-Henry-VIII`

## rest

 To get the tail of the list (everything but the first item), use `rest`.

`rest $myList` returns `[2 3 4 5]`

`rest` panics if there is a problem while `mustRest` returns an error to the
template engine if there is a problem.

## reverse

 Produce a new list with the reversed elements of the given list.

```
reverse $myList
```

The above would generate the list `[5 4 3 2 1]`.

`reverse` panics if there is a problem while `mustReverse` returns an error to the
template engine if there is a problem.

## round

 Returns a float value with the remainder rounded to the given number to digits after the decimal point.

`round 123.555555 3` will return `123.556`

## semver

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

## semverCompare

 A more robust comparison function is provided as `semverCompare`. This version
supports version ranges:

- `semverCompare "1.2.3" "1.2.3"` checks for an exact match
- `semverCompare "^1.2.0" "1.2.3"` checks that the major and minor versions match, and that the patch 
  number of the second version is _greater than or equal to_ the first parameter.

The SemVer functions use the [Masterminds semver library](https://github.com/Masterminds/semver),
from the creators of Sprig.

## Basic Comparisons

There are two elements to the comparisons. First, a comparison string is a list
of space or comma separated AND comparisons. These are then separated by || (OR)
comparisons. For example, `">= 1.2 < 3.0.0 || >= 4.2.3"` is looking for a
comparison that's greater than or equal to 1.2 and less than 3.0.0 or is
greater than or equal to 4.2.3.

The basic comparisons are:

- `=`: equal (aliased to no operator)
- `!=`: not equal
- `>`: greater than
- `<`: less than
- `>=`: greater than or equal to
- `<=`: less than or equal to

_Note, according to the Semantic Version specification pre-releases may not be
API compliant with their release counterpart. It says,_

## Working With Prerelease Versions

Pre-releases, for those not familiar with them, are used for software releases
prior to stable or generally available releases. Examples of prereleases include
development, alpha, beta, and release candidate releases. A prerelease may be
a version such as `1.2.3-beta.1` while the stable release would be `1.2.3`. In the
order of precedence, prereleases come before their associated releases. In this
example `1.2.3-beta.1 < 1.2.3`.

According to the Semantic Version specification prereleases may not be
API compliant with their release counterpart. It says,

> A pre-release version indicates that the version is unstable and might not satisfy the intended compatibility requirements as denoted by its associated normal version.

SemVer comparisons using constraints without a prerelease comparator will skip
prerelease versions. For example, `>=1.2.3` will skip prereleases when looking
at a list of releases while `>=1.2.3-0` will evaluate and find prereleases.

The reason for the `0` as a pre-release version in the example comparison is
because pre-releases can only contain ASCII alphanumerics and hyphens (along with
`.` separators), per the spec. Sorting happens in ASCII sort order, again per the
spec. The lowest character is a `0` in ASCII sort order
(see an [ASCII Table](http://www.asciitable.com/))

Understanding ASCII sort ordering is important because A-Z comes before a-z. That
means `>=1.2.3-BETA` will return `1.2.3-alpha`. What you might expect from case
sensitivity doesn't apply here. This is due to ASCII sort ordering which is what
the spec specifies.

## Hyphen Range Comparisons

There are multiple methods to handle ranges and the first is hyphens ranges.
These look like:

- `1.2 - 1.4.5` which is equivalent to `>= 1.2 <= 1.4.5`
- `2.3.4 - 4.5` which is equivalent to `>= 2.3.4 <= 4.5`

## Wildcards In Comparisons

The `x`, `X`, and `*` characters can be used as a wildcard character. This works
for all comparison operators. When used on the `=` operator it falls
back to the patch level comparison (see tilde below). For example,

- `1.2.x` is equivalent to `>= 1.2.0, < 1.3.0`
- `>= 1.2.x` is equivalent to `>= 1.2.0`
- `<= 2.x` is equivalent to `< 3`
- `*` is equivalent to `>= 0.0.0`

## Tilde Range Comparisons (Patch)

The tilde (`~`) comparison operator is for patch level ranges when a minor
version is specified and major level changes when the minor number is missing.
For example,

- `~1.2.3` is equivalent to `>= 1.2.3, < 1.3.0`
- `~1` is equivalent to `>= 1, < 2`
- `~2.3` is equivalent to `>= 2.3, < 2.4`
- `~1.2.x` is equivalent to `>= 1.2.0, < 1.3.0`
- `~1.x` is equivalent to `>= 1, < 2`

## Caret Range Comparisons (Major)

The caret (`^`) comparison operator is for major level changes once a stable
(1.0.0) release has occurred. Prior to a 1.0.0 release the minor versions acts
as the API stability level. This is useful when comparisons of API versions as a
major change is API breaking. For example,

- `^1.2.3` is equivalent to `>= 1.2.3, < 2.0.0`
- `^1.2.x` is equivalent to `>= 1.2.0, < 2.0.0`
- `^2.3` is equivalent to `>= 2.3, < 3`
- `^2.x` is equivalent to `>= 2.0.0, < 3`
- `^0.2.3` is equivalent to `>=0.2.3 <0.3.0`
- `^0.2` is equivalent to `>=0.2.0 <0.3.0`
- `^0.0.3` is equivalent to `>=0.0.3 <0.0.4`
- `^0.0` is equivalent to `>=0.0.0 <0.1.0`
- `^0` is equivalent to `>=0.0.0 <1.0.0`

## set

 Use `set` to add a new key/value pair to a dictionary.

```
$_ := set $myDict "name4" "value4"
```

Note that `set` _returns the dictionary_ (a requirement of Go template functions),
so you may need to trap the value as done above with the `$_` assignmen

## sha1sum

 The `sha1sum` function receives a string, and computes it's SHA1 digest.

```
sha1sum "Hello world!"
```

## sha256sum

 The `sha256sum` function receives a string, and computes it's SHA256 digest.

```
sha256sum "Hello world!"
```

The above will compute the SHA 256 sum in an "ASCII armored" format that is
safe to print.

## shuffle

 Shuffle a string.

```
shuffle "hello"
```

The above will randomize the letters in `hello`, perhaps producing `oelhl`.

## slice

 No documentation for this function

## snakecase

 Convert string from camelCase to snake_case.

```
snakecase "FirstName"
```

This above will produce `first_name`.

## sortAlpha

 The `sortAlpha` function sorts a list of strings into alphabetical (lexicographical)
order.

It does _not_ sort in place, but returns a sorted copy of the list, in keeping
with the immutability of lists.


## split

 Split a string into a list of strings:

```
splitList "$" "foo$bar$baz"
```

The above will return `[foo bar baz]`

The older `split` function splits a string into a `dict`. It is designed to make
it easy to use template dot notation for accessing members:

```
$a := split "$" "foo$bar$baz"
```

The above produces a map with index keys. `{_0: foo, _1: bar, _2: baz}`

```
$a._0
```

The above produces `foo`

## splitList

 Split a string into a list of strings:

```
splitList "$" "foo$bar$baz"
```

The above will return `[foo bar baz]`

The older `split` function splits a string into a `dict`. It is designed to make
it easy to use template dot notation for accessing members:

```
$a := split "$" "foo$bar$baz"
```

The above produces a map with index keys. `{_0: foo, _1: bar, _2: baz}`

```
$a._0
```

The above produces `foo`

## splitn

 No documentation for this function

## squote

 These functions wrap a string in double quotes (`quote`) or single quotes
(`squote`).

## sub

 To subtract, use `sub`

## substr

 Get a substring from a string. It takes three parameters:

- start (int)
- end (int)
- string (string)

```
substr 0 5 "hello world"
```

The above returns `hello`


## swapcase

 Swap the case of a string using a word based algorithm.

Conversion algorithm:

- Upper case character converts to Lower case
- Title case character converts to Lower case
- Lower case character after Whitespace or at start converts to Title case
- Other Lower case character converts to Upper case
- Whitespace is defined by unicode.IsSpace(char)

```
swapcase "This Is A.Test"
```

This above will produce `tHIS iS a.tEST`.

## ternary

 The `ternary` function takes two values, and a test value. If the test value is
true, the first value will be returned. If the test value is empty, the second
value will be returned. This is similar to the c ternary operator.

```
ternary "foo" "bar" true
```

or

```
true | ternary "foo" "bar"
```

The above returns `"foo"`.


```
ternary "foo" "bar" false
```

or

```
false | ternary "foo" "bar"
```

The above returns `"bar"`.

## title

 Convert to title case:

```
title "hello world"
```

The above returns `Hello World`

## toDate

 `toDate` converts a string to a date. The first argument is the date layout and
the second the date string. If the string can't be convert it returns the zero
value.
`mustToDate` will return an error in case the string cannot be converted.

This is useful when you want to convert a string date to another format
(using pipe). The example below converts "2017-12-31" to "31/12/2017".

```
toDate "2006-01-02" "2017-12-31" | date "02/01/2006"
```

## toDecimal

 No documentation for this function

## toJson

 The `toJson` function encodes an item into a JSON string. If the item cannot be converted to JSON the function will return an empty string.
`mustToJson` will return an error in case the item cannot be encoded in JSON.

```
toJson .Item
```

The above returns JSON string representation of `.Item`.

## toPrettyJson

 The `toPrettyJson` function encodes an item into a pretty (indented) JSON string.

```
toPrettyJson .Item
```

The above returns indented JSON string representation of `.Item`.

## toString

 `toString`: Convert to a string.

## toStrings

 Given a list-like collection, produce a slice of strings.

```
list 1 2 3 | toStrings
```

The above converts `1` to `"1"`, `2` to `"2"`, and so on, and then returns
them as a list.

## trim

 The `trim` function removes space from either side of a string:

```
trim "   hello    "
```

The above produces `hello`

## trimAll

 Remove given characters from the front or back of a string:

```
trimAll "$" "$5.00"
```

The above returns `5.00` (as a string).

## trimPrefix

 Trim just the prefix from a string:

```
trimPrefix "-" "-hello"
```

The above returns `hello`

## trimSuffix

 Trim just the suffix from a string:

```
trimSuffix "-" "hello-"
```

The above returns `hello`

## trimall

 No documentation for this function

## trunc

 Truncate a string (and add no suffix)

```
trunc 5 "hello world"
```

The above produces `hello`.

```
trunc -5 "hello world"
```

The above produces `world`.


## tuple

 No documentation for this function

## typeIs

 `typeIs` is like `kindIs`, but for types: `typeIs "*io.Buffer" $myVal`

**Note:** None of these can test whether or not something implements a given
interface, since doing so would require compiling the interface in ahead of time.

## typeIsLike

 `typeIsLike` works as `typeIs`, except that it also dereferences pointers.

**Note:** None of these can test whether or not something implements a given
interface, since doing so would require compiling the interface in ahead of time.

## typeOf

 typeOf` returns the underlying type of a value: `typeOf $foo`

**Note:** None of these can test whether or not something implements a given
interface, since doing so would require compiling the interface in ahead of time.

## uniq

 Generate a list with all of the duplicates removed.

```
list 1 1 1 2 | uniq
```

The above would produce `[1 2]`

`uniq` panics if there is a problem while `mustUniq` returns an error to the
template engine if there is a problem.

## unixEpoch

 No documentation for this function

## unset

 Given a map and a key, delete the key from the map.

```
$_ := unset $myDict "name4"
```

As with `set`, this returns the dictionary.

Note that if the key is not found, this operation will simply return. No error
will be generated.

## until

 The `until` function builds a range of integers.

```
until 5
```

The above generates the list `[0, 1, 2, 3, 4]`.

This is useful for looping with `range $i, $e := until 5`.

## untilStep

 Like `until`, `untilStep` generates a list of counting integers. But it allows
you to define a start, stop, and step:

```
untilStep 3 6 2
```

The above will produce `[3 5]` by starting with 3, and adding 2 until it is equal
or greater than 6. This is similar to Python's `range` function.

## untitle

 Remove title casing. `untitle "Hello World"` produces `hello world`.

## upper

 Convert the entire string to uppercase:

```
upper "hello"
```

The above returns `HELLO`

## urlJoin

 No documentation for this function

## urlParse

 No documentation for this function

## uuidv4

 Sprig can generate UUID v4 universally unique IDs.

```
uuidv4
```

The above returns a new UUID of the v4 (randomly generated) type.

## values

 No documentation for this function

## without

 The `without` function filters items out of a list.

```
without $myList 3
```

The above would produce `[1 2 4 5]`

Without can take more than one filter:

```
without $myList 1 3 5
```

That would produce `[2 4]`

`without` panics if there is a problem while `mustWithout` returns an error to the
template engine if there is a problem.

## wrap

 Wrap text at a given column count:

```
wrap 80 $someText
```

The above will wrap the string in `$someText` at 80 columns.

## wrapWith

 `wrapWith` works as `wrap`, but lets you specify the string to wrap with.
(`wrap` uses `\n`)

```
wrapWith 5 "\t" "Hello World"
```

The above produces `hello world` (where the whitespace is an ASCII tab
character)
