# Synctera::TransactionLine1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account uuid associated with this transaction line |  |
| **account_no** | **String** | The account number associated with this transaction line |  |
| **amount** | **Integer** | The amount (in cents) of the transaction |  |
| **avail_balance** | **Integer** | The account \&quot;available balance\&quot; at the point in time this (to be deprecated) transaction was posted |  |
| **available_balance** | **Integer** | The account \&quot;available balance\&quot; at the point in time this transaction was posted |  |
| **balance** | **Integer** | The account balance at the point in time this transaction was posted |  |
| **created** | **Time** | The creation date of the transaction |  |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **dc_sign** | [**DcSign**](DcSign.md) |  |  |
| **is_fee** | **Boolean** | Whether or not this line is considered a fee |  |
| **is_gl_acc** | **Boolean** | Whether or not this line represents a GL account |  |
| **is_offset** | **Boolean** | Whether or not this line is considered the \&quot;offset\&quot; line |  |
| **is_primary** | **Boolean** | Whether or not this line is considered the \&quot;primary\&quot; line |  |
| **meta** | **Object** |  |  |
| **network** | **String** | The network this transaction is associated with |  |
| **related_line** | **Integer** |  |  |
| **seq** | **Integer** |  |  |
| **tenant** | **String** | The tenant associated with this transaction, in the form \&quot;&lt;bankid&gt;_&lt;partnerid&gt;\&quot; |  |
| **updated** | **Time** | The date the transaction was last updated |  |
| **uuid** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionLine1.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  account_no: null,
  amount: null,
  avail_balance: null,
  available_balance: null,
  balance: null,
  created: null,
  currency: null,
  dc_sign: null,
  is_fee: null,
  is_gl_acc: null,
  is_offset: null,
  is_primary: null,
  meta: null,
  network: null,
  related_line: null,
  seq: null,
  tenant: null,
  updated: null,
  uuid: null
)
```

