# Synctera::Employment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employer_name** | **String** | Name of customer&#39;s employer. |  |
| **employment_from** | **Time** | First day of employment. | [optional] |
| **employment_hours** | **Float** | Number of hours spent per week working for specified employment. | [optional] |
| **employment_income** | **Integer** | Annual income in cents. | [optional] |
| **employment_income_currency** | **String** | The 3-letter alphabetic ISO 4217 code for the currency in which the employee was paid.  | [optional] |
| **employment_info** | **Object** | A collection of arbitrary key-value pairs providing additional information about this employment relationship.  | [optional] |
| **employment_occupation** | **String** | Customer&#39;s work title, profession, or field. | [optional] |
| **employment_to** | **Time** | Last day of employment. | [optional] |
| **id** | **String** | Unique ID for this employment relationship. | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::Employment.new(
  employer_name: ABC, Inc.,
  employment_from: 2010-05-06T12:23:34.321Z,
  employment_hours: 37.5,
  employment_income: 5000000,
  employment_income_currency: USD,
  employment_info: null,
  employment_occupation: clerk,
  employment_to: 2010-05-06T12:23:34.321Z,
  id: null
)
```

