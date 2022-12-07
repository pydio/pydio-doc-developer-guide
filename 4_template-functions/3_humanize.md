
Template functions used to make numbers mor human-friendly, from the nice [Go-humanize](https://github.com/dustin/go-humanize) package.


## humanBytes

 Produces a human readable representation of an SI size.

    {{82854982 || humanBytes}} 
     => 83 MB

## humanComma

 Produces a string form of the given number in base 10 with commas after every three orders of magnitude.

    {{834142 | humanComma}}
    => 834,142

## humanCommaf

 Produces a string form of the given floating number in base 10 with commas after every three orders of magnitude.

    {{834142.32 | humanCommaf}}
    => 834,142.32
