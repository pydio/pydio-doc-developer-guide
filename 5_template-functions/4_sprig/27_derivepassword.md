The `derivePassword` function can be used to derive a specific password based on
some shared "master password" constraints. The algorithm for this is
[well specified](https://masterpassword.app/masterpassword-algorithm.pdf).

```
derivePassword 1 "long" "password" "user" "example.com"
```

Note that it is considered insecure to store the parts directly in the template.