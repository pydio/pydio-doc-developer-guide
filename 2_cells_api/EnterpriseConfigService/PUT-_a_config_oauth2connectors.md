






 
[Enterprise Only] Add/Create a new oauth2 client  


### Body Parameters

Name | Description | Type | Required
---|---|---|---
**connectors** |  | _array_ |   


### Body Example
```
{
  "connectors": [
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
      "configldap": {
        "BindAnonymous": true,
        "BindDN": "string",
        "BindPW": "string",
        "ConfigId": "string",
        "Connection": "string",
        "DomainName": "string",
        "Host": "string",
        "MappingRules": [
          {
            "LeftAttribute": "string",
            "RightAttribute": "string",
            "RolePrefix": "string",
            "RuleString": "string"
          }
        ],
        "MemberOfMapping": {
          "GroupFilter": {
            "DNs": [
              "string"
            ],
            "DisplayAttribute": "string",
            "Filter": "string",
            "IDAttribute": "string",
            "Scope": "string"
          },
          "Mapping": {
            "LeftAttribute": "string",
            "RightAttribute": "string",
            "RolePrefix": "string",
            "RuleString": "string"
          },
          "PydioMemberOfAttribute": "string",
          "PydioMemberOfValueFormat": "string",
          "RealMemberOf": true,
          "RealMemberOfAttribute": "string",
          "RealMemberOfValueFormat": "string",
          "SupportNestedGroup": true
        },
        "PageSize": 10,
        "RolePrefix": "string",
        "RootCA": "string",
        "RootCAData": "string",
        "Schedule": "string",
        "SchedulerDetails": "string",
        "SkipVerifyCertificate": true,
        "SyncOnly": true,
        "User": {
          "DNs": [
            "string"
          ],
          "DisplayAttribute": "string",
          "Filter": "string",
          "IDAttribute": "string",
          "Scope": "string"
        }
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
      "configmock": {
        "jsonIdentity": "string"
      },
      "configoauth": {
        "authorizeURL": "string",
        "baseURL": "string",
        "clientID": "string",
        "clientSecret": "string",
        "groups": [
          "string"
        ],
        "redirectURI": "string",
        "tokenURL": "string",
        "useBrokenAuthHeaderProvider": true,
        "useLoginAsID": true,
        "userInfoURL": "string"
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
      "mappingRules": [
        {
          "LeftAttribute": "string",
          "LeftSplit": "string",
          "NoUpdate": true,
          "RightAttribute": "string",
          "RightValueTemplate": "string",
          "RuleString": "string"
        }
      ],
      "name": "string",
      "sites": [
        "string"
      ],
      "type": "string"
    }
  ]
}
```






### Response Example (200)
Response Type /definitions/entOAuth2ConnectorResponse

```
{
  "Success": true
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.4.0-rc2 on 25-Mar-2024
