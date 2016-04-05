Administration task : users/groups/workspaces provisionning, maintenance tasks, etc... Generally performed using /settings/ as workspace alias.



## Admin Driver  
Access Pydio configuration data.


- **/settings/ls/dir+**  
  List the content of the config. Depending on the path, will return users, workspaces, roles, etc..<br>Sdk name: ls()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/ls_post_0)
- **/settings/admin_search/query/dir+**  
  Remote search implementation, currently only supporting users search.<br>Sdk name: admin_search()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/admin_search_post_1)
- **/settings/stat**  
  To comply with GUI client, always returns true.<br>Sdk name: stat()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/stat_post_2)
- **/settings/list_all_plugins_actions/**  
  Returns a structured JSON object of all plugins and all their available actions<br>Sdk name: list_all_plugins_actions()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/list_all_plugins_actions_post_3)
- **/settings/list_all_plugins_parameters/**  
  Returns a structured JSON object of all plugins and all their available parameter<br>Sdk name: list_all_plugins_parameters()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/list_all_plugins_parameters_post_4)
- **/settings/parameters_to_form_definitions/**  
  Takes in input a list of plugin parameters and builds the corresponding XML to create a standard form.<br>Sdk name: parameters_to_form_definitions()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/parameters_to_form_definitions_post_5)
- **/settings/list_all_repositories/**  
  Returns all repository (output format is XML)<br>Sdk name: list_all_repositories()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/list_all_repositories_post_6)
- **/settings/list_all_repositories_json/**  
  Returns all repository (output format is JSON)<br>Sdk name: list_all_repositories_json()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/list_all_repositories_json_post_7)
- **/settings/list_all_users/**  
  Returns all users<br>Sdk name: list_all_users()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/list_all_users_post_8)
- **/settings/generate_api_docs/version**  
  Generate API docs<br>Sdk name: generate_api_docs()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/generate_api_docs_post_9)
- **/settings/get_plugin_manifest/plugin_id**  
  Send a plugin Manifest file.<br>Sdk name: get_plugin_manifest()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/get_plugin_manifest_post_10)
- **/settings/run_plugin_action/action_plugin_id/action_plugin_method**  
  Execute a class method on a plugin. Used for example for testing a DB connexion.<br>Sdk name: run_plugin_action()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/run_plugin_action_post_11)
- **/settings/create_user/new_user_login/new_user_pwd**  
  Create a user with login and password in the AUTH directory.<br>Sdk name: create_user()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/create_user_post_12)
- **/settings/create_role/role_id**  
  Create an empty role<br>Sdk name: create_role()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/create_role_post_13)
- **/settings/create_group/group_label/group_path+**  
  Create a new group of users<br>Sdk name: create_group()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/create_group_post_14)
- **/settings/user_update_group/file/group_path+**  
  Move an existing user to an existing group<br>Sdk name: user_update_group()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/user_update_group_post_15)
- **/settings/create_repository/json_data**  
  Create a workspace ( = repository, it's the same ) by passing a structured JSON object.<br>Sdk name: create_repository()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/create_repository_post_16)
- **/settings/user_update_role/file/update_role_action/role_id**  
  Add or remove a given role to a set of users. The rest access can only handle one user at a time, using the file parameter.<br>Sdk name: user_update_role()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/user_update_role_post_17)
- **/settings/edit/sub_action**  
  Shortcut for various actions, calling edit with subaction parameter.<br>Sdk name: edit()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/edit_post_18)
- **/settings/edit_repository_label/repository_id/newLabel**  
  Update a workspace label<br>Sdk name: edit_repository_label()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/edit_repository_label_post_19)
- **/settings/save_user_preference/user_id/pref_name_0/pref_value_0**  
  Sets a user preference value. Rest can only take one value, but CLI or http GET can pass many preferences, using _1, _2, _3, etc.<br>Sdk name: save_user_preference()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/save_user_preference_post_20)
- **/settings/meta_source_edit/repository_id/plugId/json_data**  
  Edit an existing meta source parameters.<br>Sdk name: meta_source_edit()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/meta_source_edit_post_21)
- **/settings/meta_source_add/repository_id/plugId/json_data**  
  Add a meta source to a repository, setting its parameters.<br>Sdk name: meta_source_add()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/meta_source_add_post_22)
- **/settings/meta_source_delete/repository_id/plugId**  
  Remove a given meta source from a repository.<br>Sdk name: meta_source_delete()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/meta_source_delete_post_23)
- **/settings/delete/data_type/data_id+**  
  Generic delete action for config driver, used to delete users, workspaces, roles, etc.<br>Sdk name: delete()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/delete_post_24)
- **/settings/user_update_right/repository_id/user_id/right**  
  Update a user access right on a given workspace.<br>Sdk name: user_update_right()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/user_update_right_post_25)
- **/settings/role_update_right/repository_id/role_id/right**  
  Update a role access right on a given workspace.<br>Sdk name: role_update_right()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/access.ajxp_conf/role_update_right_post_26)

## Tasks Scheduler  
Register tasks to be run on a regular basis instead of writing them one by one in cron tab.


- **/settings/scheduler_generateCronExpression**  
  Generate a correct expression to be inserted in Crontab, in order to trigger the {runAll} action on a regular basis.<br>Sdk name: scheduler_generateCronExpression()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_generateCronExpression_post_0)
- **/settings/scheduler_runAll**  
  Run the scheduler: check if some tasks must be run now, and launch them. Generally launched from command line.<br>Sdk name: scheduler_runAll()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_runAll_post_1)
- **/settings/scheduler_loadTask**  
  Returns a JSON representation of the task parameters<br>Sdk name: scheduler_loadTask()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_loadTask_post_2)
- **/settings/scheduler_addTask**  
  Create a new task by posting parameters<br>Sdk name: scheduler_addTask()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_addTask_post_3)
- **/settings/scheduler_runTask**  
  Force running a specific task<br>Sdk name: scheduler_runTask()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_runTask_post_4)
- **/settings/scheduler_removeTask**  
  Remove a given task from scheduler<br>Sdk name: scheduler_removeTask()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_removeTask_post_5)
- **/settings/scheduler_fakeLongTask**  
  Launch a fake long task.<br>Sdk name: scheduler_fakeLongTask()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.scheduler/scheduler_fakeLongTask_post_6)

## Update Engine  
Detect necessary upgrades for Pydio packages.


- **/settings/get_upgrade_path/**  
  Check if there are packages available for upgrade.<br>Sdk name: get_upgrade_path()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.updater/get_upgrade_path_post_0)
- **/settings/display_upgrade_note/**  
  Display upgrade note<br>Sdk name: display_upgrade_note()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.updater/display_upgrade_note_post_1)
- **/settings/perform_upgrade/**  
  Apply the update following available upgrade path.<br>Sdk name: perform_upgrade()  
  [Details](https://pydio.com/en/docs/references/pydio-api#!/action.updater/perform_upgrade_post_2)