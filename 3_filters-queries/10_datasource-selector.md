

DataSource selector can be used to filter some actions based on a specific aspect of a datasource, or to load a list of DataSources with special criteria.


### Parameters
|Label |Identifier|Type / Allowed Values| Comment |
|---|---|---|---|
|**Name**|Name|string|Lookup DataSource by Name|
|**Is Disabled**|IsDisabled|boolean|Check if DataSource is Disabled or not|
|**Storage Type**|StorageType|Any (ANY),<br/>Local (LOCALFS),<br/>Remote (REMOTE)|Restrict to a specific Storage Type|
|**Peer Address**|PeerAddress|string|Restrict to a specific PeerAddress|
|**Flat Storage**|FlatStorage|boolean|Flat datasources (appeared at version 3) store the files in an "object storage" way, instead of keeping the folders structure|
|**Skip sync on restart**|SkipSyncOnRestart|boolean|Check if this flag is set|
|**Is Versioned**|IsVersioned|boolean|Restrict to DataSource where versioning is enabled|
|**Is Encrypted**|IsEncrypted|boolean|Restrict to DataSource where encryption is enabled|
|**Encryption Mode**|EncryptionMode|Clear (CLEAR),<br/>Master-key (MASTER),<br/>User-key (USER),<br/>User-pwd (USER_PWD)|Along with IsEncrypted, restrict EncryptionMode|
|**Encryption Key**|EncryptionKey|string|Along with IsEncrypted, lookup by encryption key Id|
|**Versioning Policy**|VersioningPolicyName|string|Along with IsVersioned, lookup by versioning policy name|
|**Configuration Key**|StorageConfigurationName|string|Lookup a key in the StorageConfiguration map. Frequently used keys: cellsInternal, folder, normalize (refer to the low-level configuration)|
|**Configuration Value**|StorageConfigurationValue|string|Combined with StorageConfigurationName, value used for comparison|
|**Object Service**|ObjectServiceName|string|Restrict datasource attached to a specific Object service (see Services list)|
|**Not**|Not|boolean|Internal - Negate the query result|

