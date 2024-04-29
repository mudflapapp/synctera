# Synctera::CreateBatchPaymentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batches** | [**Array&lt;BatchPayment&gt;**](BatchPayment.md) | A collection of batch payments  |  |
| **dry_run** | **Boolean** | Whether or not the batch should be created as a dry run. If the batch is created as a dry run, the batch will not be processed.  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreateBatchPaymentsResponse.new(
  batches: null,
  dry_run: null,
  tenant: abcdef_ghijkl
)
```

