# Synctera::CreateBatchPaymentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** | Whether or not the batch should be created as a dry run. If the batch is created as a dry run, the batch will not be processed.  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource.  | [optional] |
| **transaction_ids** | **Array&lt;String&gt;** | The IDs of the transfers that are part of the batch. These values can be modified by the client before  the batch is in a terminal status.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CreateBatchPaymentsRequest.new(
  dry_run: null,
  tenant: abcdef_ghijkl,
  transaction_ids: null
)
```

