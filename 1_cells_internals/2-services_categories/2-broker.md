

“Broker” services are generic services that mainly interact with others via the event bus. There are currently 4 of them:

* activity: in charge of persisting the activity streams (see corresponding [CHAPTER](https://pydio.com/en/docs/developer-guide/activity-streams))

* chat : Chat rooms provide a generic real-time discussion mechanism that can be attached to any objects (cells, nodes, etc..). This service is just in charge of the messages persistence, it is tightly coupled with the WebSocket service that listen/broadcast messages to the clients.

* log : Simple log service that indexes JSON logs and make them searchable. This implementation is replacing a more scalable solution that would be using Cells with an ELK stack. See below for more informations about logs.

* mailer : Mailer service can queue and send emails using various protocols: SMTP, local SendMail command, or SendGrid API.