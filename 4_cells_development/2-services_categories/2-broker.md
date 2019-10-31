
“Broker” services are generic services that mainly interact with others via the event bus.  
There are currently 4 of them:

- activity: in charge of persisting the activity streams ([see corresponding chapter](https://pydio.com/en/docs/developer-guide/activity-streams))
- chat: chat rooms provide a generic real-time discussion mechanism that can be attached to any objects (cells, nodes, etc..). This service is just in charge of message persistence, it is tightly coupled with the WebSocket service that listens and broadcasts messages to the clients.
- log: simple log service that indexes JSON logs and makes them searchable. This implementation is replacing a more scalable solution that would be using Cells with an ELK stack. See below for more informations about logs.
- mailer: the mailer service can queue and send emails using various protocols: SMTP, local SendMail command, or the SendGrid API.
