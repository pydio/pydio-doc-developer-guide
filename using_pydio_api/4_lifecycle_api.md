<div style="background-color: #fbe9b7;font-size: 14px;">
<span style="background-color: #fae4a6;padding: 10px;">WARNING</span>
<span style="padding: 10px;display: inline-block;">This documentation is for Pydio 8 (PHP), EOL end 2019. Time to move to <a href="https://pydio.com/en/docs/cells/v2/quick-start">Pydio Cells</a>!</span>
</div>

Application objects lifecycle, like current user access rights and preferences, authentication utils, etc. As they are generally not linked to a specific workspace, these actions can be performed using /pydio/ instead of a workspace alias.



## Client Plugin  
Browser-based rich interface. Contains configurations for theming, custom welcome message, etc.


- **/pydio/get_i18n_messages/**  
  Load the list of translation strings  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/gui.ajax/get_i18n_messages_post_0)
- **/pydio/display_doc/doc_file**  
  Load a doc file  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/gui.ajax/display_doc_post_1)

## Avatars  
Get user avatar from Gravatar/Libravatar


- **/pydio/get_avatar_url**  
  Get avatar URL for currently logged user  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.avatar/get_avatar_url_post_0)

## Indexation  
Indexation plugins


- **/pydio/index/file+**  
  Trigger re-indexation of a directory, recursively  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.index/index_post_0)
- **/pydio/check_index_status/**  
  Check the indexation process status.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.index/checkIndexStatus_post_1)

## Mailers  
Core configs for sending emails


- **/pydio/send_mail/**  
  Trigger an email to a user or external email, sent by currently logged user  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.mailer/send_mail_post_0)

## Notification Center  
Handle users watches and notifications


- **/pydio/feed/feed_type/path+**  
  Load an activity feed for the given node. Filtered by what the current user is authorized to see  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.notifications/feed_post_0)
- **/pydio/dismiss_user_alert/alert_id/occurences**  
  Dismiss one or more occurences of alerts  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.notifications/dismiss_user_alert_post_1)

## Message Queuing  
MQ Abstraction for dynamic dispatching


- **/pydio/client_register_channel/channel/client_id**  
  Subscribe to given queue of events.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.mq/client_register_channel_post_0)
- **/pydio/client_unregister_channel/channel/client_id**  
  Subscribe to given queue of events.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.mq/client_unregister_channel_post_1)
- **/pydio/client_consume_channel/channel/client_id**  
  Subscribe to given queue of events.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/core.mq/client_consume_channel_post_2)

## Serialized Files  
Stores the conf data as serialized PHP values on the filesystem.


- **/pydio/state/xPath+**  
  REST equivalent of the get_xml_registry query, to load some non-workspace-specific data based on a registry xPath. Output format can be sent back in JSON (XML by default).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.serial/getAccountData_post_0)
- **/pydio/load_repository_info/**  
  Retrieve some plugins-contributed info about the workspace (e.g. Quota, Sharing status, etc).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.serial/load_repository_info_post_1)
- **/pydio/get_permissions_mask/**  
  Send the permissions mask for the current workspace, if defined.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.serial/get_permissions_mask_post_2)
- **/pydio/user_list_authorized_users/value**  
  List users that are visible to the currently logged users  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.serial/user_list_authorized_users_post_3)

## DB Storage  
Stores the conf data in an SQL database.


- **/pydio/state/xPath+**  
  REST equivalent of the get_xml_registry query, to load some non-workspace-specific data based on a registry xPath. Output format can be sent back in JSON (XML by default).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.sql/getAccountData_post_0)
- **/pydio/load_repository_info/**  
  Retrieve some plugins-contributed info about the workspace (e.g. Quota, Sharing status, etc).  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.sql/load_repository_info_post_1)
- **/pydio/get_permissions_mask/**  
  Send the permissions mask for the current workspace, if defined.  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.sql/get_permissions_mask_post_2)
- **/pydio/user_list_authorized_users/value**  
  List users that are visible to the currently logged users  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/conf.sql/user_list_authorized_users_post_3)