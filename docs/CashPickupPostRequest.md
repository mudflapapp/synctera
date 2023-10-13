# Synctera::CashPickupPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **amount** | **Integer** | The amount (in cents) of the transaction |  |
| **business_id** | **String** |  | [optional] |
| **creation_time** | **Time** |  | [optional][readonly] |
| **currency** | **String** |  | [optional][readonly] |
| **employee_customer_id** | **String** |  | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **last_updated_time** | **Time** |  | [optional][readonly] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **pickup_time** | **Time** | the date when the money was actually picked up | [optional][readonly] |
| **posted_amount** | **Integer** |  | [optional][readonly] |
| **posted_date** | **Date** | The date the transaction was posted. This is the date any money is considered to be added or removed from an account. | [optional][readonly] |
| **reference_id** | **String** | An external ID provided by the partner. This is not guaranteed to be globally unique. |  |
| **scheduled_pickup_date** | **Date** | the date when the money was expected to be picked up | [optional] |
| **transaction_id** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::CashPickupPostRequest.new(
  account_id: 23f71110-3b25-4f3d-a1c3-915d699d8db6,
  amount: 10000,
  business_id: 60c99d99-f6b1-4877-9866-1aeeeb141ce2,
  creation_time: 2050-06-07T21:32:43.321Z,
  currency: USD,
  employee_customer_id: 4ee911a0-45e1-11ed-b878-0242ac120002,
  id: 83bc0aab-188e-4a19-961d-039e022f9234,
  last_updated_time: 2050-06-07T21:32:43.321Z,
  metadata: null,
  pickup_time: 2050-06-07T21:32:43.321Z,
  posted_amount: 12000,
  posted_date: Sat Dec 31 16:00:00 PST 2022,
  reference_id: null,
  scheduled_pickup_date: null,
  transaction_id: 6834b1c8-723d-4225-8dcb-d46deeac91f7
)
```

