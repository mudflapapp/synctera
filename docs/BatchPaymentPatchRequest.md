# Synctera::BatchPaymentPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batched_transfer_ids** | **Array&lt;String&gt;** | The IDs of the transfers that are part of the batch. These values can be modified by the client before  the batch is in a terminal status.  | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **last_updated_time** | **Time** |  | [readonly] |
| **status** | [**BatchStatus**](BatchStatus.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPaymentPatchRequest.new(
  batched_transfer_ids: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  status: null,
  tenant: abcdef_ghijkl
)
```

