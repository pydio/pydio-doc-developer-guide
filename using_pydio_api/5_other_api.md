Other plugins actions.



## Disclaimer  
Display a disclaimer and force acceptation by user


- **/workspace_alias/validate_disclaimer/validate**  
  Set disclaimer in accepted state or not  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.disclaimer/validate_disclaimer_post_0)
- **/workspace_alias/load_disclaimer/**  
  Return HTML content of the disclaimer  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.disclaimer/load_disclaimer_post_1)

## API Keystore  
Store API keys/token to simplify REST connection


- **/workspace_alias/keystore_generate_auth_token/device**  
  Generate and store a authentication key that can be used by the currently logged user. Used by SDKs talking to REST API to avoid renegociating basic auth on each query.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/authfront.keystore/generateAuthToken_post_0)
- **/workspace_alias/keystore_revoke_tokens/**  
  Revoke current tokens for logged user.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/authfront.keystore/revokeAuthToken_post_1)
- **/workspace_alias/keystore_list_tokens/**  
  List current tokens for logged user.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/authfront.keystore/listAuthToken_post_2)

## Encfs Mount  
Dynamically create/mount/umount an encfs filesystem


- **/workspace_alias/encfs.cypher_folder/dir+**  
  Cypher a folder using EncFS plugin  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/cypher.encfs/encfs.cypher_folder_post_0)
- **/workspace_alias/encfs.uncypher_folder/dir+**  
  Decrypt a folder using EncFS plugin.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/cypher.encfs/encfs.uncypher_folder_post_1)

## DB Storage  
Stores the logs in an SQL database.


- **/workspace_alias/analytic_query/query_name/start/count**  
  Perform an analytics query by name  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/log.sql/analyticQuery_post_0)
- **/workspace_alias/analytic_list_queries/**  
  List available analytics queries  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/log.sql/analyticListQueries_post_1)