# Synctera::ExternalAccountBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Integer** | The amount of funds available to be withdrawn from the account, as determined by the financial institution.  This is an integer in the minor currency unit (e.g. cents): 1025 means $10.25.  | [optional] |
| **creation_time** | **Time** |  | [optional] |
| **currency** | **String** | ISO 4217 alphabetic currency code |  |
| **current** | **Integer** | For a &#x60;DEPOSITORY&#x60; account, this is the total amount of funds in the account.  For a &#x60;CREDIT&#x60; account, this is the amount owing. If negative, the lender owes the account holder.  This is an integer in the minor currency unit (e.g. cents): -2500 means $25.00 owed to the account holder.  | [optional] |
| **last_updated_time** | **Time** | The last time Synctera has fetched this balance from a vendor | [optional] |
| **last_updated_time_vendor** | **Time** | Vendor timestamp of when the balance was last updated on the vendor side | [optional] |
| **limit** | **Integer** | For &#x60;DEPOSITORY&#x60; accounts, this is the pre-arranged overdraft limit, commonly used in Europe. In North America this is typically not set for depository accounts.  For &#x60;CREDIT&#x60; accounts, this is the credit limit on the account.  This is an integer in the minor currency unit (e.g. cents): 10000 means $100.00  | [optional] |
| **transactions_last_updated_time** | **Time** | The last time Synctera has fetched transactions from a vendor | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountBalance.new(
  available: 1025,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  current: -2500,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  last_updated_time_vendor: 2010-05-06T12:23:34.321Z,
  limit: 10000,
  transactions_last_updated_time: 2010-05-06T12:23:34.321Z
)
```

