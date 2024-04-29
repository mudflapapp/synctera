# Synctera::SyncteraPayVendorConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unique_reference_ids** | **Boolean** | Whether the vendor supports unique reference IDs. If true, synctera pay will check for unique reference IDs. If a transfer with the same reference ID is found, the transfer will be rejected with a duplicate reference ID error.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayVendorConfig.new(
  unique_reference_ids: true
)
```

