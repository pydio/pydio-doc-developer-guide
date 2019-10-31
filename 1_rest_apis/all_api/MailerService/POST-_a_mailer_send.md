






 
Send an email to a user or any email address  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**Attachments** | List of attachments | _array_ |   
**Cc** | List of target users to put in CC | _array_ |   
**ContentHtml** | HTML content used for the body | _string_ |   
**ContentMarkdown** | Markdown content used for the body | _string_ |   
**ContentPlain** | Plain-text content used for the body, if not set will be generated from the ContentHtml | _string_ |   
**DateSent** | Date of sending | _string_ |   
**From** | User object used to compute the From header | _#/definitions/mailerUser_ |   
**Retries** | Number of retries after failed attempts (used internally) | _integer_ |   
**Sender** | User object used to compute the Sender header | _#/definitions/mailerUser_ |   
**Subject** | String used as subject for the email | _string_ |   
**TemplateData** | Key/values to pass to the template | _object_ |   
**TemplateId** | Mail Template Id refers to predefined templates | _string_ |   
**ThreadIndex** | Not used, could be used to create conversations | _string_ |   
**ThreadUuid** | Not used, could be used to create conversations | _string_ |   
**To** | List of target users to send the mail to | _array_ |   
**sendErrors** | Errors stacked on failed attempts | _array_ |   


### Body Example
```
{
  "Attachments": [
    "string"
  ],
  "Cc": [
    {
      "Address": "string",
      "Language": "string",
      "Name": "string",
      "Uuid": "string"
    }
  ],
  "ContentHtml": "string",
  "ContentMarkdown": "string",
  "ContentPlain": "string",
  "DateSent": "string",
  "From": {
    "Address": "string",
    "Language": "string",
    "Name": "string",
    "Uuid": "string"
  },
  "Retries": 10,
  "Sender": {
    "Address": "string",
    "Language": "string",
    "Name": "string",
    "Uuid": "string"
  },
  "Subject": "string",
  "TemplateData": {},
  "TemplateId": "string",
  "ThreadIndex": "string",
  "ThreadUuid": "string",
  "To": [
    {
      "Address": "string",
      "Language": "string",
      "Name": "string",
      "Uuid": "string"
    }
  ],
  "sendErrors": [
    "string"
  ]
}
```






### Response Example (200)
Response Type /definitions/mailerSendMailResponse

```
{
  "Success": true
}
```


