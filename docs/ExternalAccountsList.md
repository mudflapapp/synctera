# Synctera::ExternalAccountsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **external_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) | Array of external accounts |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountsList.new(
  next_page_token: a8937a0d,
  external_accounts: null
)
```

