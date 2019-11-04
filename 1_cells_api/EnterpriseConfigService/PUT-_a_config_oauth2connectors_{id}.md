






 
[Enterprise Only] Add/Create a new oauth2 client  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**configbitbucket** |  | _#/definitions/authOAuth2ConnectorBitbucketConfig_ |   
**configgithub** |  | _#/definitions/authOAuth2ConnectorGithubConfig_ |   
**configgitlab** |  | _#/definitions/authOAuth2ConnectorGitlabConfig_ |   
**configlinkedin** |  | _#/definitions/authOAuth2ConnectorLinkedinConfig_ |   
**configmicrosoft** |  | _#/definitions/authOAuth2ConnectorMicrosoftConfig_ |   
**configoidc** |  | _#/definitions/authOAuth2ConnectorOIDCConfig_ |   
**configpydio** |  | _#/definitions/authOAuth2ConnectorPydioConfig_ |   
**configsaml** |  | _#/definitions/authOAuth2ConnectorSAMLConfig_ |   
**id** |  | _string_ |   
**name** |  | _string_ |   
**type** |  | _string_ |   


### Body Example
```
{
  "configbitbucket": {
    "clientID": "string",
    "clientSecret": "string",
    "redirectURI": "string",
    "teams": [
      "string"
    ]
  },
  "configgithub": {
    "clientID": "string",
    "clientSecret": "string",
    "hostName": "string",
    "loadAllGroups": true,
    "orgs": [
      {
        "name": "string",
        "teams": [
          "string"
        ]
      }
    ],
    "redirectURI": "string",
    "rootCA": "string",
    "teamNameField": "string",
    "useLoginAsID": true
  },
  "configgitlab": {
    "baseURL": "string",
    "clientID": "string",
    "clientSecret": "string",
    "groups": [
      "string"
    ],
    "redirectURI": "string",
    "userLoginAsID": true
  },
  "configlinkedin": {
    "clientID": "string",
    "clientSecret": "string",
    "redirectURI": "string"
  },
  "configmicrosoft": {
    "clientID": "string",
    "clientSecret": "string",
    "groupNameFormat": "string",
    "groups": [
      "string"
    ],
    "onlySecurityGroups": true,
    "redirectURI": "string",
    "tenant": "string",
    "useGroupsAsWhitelist": true
  },
  "configoidc": {
    "basicAuthUnsupported": true,
    "clientID": "string",
    "clientSecret": "string",
    "getUserInfo": true,
    "hostedDomains": [
      "string"
    ],
    "insecureSkipEmailVerified": true,
    "issuer": "string",
    "redirectURI": "string",
    "scopes": [
      "string"
    ],
    "userIDKey": "string",
    "userNameKey": "string"
  },
  "configpydio": {
    "pydioconnectors": [
      {
        "id": 10,
        "name": "string",
        "type": "string"
      }
    ]
  },
  "configsaml": {
    "ca": "string",
    "caData": "string",
    "emailAttr": "string",
    "entityIssuer": "string",
    "groupsAttr": "string",
    "groupsDelim": "string",
    "insecureSkipSignatureValidation": true,
    "nameIDPolicyFormat": "string",
    "redirectURI": "string",
    "ssoIssuer": "string",
    "ssoURL": "string",
    "usernameAttr": "string"
  },
  "id": "string",
  "name": "string",
  "type": "string"
}
```






### Response Example (200)
Response Type /definitions/entOAuth2ConnectorResponse

```
{
  "Success": true
}
```


