# Synctera::SpendControlCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_case** | **Boolean** | If set, create a case for transactions that do not conform to the spend control |  |
| **action_decline** | **Boolean** | If set, decline transactions that do not conform to the spend control |  |
| **amount_limit** | **Integer** | Monetary limit for the spend control in the smallest currency unit (eg cents) |  |
| **creation_time** | **Time** | The timestamp representing when the spend control was created | [optional][readonly] |
| **direction** | [**SpendControlDirection**](SpendControlDirection.md) |  |  |
| **id** | **String** | Spend Control ID | [optional][readonly] |
| **is_active** | **Boolean** | Indicates if spend control is active |  |
| **last_modified_time** | **Time** | The timestamp representing when the spend control was last modified | [optional][readonly] |
| **managed_by** | [**ManagedByTypes**](ManagedByTypes.md) |  | [optional] |
| **merchant_category_codes** | **Array&lt;String&gt;** | merchant category codes for spend control | [optional] |
| **name** | **String** | Name assigned to spend control |  |
| **payment_sub_types** | [**Array&lt;PaymentSubType&gt;**](PaymentSubType.md) | A list of payment sub-types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all sub-types. | [optional] |
| **payment_types** | [**Array&lt;PaymentType&gt;**](PaymentType.md) | A list of payment types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all types of payments. | [optional] |
| **time_range** | [**SpendControlTimeRange**](SpendControlTimeRange.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendControlCreationRequest.new(
  action_case: null,
  action_decline: null,
  amount_limit: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  direction: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_active: true,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  managed_by: null,
  merchant_category_codes: null,
  name: null,
  payment_sub_types: null,
  payment_types: null,
  time_range: null
)
```

