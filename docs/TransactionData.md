# Synctera::TransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_data** | **Object** | an unstructured json blob representing additional transaction information supplied by the integrator. | [optional] |
| **lines** | [**Array&lt;TransactionLine&gt;**](TransactionLine.md) | The set of accounting entries associated with this transaction. For example, a debit to a customer account will have a corresponding credit in a general ledger account. |  |
| **memo** | **String** |  |  |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionData.new(
  external_data: null,
  lines: null,
  memo: null,
  metadata: null
)
```

