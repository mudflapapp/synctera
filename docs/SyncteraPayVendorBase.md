# Synctera::SyncteraPayVendorBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**SyncteraPayVendorConfig**](SyncteraPayVendorConfig.md) |  |  |
| **description** | **String** | A description of the vendor. | [optional] |
| **name** | **String** | The name of the vendor. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayVendorBase.new(
  config: null,
  description: Wise is a financial technology company that provides international money transfer services.,
  name: Wise
)
```

