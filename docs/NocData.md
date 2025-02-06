# Synctera::NocData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_code** | **String** | Change code, indicating which part of the original entry is to be corrected. |  |
| **corrected_data** | **String** | Corrected information from the original entry (e.g. correct account number). |  |
| **original_dfi_no** | **String** | Receiving financial institution of the original entry. |  |
| **original_trace** | **String** | Trace number of the original entry that is being corrected. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::NocData.new(
  change_code: C01,
  corrected_data: 122455799,
  original_dfi_no: 364275034,
  original_trace: 123456780000069
)
```

