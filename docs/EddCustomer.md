# Synctera::EddCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount earned at the specified frequency. For example, $112.35 USD is represented as 11235 cents). | [optional] |
| **currency** | **String** | The currency in ISO 4217 format. | [optional] |
| **frequency** | [**Frequency**](Frequency.md) |  | [optional] |
| **additional_questions** | [**Array&lt;Question&gt;**](Question.md) | Additional questions regarding the related resource | [optional] |
| **case_id** | **Integer** | The ID of the case related to this EDD record | [optional] |
| **reason** | **String** | The reason for this EDD record to be requested |  |
| **related_resource_id** | **String** | related resource UUID |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **employment_type** | **String** | The type of employment. | [optional] |
| **income** | [**Income**](Income.md) |  | [optional] |
| **occupation** | **String** | The occupation of the related resource. | [optional] |
| **occupation_industry** | [**IndustryType**](IndustryType.md) |  | [optional] |
| **residence_type** | **String** | The type of residence. | [optional] |
| **residential_expense** | [**ResidentialExpense**](ResidentialExpense.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EddCustomer.new(
  amount: 1000,
  currency: USD,
  frequency: null,
  additional_questions: null,
  case_id: null,
  reason: null,
  related_resource_id: null,
  related_resource_type: null,
  employment_type: null,
  income: null,
  occupation: null,
  occupation_industry: null,
  residence_type: null,
  residential_expense: null
)
```

