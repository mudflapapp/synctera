# Synctera::ReturnData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Return reason code, i.e. why is the entry being returned. |  |
| **dishonored_return_code** | **String** | Code of the original dishonored return (without \&quot;R\&quot;). Filled only if this is a contested return. | [optional] |
| **dishonored_return_settlement_date** | **String** | Settlement date of the original dishonored return. Filled only if this is a contested return. Formatted as an ordinal date, a single day-of-year number between 1-366. | [optional] |
| **dishonored_return_trace** | **String** | Trace number of the original dishonored return. Filled only if this is a contested return. | [optional] |
| **field_errors** | **String** | Required for return reason code R69. Contains the code(s) to indicate the field(s) in which erroneous information in the original return is located. | [optional] |
| **original_dfi_no** | **String** | Receiving financial institution of the original entry. |  |
| **original_trace** | **String** | Trace number of the original entry that is being returned. |  |
| **return_code** | **String** | Return reason code of the original return (just the number). Filled only if this is a dishonored return. | [optional] |
| **return_settlement_date** | **String** | Settlement date of the original return. Filled only if this is a dishonored return. Formatted as an ordinal date, a single day-of-year number between 1-366. | [optional] |
| **return_trace** | **String** | Trace number of the original return. Filled only if this is a dishonored return. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ReturnData.new(
  code: R01,
  dishonored_return_code: 69,
  dishonored_return_settlement_date: 256,
  dishonored_return_trace: 123456780000069,
  field_errors: 05,
  original_dfi_no: 364275034,
  original_trace: 123456780000069,
  return_code: 13,
  return_settlement_date: 256,
  return_trace: 123456780000069
)
```

