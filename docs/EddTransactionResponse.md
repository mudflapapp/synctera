# Synctera::EddTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_of_funds** | **String** | The source of funds for the transaction. | [optional] |
| **transaction_purpose** | **String** | The purpose of the transaction. | [optional] |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **creation_time** | **Time** |  | [readonly] |
| **deletion_time** | **Time** |  | [readonly] |
| **id** | **String** | EDD record unique identifier | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddTransactionResponse.new(
  source_of_funds: null,
  transaction_purpose: Phone bill,
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  deletion_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

