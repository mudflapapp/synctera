# Synctera::EddBusinessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO-3166-1 Alpha-2 country code | [optional] |
| **estimated_revenue** | [**EstimatedRevenue**](EstimatedRevenue.md) |  | [optional] |
| **industry_type** | [**IndustryType**](IndustryType.md) |  | [optional] |
| **negative_news_findings** | **Integer** | The number of negative news findings. | [optional] |
| **recurring_wire_usage** | **Boolean** | True if the customer is expected to send or receive wire transfers at a regular frequency. | [optional] |
| **specific_involvement** | [**SpecificInvolvement**](SpecificInvolvement.md) |  | [optional] |
| **transaction_volume** | [**Array&lt;TransactionVolume&gt;**](TransactionVolume.md) | Array of transaction volumes. | [optional] |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **creation_time** | **Time** |  | [readonly] |
| **deletion_time** | **Time** |  | [readonly] |
| **id** | **String** | EDD record unique identifier | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddBusinessResponse.new(
  country: US,
  estimated_revenue: null,
  industry_type: null,
  negative_news_findings: 3,
  recurring_wire_usage: true,
  specific_involvement: null,
  transaction_volume: null,
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  tenant: abcdef_ghijkl,
  creation_time: 2010-05-06T12:23:34.321Z,
  deletion_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

