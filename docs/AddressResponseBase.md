# Synctera::AddressResponseBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The identifier for the business customer associated with address.  | [optional] |
| **creation_date** | **Time** | Date and time when the address was created. |  |
| **customer_id** | **String** | The identifier for the personal customer associated with address.  | [optional] |
| **is_active** | **Boolean** | Whether the address is active or not |  |
| **last_updated_time** | **Time** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AddressResponseBase.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_date: 2019-01-01T00:00Z,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_active: true,
  last_updated_time: 2010-05-06T12:23:34.321Z
)
```

