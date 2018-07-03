
 
To connect to the Pydio S3 as you would for an amazon s3 bucket, your client will need to be set to use :
The Pydio Cells url as custom url (typically, default URL points to Amazon servers based on the name of the bucket. Eg : the `johnsmith` bucket is expected to be found at `http://johnsmith.s3.amazonaws.com`)

* The Pydio Cells default bucket named `io`
* The Pydio Cells custom access key and secrets:
  * In Cells 1.0.1 and later, use the JWT as the API Key, and gatewaysecret as the API Secret.
  * [Legacy] In the first version of Pydio Cells (v1.0.0), use gateway as API Key and gatewaysecret as API Secret. Then add the non standard header `X-Pydio-Bearer` with the JWT as value. 
