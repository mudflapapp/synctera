# Synctera::EddBusiness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **country** | **String** | ISO-3166-1 Alpha-2 country code | [optional] |
| **estimated_revenue** | [**EstimatedRevenue**](EstimatedRevenue.md) |  | [optional] |
| **industry_type** | [**IndustryType**](IndustryType.md) |  | [optional] |
| **negative_news_findings** | **Integer** | The number of negative news findings. | [optional] |
| **recurring_wire_usage** | **Boolean** | True if the customer is expected to send or receive wire transfers at a regular frequency. | [optional] |
| **specific_involvement** | [**SpecificInvolvement**](SpecificInvolvement.md) |  | [optional] |
| **transaction_volume** | [**Array&lt;TransactionVolume&gt;**](TransactionVolume.md) | Array of transaction volumes. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddBusiness.new(
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  country: US,
  estimated_revenue: null,
  industry_type: null,
  negative_news_findings: 3,
  recurring_wire_usage: true,
  specific_involvement: null,
  transaction_volume: null
)
```

