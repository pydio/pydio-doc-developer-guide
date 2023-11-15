
 Apply sorting to Input messages

### Parameters
|Label (internal name)|Type|Default|Description|
|---|---|---|---|
|**Sorting Direction** (dir)|select, possible values: Ascending (asc),<br/>Descending (desc)|asc|Whether to sort ascending or descending|
|**Input Member** (input)|Possible Values Below|nodes|Which data to sort incoming Input message|
|**&nbsp;&nbsp;&nbsp;&bull; Nodes** (nodes)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Node Field** (nodes-field)|select, possible values: Uuid (string) (Uuid),<br/>Path (string) (Path),<br/>Type (int32) (Type),<br/>Size (int64) (Size),<br/>MTime (int64) (MTime),<br/>Mode (int32) (Mode),<br/>Etag (string) (Etag)|Uuid|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; Users** (users)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- User Field** (users-field)|select, possible values: Uuid (string) (Uuid),<br/>GroupPath (string) (GroupPath),<br/>Login (string) (Login),<br/>Password (string) (Password),<br/>OldPassword (string) (OldPassword),<br/>IsGroup (bool) (IsGroup),<br/>GroupLabel (string) (GroupLabel),<br/>LastConnected (int32) (LastConnected),<br/>PoliciesContextEditable (bool) (PoliciesContextEditable)|Uuid|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; Workspaces** (workspaces)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Workspace Field** (workspaces-field)|select, possible values: UUID (string) (UUID),<br/>Label (string) (Label),<br/>Description (string) (Description),<br/>Slug (string) (Slug),<br/>Scope (int32) (Scope),<br/>LastUpdated (int32) (LastUpdated),<br/>Attributes (string) (Attributes),<br/>PoliciesContextEditable (bool) (PoliciesContextEditable)|UUID|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; Roles** (roles)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Role Field** (roles-field)|select, possible values: Uuid (string) (Uuid),<br/>Label (string) (Label),<br/>IsTeam (bool) (IsTeam),<br/>GroupRole (bool) (GroupRole),<br/>UserRole (bool) (UserRole),<br/>LastUpdated (int32) (LastUpdated),<br/>PoliciesContextEditable (bool) (PoliciesContextEditable),<br/>ForceOverride (bool) (ForceOverride)|Uuid|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; ACLs** (acls)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ACL Field** (acls-field)|select, possible values: ID (string) (ID),<br/>RoleID (string) (RoleID),<br/>WorkspaceID (string) (WorkspaceID),<br/>NodeID (string) (NodeID),<br/>ActionName (string) (ActionName),<br/>ActionValue (string) (ActionValue)|ID|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; Datasources** (datasources)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- DataSource Field** (datasources-field)|select, possible values: Name (string) (Name),<br/>Disabled (bool) (Disabled),<br/>StorageType (int32) (StorageType),<br/>ObjectsServiceName (string) (ObjectsServiceName),<br/>ObjectsHost (string) (ObjectsHost),<br/>ObjectsPort (int32) (ObjectsPort),<br/>ObjectsSecure (bool) (ObjectsSecure),<br/>ObjectsBucket (string) (ObjectsBucket),<br/>ObjectsBaseFolder (string) (ObjectsBaseFolder),<br/>ApiKey (string) (ApiKey),<br/>ApiSecret (string) (ApiSecret),<br/>PeerAddress (string) (PeerAddress),<br/>Watch (bool) (Watch),<br/>FlatStorage (bool) (FlatStorage),<br/>SkipSyncOnRestart (bool) (SkipSyncOnRestart),<br/>EncryptionMode (int32) (EncryptionMode),<br/>EncryptionKey (string) (EncryptionKey),<br/>VersioningPolicyName (string) (VersioningPolicyName),<br/>CreationDate (int32) (CreationDate),<br/>LastSynchronizationDate (int32) (LastSynchronizationDate)|Name|Apply sorting on the selected field|
|**&nbsp;&nbsp;&nbsp;&bull; Activities** (activities)|input|<no value>||
|**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Activity Field** (activities-field)|select, possible values: JsonLdContext (string) (JsonLdContext),<br/>Type (int32) (Type),<br/>Id (string) (Id),<br/>Name (string) (Name),<br/>Summary (string) (Summary),<br/>Markdown (string) (Markdown),<br/>MediaType (string) (MediaType),<br/>Href (string) (Href),<br/>Rel (string) (Rel),<br/>Hreflang (string) (Hreflang),<br/>Height (int32) (Height),<br/>Width (int32) (Width),<br/>FormerType (int32) (FormerType),<br/>Accuracy (float32) (Accuracy),<br/>Altitude (float32) (Altitude),<br/>Latitude (float32) (Latitude),<br/>Longitude (float32) (Longitude),<br/>Radius (float32) (Radius),<br/>Units (string) (Units),<br/>TotalItems (int32) (TotalItems)|JsonLdContext|Apply sorting on the selected field|





