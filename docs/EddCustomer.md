# Synctera::EddCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **citizenship_countries** | **Array&lt;String&gt;** | List of countries where the related customer holds citizenship. | [optional] |
| **employment_type** | **String** | The type of employment. | [optional] |
| **income** | [**Income**](Income.md) |  | [optional] |
| **negative_news_findings** | **Integer** | The number of negative news findings. | [optional] |
| **occupation** | **String** | The occupation of the related resource. | [optional] |
| **occupation_industry** | [**IndustryType**](IndustryType.md) |  | [optional] |
| **recurring_direct_deposit** | **Boolean** | True if the customer is expected to use direct deposit at a regular frequency. | [optional] |
| **residence_type** | **String** | The type of residence. | [optional] |
| **residential_expense** | [**ResidentialExpense**](ResidentialExpense.md) |  | [optional] |
| **source_of_wealth** | [**Array&lt;SourceOfWealth&gt;**](SourceOfWealth.md) | The sources of wealth for the customer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddCustomer.new(
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  tenant: abcdef_ghijkl,
  citizenship_countries: null,
  employment_type: null,
  income: null,
  negative_news_findings: 3,
  occupation: null,
  occupation_industry: null,
  recurring_direct_deposit: true,
  residence_type: null,
  residential_expense: null,
  source_of_wealth: null
)
```

