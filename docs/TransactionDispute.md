# Synctera::TransactionDispute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | The creation time of the dispute |  |
| **external_case_reference** | **String** | The external case number or id for the dispute (eg: from a vendor such as Marqeta), if one exists. | [optional] |
| **id** | **String** | The unique identifier of the dispute. |  |
| **internal_case_reference** | **String** | The internal case number or id for the dispute in the Synctera platform, if one exists. | [optional] |
| **status** | **String** |  |  |
| **updated** | **Time** | The time the dispute was last updated |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionDispute.new(
  created: null,
  external_case_reference: null,
  id: null,
  internal_case_reference: null,
  status: null,
  updated: null
)
```

