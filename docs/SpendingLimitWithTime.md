# Synctera::SpendingLimitWithTime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Maximum amount allowed within the time range. Unit in cents. | [optional] |
| **transactions** | **Integer** | Maximum number of transactions allowed within the time range | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendingLimitWithTime.new(
  amount: null,
  transactions: null
)
```

