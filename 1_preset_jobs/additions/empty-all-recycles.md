This job looks up for specific `recycle_root` ACL that are attached to the root of workspaces. Once they 
are loaded, it loads the corresponding node (ACL refer to nodes via their `UUID` and we need to reload them to get their `Path`), and compute
the recycle path by appending the recycle_bin folder, then calls the "Delete" action.

Default setup makes it run every day at 3AM, but it can also be ran manually.