# Synctera::InternalAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Generated internal account number | [optional][readonly] |
| **account_type** | [**InternalAccountType**](InternalAccountType.md) |  | [optional] |
| **balances** | [**Array&lt;Balance&gt;**](Balance.md) | A list of balances for internal account based on different type | [optional][readonly] |
| **bank_account_id** | **String** | The ID of the bank account associated with this internal account. It will be auto-filled if the account type has only one matching bank account in the system.  | [optional] |
| **bank_routing** | **String** | Bank routing number | [optional][readonly] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **currency** | **String** | Account currency or account settlement currency. ISO 4217 alphabetic currency code. |  |
| **description** | **String** | A user provided description for the current account | [optional] |
| **gl_type** | **String** | What type of general ledger account this internal account represents.  | [optional] |
| **id** | **String** | Generated ID for internal account | [optional][readonly] |
| **is_system_acc** | **Boolean** | Is a system-controlled internal account. When this field is true, this internal account will be reserved exclusively for internal use by the Synctera platform and any internal transfers to or from this internal account will be declined. | [optional][default to false] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **purpose** | [**InternalAccountPurpose**](InternalAccountPurpose.md) |  | [optional] |
| **status** | **String** |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InternalAccountResponse.new(
  account_number: null,
  account_type: null,
  balances: null,
  bank_account_id: null,
  bank_routing: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  description: null,
  gl_type: null,
  id: null,
  is_system_acc: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  purpose: null,
  status: null,
  tenant: abcdef_ghijkl
)
```

