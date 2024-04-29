# Synctera::RestrictedApplicationSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fintech_section_id** | **String** | Client supplied section ID | [optional] |
| **pages** | [**Array&lt;RestrictedApplicationPage&gt;**](RestrictedApplicationPage.md) | Pages within the section |  |
| **title** | **String** | Section title |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationSection.new(
  fintech_section_id: null,
  pages: null,
  title: null
)
```

