# Synctera::ExternalAccountTransactionRefreshResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactions_synced** | **Integer** | Number of transactions synced for the access token associated with this external account.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountTransactionRefreshResponse.new(
  transactions_synced: null
)
```

