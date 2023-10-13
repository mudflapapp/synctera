# Synctera::LicenseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **licenses** | [**Array&lt;ResponseLicense&gt;**](ResponseLicense.md) | Array of license records | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::LicenseList.new(
  next_page_token: a8937a0d,
  licenses: null
)
```

