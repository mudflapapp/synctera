# Synctera::SpendControlUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_case** | **Boolean** | If set, create a case for transactions that do not conform to the spend control | [optional] |
| **action_decline** | **Boolean** | If set, decline transactions that do not conform to the spend control | [optional] |
| **amount_limit** | **Integer** | Monetary limit for the spend control in the smallest currency unit (eg cents) | [optional] |
| **direction** | [**SpendControlDirection**](SpendControlDirection.md) |  | [optional] |
| **is_active** | **Boolean** | Indicates if spend control is active | [optional] |
| **merchant_category_codes** | **Array&lt;String&gt;** | merchant category codes for spend control | [optional] |
| **name** | **String** | Name assigned to spend control | [optional] |
| **payment_sub_types** | [**Array&lt;PaymentSubType&gt;**](PaymentSubType.md) | A list of payment sub-types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all sub-types. | [optional] |
| **payment_types** | [**Array&lt;PaymentType&gt;**](PaymentType.md) | A list of payment types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all types of payments. | [optional] |
| **time_range** | [**SpendControlTimeRange**](SpendControlTimeRange.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendControlUpdateRequest.new(
  action_case: null,
  action_decline: null,
  amount_limit: null,
  direction: null,
  is_active: true,
  merchant_category_codes: null,
  name: null,
  payment_sub_types: null,
  payment_types: null,
  time_range: null
)
```

