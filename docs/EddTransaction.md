# Synctera::EddTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **source_of_funds** | **String** | The source of funds for the transaction. | [optional] |
| **transaction_purpose** | **String** | The purpose of the transaction. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddTransaction.new(
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  tenant: abcdef_ghijkl,
  source_of_funds: null,
  transaction_purpose: Phone bill
)
```

