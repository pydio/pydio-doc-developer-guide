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