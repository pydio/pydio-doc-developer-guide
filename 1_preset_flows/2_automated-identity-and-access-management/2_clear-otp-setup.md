
Remove Google OTP or Yubikey setup for a user.

[:image:1_preset_flows/capture-clear-otp-setup.png]

Manually triggered job to clear MFA status on a given user. Useful if user has forgotten their information.

### Parameters

|Name|Type|Default|Mandatory|Description|
|----|----|-------|---------|-----------|
|UserLogin|text||true|Specify a user login.|



### Trigger Type
Manual

### JSON Representation

```
{
  "Label": "Clear OTP setup||Remove Google OTP or Yubikey setup for a user||mdi mdi-lock-open",
  "Owner": "pydio.system.user",
  "Actions": [
    {
      "ID": "actions.idm.user-set-attribute",
      "Label": "Reset Google OTP",
      "IdmSelector": {
        "Query": {
          "SubQueries": [
            {
              "type_url": "type.googleapis.com/idm.UserSingleQuery",
              "value": "Chx7ey5Kb2JQYXJhbWV0ZXJzLlVzZXJMb2dpbn19"
            }
          ],
          "Operation": 1
        },
        "Collect": true,
        "Label": "Find Input User"
      },
      "Parameters": {
        "attributeName": "pydio:google_otp_secret",
        "fieldname": "{\"@value\":\"AttributeName\"}"
      },
      "ChainedActions": [
        {
          "ID": "actions.idm.user-set-attribute",
          "Label": "Reset Yubikey Client",
          "Parameters": {
            "attributeName": "pydio:yubikey_client",
            "fieldname": "{\"@value\":\"AttributeName\"}"
          },
          "ChainedActions": [
            {
              "ID": "actions.idm.user-set-attribute",
              "Label": "Reset Yubikey Secret",
              "Parameters": {
                "attributeName": "pydio:yubikey_secret",
                "fieldname": "{\"@value\":\"AttributeName\"}"
              },
              "ChainedActions": [
                {
                  "ID": "actions.idm.store",
                  "Label": "Save User",
                  "Parameters": {
                    "fieldname": "{\"@value\":\"AttributeAnyValue\"}",
                    "objectTypes": "User"
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "Parameters": [
    {
      "Name": "UserLogin",
      "Description": "Specify a user login.",
      "Mandatory": true,
      "Type": "text"
    }
  ]
}
```
