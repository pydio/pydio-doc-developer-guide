### Overview

The web-based user interface is a Single-Page application written in ReactJS. It directly consumes the various REST APIs provided by Cells to display and manipulate the data.

It uses a web session mechanism that is basically just adding some session-persistence to the JWT authentication, performed server-side. The /frontend/session endpoint is in charge of that. All the other APIs are consumed directly with the JWT value, in a RESTful manner (no sessions).

### APIs usage

JS frontend mostly uses the REST Apis described in the OpenAPI document. In fact, the javascript SDK itself is dynamically generated from this OpenAPI description and the frontend is provided with all clients and models necessary to speak with our REST Apis.

Additionally, the S3 API is used for downloading and uploading actual data. We used S3 Presigned-URLs to create simple GET / PUT urls that are consumable by the browsers http clients (for download, displaying images, uploading, etc...).

It is worth noting that the files listing does not uses the LS-capability of the S3 api but a dedicated rest endpoint, as the S3 protocol does not easily allow to add a lot of metadata along with the objects lists returned.