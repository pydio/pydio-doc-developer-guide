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