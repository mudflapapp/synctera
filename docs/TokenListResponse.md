# Synctera::TokenListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **digital_wallet_tokens** | [**Array&lt;DigitalWalletTokenResponse&gt;**](DigitalWalletTokenResponse.md) | Array of Digital Wallet Token information of a Card |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TokenListResponse.new(
  next_page_token: a8937a0d,
  digital_wallet_tokens: null
)
```

