# Synctera::ExternalAccountVendorData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number_mask** | **String** | The last alphanumeric characters of an account&#39;s official account number. Note that the mask may be non-unique between accounts, and it may also not match the mask that the bank displays to the user.  | [optional] |
| **institution_id** | **String** | The ID of the institution external account belongs | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountVendorData.new(
  account_number_mask: null,
  institution_id: null
)
```

