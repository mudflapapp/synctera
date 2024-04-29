# Synctera::SyncteraPayVendorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**SyncteraPayVendorConfig**](SyncteraPayVendorConfig.md) |  |  |
| **description** | **String** | A description of the vendor. | [optional] |
| **name** | **String** | The name of the vendor. |  |
| **enabled** | **Boolean** | Whether the vendor is enabled. |  |
| **id** | **String** | Unique identifier for the vendor. |  |
| **tenant_id** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayVendorResponse.new(
  config: null,
  description: Wise is a financial technology company that provides international money transfer services.,
  name: Wise,
  enabled: true,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  tenant_id: abcdef_ghijkl
)
```

