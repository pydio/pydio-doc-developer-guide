
Pydio Cells exposes two authenticated websocket endpoints sending various messages from the server up to the javascript client.

Endpoints are:

- **/ws/events**: sends most events regarding the tree (nodes added / modified / removed), reflecting the state of the files and folders in real time in the frontend, as well as ACLs/Permissions changes (for e.g. refreshing Workspaces list in real time).
- **/ws/chats**: this websocket point is used for the chat applications embedded in the frontend. It uses the underlying chat microservice along with the internal event bus to broadcast messages to users registered on a given room.  
