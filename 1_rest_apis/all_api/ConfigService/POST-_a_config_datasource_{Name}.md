






 
Create or update a datasource  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**ApiKey** | Corresponding objects service api key | _string_ |   
**ApiSecret** | Corresponding objects service api secret | _string_ |   
**CreationDate** | Data Source creation date | _integer_ |   
**Disabled** | Whether this data source is disabled or running | _boolean_ |   
**EncryptionKey** | Encryption key used for encrypting data | _string_ |   
**EncryptionMode** | Type of encryption applied before sending data to storage | _#/definitions/objectEncryptionMode_ |   
**LastSynchronizationDate** | Data Source last synchronization date | _integer_ |   
**Name** | Name of the data source (max length 34) | _string_ |   
**ObjectsBaseFolder** | Corresponding objects service base folder inside the bucket | _string_ |   
**ObjectsBucket** | Corresponding objects service bucket | _string_ |   
**ObjectsHost** | Corresponding objects service host | _string_ |   
**ObjectsPort** | Corresponding objects service port | _integer_ |   
**ObjectsSecure** | Corresponding objects service connection type | _boolean_ |   
**ObjectsServiceName** | Corresponding objects service name (underlying s3 service) | _string_ |   
**PeerAddress** | Peer address of the data source | _string_ |   
**StorageConfiguration** | List of key values describing storage configuration | _object_ |   
**StorageType** | Type of underlying storage (LOCAL, S3, AZURE, GCS) | _#/definitions/objectStorageType_ |   
**VersioningPolicyName** | Versioning policy describes how files are kept in the versioning queue | _string_ |   
**Watch** | Not implemented, whether to watch for underlying changes on the FS | _boolean_ |   


### Body Example
```
{
  "ApiKey": "string",
  "ApiSecret": "string",
  "CreationDate": 10,
  "Disabled": true,
  "EncryptionKey": "string",
  "EncryptionMode": "string",
  "LastSynchronizationDate": 10,
  "Name": "string",
  "ObjectsBaseFolder": "string",
  "ObjectsBucket": "string",
  "ObjectsHost": "string",
  "ObjectsPort": 10,
  "ObjectsSecure": true,
  "ObjectsServiceName": "string",
  "PeerAddress": "string",
  "StorageConfiguration": {},
  "StorageType": "string",
  "VersioningPolicyName": "string",
  "Watch": true
}
```






### Response Example (200)
Response Type /definitions/objectDataSource

```
{
  "ApiKey": "string",
  "ApiSecret": "string",
  "CreationDate": 10,
  "Disabled": true,
  "EncryptionKey": "string",
  "EncryptionMode": "string",
  "LastSynchronizationDate": 10,
  "Name": "string",
  "ObjectsBaseFolder": "string",
  "ObjectsBucket": "string",
  "ObjectsHost": "string",
  "ObjectsPort": 10,
  "ObjectsSecure": true,
  "ObjectsServiceName": "string",
  "PeerAddress": "string",
  "StorageConfiguration": {},
  "StorageType": "string",
  "VersioningPolicyName": "string",
  "Watch": true
}
```


