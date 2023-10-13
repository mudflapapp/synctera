# Synctera::DepositList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **deposits** | [**Array&lt;DepositGet&gt;**](DepositGet.md) | Array of  Remote Check Deposits |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DepositList.new(
  next_page_token: a8937a0d,
  deposits: null
)
```

