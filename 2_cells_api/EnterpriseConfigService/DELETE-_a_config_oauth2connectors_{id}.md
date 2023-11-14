






 
[Enterprise Only] Delete an oauth2 client  


### Path Parameters

 - **id** (_string, required_) 

 - **type** (_string_) 

 - **name** (_string_) 

 - **configoidc.issuer** (_string_) 

 - **configoidc.clientID** (_string_) 

 - **configoidc.clientSecret** (_string_) 

 - **configoidc.redirectURI** (_string_) 

 - **configoidc.basicAuthUnsupported** (_boolean_) 

 - **configoidc.hostedDomains** (_array_) 

 - **configoidc.scopes** (_array_) 

 - **configoidc.insecureSkipEmailVerified** (_boolean_) 

 - **configoidc.getUserInfo** (_boolean_) 

 - **configoidc.userIDKey** (_string_) 

 - **configoidc.userNameKey** (_string_) 

 - **configsaml.ssoURL** (_string_) 

 - **configsaml.ca** (_string_) 

 - **configsaml.redirectURI** (_string_) 

 - **configsaml.usernameAttr** (_string_) 

 - **configsaml.emailAttr** (_string_) 

 - **configsaml.groupsAttr** (_string_) 

 - **configsaml.caData** (_string_) 

 - **configsaml.insecureSkipSignatureValidation** (_boolean_) 

 - **configsaml.entityIssuer** (_string_) 

 - **configsaml.ssoIssuer** (_string_) 

 - **configsaml.groupsDelim** (_string_) 

 - **configsaml.nameIDPolicyFormat** (_string_) 

 - **configbitbucket.clientID** (_string_) 

 - **configbitbucket.clientSecret** (_string_) 

 - **configbitbucket.redirectURI** (_string_) 

 - **configbitbucket.teams** (_array_) 

 - **configgithub.clientID** (_string_) 

 - **configgithub.clientSecret** (_string_) 

 - **configgithub.redirectURI** (_string_) 

 - **configgithub.loadAllGroups** (_boolean_) 

 - **configgithub.teamNameField** (_string_) 

 - **configgithub.useLoginAsID** (_boolean_) 

 - **configgithub.hostName** (_string_) For GitHub enterprise

 - **configgithub.rootCA** (_string_) 

 - **configgitlab.baseURL** (_string_) 

 - **configgitlab.clientID** (_string_) 

 - **configgitlab.clientSecret** (_string_) 

 - **configgitlab.redirectURI** (_string_) 

 - **configgitlab.groups** (_array_) 

 - **configgitlab.userLoginAsID** (_boolean_) 

 - **configlinkedin.clientID** (_string_) 

 - **configlinkedin.clientSecret** (_string_) 

 - **configlinkedin.redirectURI** (_string_) 

 - **configmicrosoft.clientID** (_string_) 

 - **configmicrosoft.clientSecret** (_string_) 

 - **configmicrosoft.redirectURI** (_string_) 

 - **configmicrosoft.tenant** (_string_) 

 - **configmicrosoft.groups** (_array_) 

 - **configmicrosoft.onlySecurityGroups** (_boolean_) 

 - **configmicrosoft.groupNameFormat** (_string_) 

 - **configmicrosoft.useGroupsAsWhitelist** (_boolean_) 

 - **configldap.ConfigId** (_string_) 

 - **configldap.DomainName** (_string_) 

 - **configldap.Host** (_string_) 

 - **configldap.Connection** (_string_) 

 - **configldap.BindDN** (_string_) 

 - **configldap.BindPW** (_string_) 

 - **configldap.BindAnonymous** (_boolean_) 

 - **configldap.SkipVerifyCertificate** (_boolean_) 

 - **configldap.RootCA** (_string_) 

 - **configldap.RootCAData** (_string_) To be converted to []byte

 - **configldap.PageSize** (_integer_) 

 - **configldap.User.DNs** (_array_) 

 - **configldap.User.Filter** (_string_) 

 - **configldap.User.IDAttribute** (_string_) 

 - **configldap.User.DisplayAttribute** (_string_) 

 - **configldap.User.Scope** (_string_) 

 - **configldap.MemberOfMapping.Mapping.LeftAttribute** (_string_) 

 - **configldap.MemberOfMapping.Mapping.RightAttribute** (_string_) 

 - **configldap.MemberOfMapping.Mapping.RuleString** (_string_) 

 - **configldap.MemberOfMapping.Mapping.RolePrefix** (_string_) 

 - **configldap.MemberOfMapping.GroupFilter.DNs** (_array_) 

 - **configldap.MemberOfMapping.GroupFilter.Filter** (_string_) 

 - **configldap.MemberOfMapping.GroupFilter.IDAttribute** (_string_) 

 - **configldap.MemberOfMapping.GroupFilter.DisplayAttribute** (_string_) 

 - **configldap.MemberOfMapping.GroupFilter.Scope** (_string_) 

 - **configldap.MemberOfMapping.SupportNestedGroup** (_boolean_) 

 - **configldap.MemberOfMapping.RealMemberOf** (_boolean_) 

 - **configldap.MemberOfMapping.RealMemberOfAttribute** (_string_) 

 - **configldap.MemberOfMapping.RealMemberOfValueFormat** (_string_) 

 - **configldap.MemberOfMapping.PydioMemberOfAttribute** (_string_) 

 - **configldap.MemberOfMapping.PydioMemberOfValueFormat** (_string_) 

 - **configldap.RolePrefix** (_string_) 

 - **configldap.Schedule** (_string_) 

 - **configldap.SchedulerDetails** (_string_) 

 - **configldap.SyncOnly** (_boolean_) 

 - **configoauth.baseURL** (_string_) 

 - **configoauth.authorizeURL** (_string_) 

 - **configoauth.tokenURL** (_string_) 

 - **configoauth.userInfoURL** (_string_) 

 - **configoauth.clientID** (_string_) 

 - **configoauth.clientSecret** (_string_) 

 - **configoauth.redirectURI** (_string_) 

 - **configoauth.groups** (_array_) 

 - **configoauth.useLoginAsID** (_boolean_) 

 - **configoauth.useBrokenAuthHeaderProvider** (_boolean_) 

 - **sites** (_array_) 




### Response Example (200)
Response Type /definitions/entOAuth2ConnectorResponse

```
{
  "Success": true
}
```




###### Auto generated by Pydio Cells Enterprise Distribution v4.3.1 on 14-Nov-2023
