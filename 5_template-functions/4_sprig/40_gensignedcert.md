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