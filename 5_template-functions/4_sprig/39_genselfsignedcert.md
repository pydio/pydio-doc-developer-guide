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