## Format

Activities are stored in the [Activity Streams 2.0 format](https://www.w3.org/TR/activitystreams-core/). This is a generic JSON-based RFC published by the W3C. This format is used for all activities either sent via the event bus (and then for example sent back to the users via WebSocket), or when listing activities using the Rest API.
Here is an example of a REST call to http://proxy:8083/activity/streams
{
    "@context": "https://www.w3.org/ns/activitystreams",
    "type": "Collection",
    "items": [
        {
            "@context": "https://www.w3.org/ns/activitystreams",
            "type": "Read",
            "id": "/activity-17",
            "name": "File Event",
            "summary": "Document [Athens.jpg](doc://add672fc-6e7852e4-6b98172a-7d3eebaf) was accessed by [new](user://new)",
            "updated": "2017-11-27T16:15:49.000Z",
            "actor": {
                "type": "Person",
                "id": "new",
                "name": "new"
            },
            "object": {
                "type": "Document",
                "id": "add672fc-6e7852e4-6b98172a-7d3eebaf",
                "name": "ds1/extraction/Photos Vacances/Athens.jpg",
                "partOf": {
                    "type": "Collection",
                    "items": [
                        {
                            "type": "Workspace",
                            "id": "18583bcd22c3c2705ef55131e1d809a8",
                            "name": "DS1",
                            "rel": "ds1/extraction/Photos Vacances/Athens.jpg"
                        }
                    ]
                }
            }
        },
        {
     "@context": "https://www.w3.org/ns/activitystreams",
            "type": "Read",
            "id": "/activity-15",
            "name": "File Event",
            "summary": "Folder [Photos Vacances](doc://6jgjyRzPwyfg7tqKhz12m0fuZrwReuuqKWm2) was accessed by [new](user://new)",
            "updated": "2017-11-27T15:13:07.000Z",
            "actor": {
                "type": "Person",
                "id": "new",
                "name": "new"
            },
            "object": {
                "type": "Folder",
                "id": "6jgjyRzPwyfg7tqKhz12m0fuZrwReuuqKWm2",
                "name": "ds1/extraction/Photos Vacances",
                "partOf": {
                    "type": "Collection",
                    "items": [
                        {
                            "type": "Workspace",
                            "id": "18583bcd22c3c2705ef55131e1d809a8",
                            "name": "DS1",
                            "rel": "ds1/extraction/Photos Vacances"
                        }
                    ]
                }
            }
        },
        {
            "@context": "https://www.w3.org/ns/activitystreams",
            "type": "Read",
            "id": "/activity-14",
            "name": "File Event",
            "summary": "Folder [extraction](doc://R8BYGzZXxNxhPgzmh9pBh5Ax3ZB6VjM1ZHHj) was accessed by [new](user://new)",
            "updated": "2017-11-27T15:13:05.000Z",
            "actor": {
                "type": "Person",
                "id": "new",
                "name": "new"
            },
      "object": {
                "type": "Folder",
                "id": "R8BYGzZXxNxhPgzmh9pBh5Ax3ZB6VjM1ZHHj",
                "name": "ds1/extraction",
                "partOf": {
                    "type": "Collection",
                    "items": [
                        {
                            "type": "Workspace",
                            "id": "18583bcd22c3c2705ef55131e1d809a8",
                            "name": "DS1",
                            "rel": "ds1/extraction"
                        }
                    ]
                }
            }
        },
    ],
    "totalItems": 3
}

