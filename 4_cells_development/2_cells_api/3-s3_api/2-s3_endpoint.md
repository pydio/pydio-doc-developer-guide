
To connect to the Pydio S3 as you would for an amazon s3 bucket, your client will need to be set to use:

- The Pydio Cells url as custom url (typically, default URL points to Amazon servers based on the name of the bucket. Eg : the `johnsmith` bucket is expected to be found at `http://johnsmith.s3.amazonaws.com`)
- The Pydio Cells default bucket named `io`
- The Pydio Cells custom access key and secrets: use the JWT as the API Key, and `gatewaysecret` as the API Secret.
