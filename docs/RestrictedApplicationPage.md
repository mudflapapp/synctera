# Synctera::RestrictedApplicationPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fintech_page_id** | **String** | Client supplied page id | [optional] |
| **items** | [**Array&lt;RestrictedApplicationItem&gt;**](RestrictedApplicationItem.md) | Items (questions and files) within the page |  |
| **title** | **String** | Page title |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationPage.new(
  fintech_page_id: null,
  items: null,
  title: null
)
```

