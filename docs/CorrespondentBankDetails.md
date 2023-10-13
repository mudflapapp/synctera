# Synctera::CorrespondentBankDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_address** | [**Address**](Address.md) |  |  |
| **bank_name** | **String** | The name of the correspondent bank.  |  |
| **swift_code** | **String** | The SWIFT code (also known as BIC code) used for international payments.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CorrespondentBankDetails.new(
  bank_address: null,
  bank_name: Bank of Greece,
  swift_code: BNGRGRAAXXX
)
```

