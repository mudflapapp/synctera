# Synctera::InternalTransferResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount (in cents) to transfer from originating account to receiving account. |  |
| **capture_mode** | **String** | Controls when the transfer will take effect. A value of &#x60;IMMEDIATE&#x60; (the default) means that the transfer will be completed immediately. A value of &#x60;MANUAL&#x60; means that the transaction will remain in a \&quot;pending\&quot; state until explicitly completed or cancelled (or the auth expires). | [optional][default to &#39;IMMEDIATE&#39;] |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **expires_at** | **Time** | When &#x60;capture_mode&#x60; is &#x60;MANUAL&#x60;, this field describes when the pending transaction should expire. | [optional] |
| **final_customer_id** | **String** | The customer id of the international customer that receives the final remittance transfer (required for remittance payments). | [optional] |
| **memo** | **String** | A short note to the recipient | [optional] |
| **metadata** | **Object** | Arbitrary key-value metadata to associate with the transaction | [optional] |
| **originating_account_alias** | **String** | An alias representing a GL account to debit. This is alternative to specifying by account id | [optional] |
| **originating_account_customer_id** | **String** | The customer id of the owner of the originating account. | [optional] |
| **originating_account_id** | **String** | The UUID of the account being debited | [optional] |
| **receiving_account_alias** | **String** | An alias representing a GL account to credit. This is an alternative to specifying by account id | [optional] |
| **receiving_account_customer_id** | **String** | The customer id of the owner of the receiving account. | [optional] |
| **receiving_account_id** | **String** | The UUID of the account being credited | [optional] |
| **tenant** | **String** | The tenant associated with this resource, in the form \&quot;&lt;bankid&gt;_&lt;partnerid&gt;\&quot; | [optional] |
| **type** | **String** | The desired transaction type to use for this transfer |  |
| **id** | **String** | The transaction id associated with the transfer |  |
| **status** | **String** | The status of the internal transfer auth. A value of &#x60;PENDING&#x60; indicates that the funds have been reserved and the transaction is ready to be either completed or canceled. A value of &#x60;COMPLETE&#x60; indicates the funds have been successfully moved and no more action can be performed. A value of &#x60;CANCELED&#x60; or &#x60;EXPIRED&#x60; means that the transaction has rolled back and the funds have been returned to the originating account, either by explicitly canceling via the API, or due to the expiry time having passed. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::InternalTransferResponse.new(
  amount: null,
  capture_mode: null,
  currency: USD,
  expires_at: null,
  final_customer_id: null,
  memo: null,
  metadata: null,
  originating_account_alias: ach_suspense,
  originating_account_customer_id: null,
  originating_account_id: null,
  receiving_account_alias: ach_suspense,
  receiving_account_customer_id: null,
  receiving_account_id: null,
  tenant: null,
  type: null,
  id: null,
  status: null
)
```

