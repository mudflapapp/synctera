# Synctera::TokenList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **digital_wallet_tokens** | [**Array&lt;DigitalWalletTokenResponse&gt;**](DigitalWalletTokenResponse.md) | Array of Digital Wallet Token information of a Card | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TokenList.new(
  digital_wallet_tokens: null
)
```

