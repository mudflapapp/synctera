# Synctera::Detail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Human-readable description explaining the individual check. | [optional] |
| **label** | **String** | Human-readable grouping describing the aspect of the customer&#39;s identity examined by this check. | [optional] |
| **result** | **String** | The result of the individual check. One of the following: * &#x60;PASS&#x60; – the check passed contributing to a positive outcome (or accepted verification result). * &#x60;WARN&#x60; – the results of the check were inconclusive and might require review. * &#x60;FAIL&#x60; – the check failed and might result in a failing outcome (or rejected verification_result).  | [optional] |
| **vendor_code** | **String** | Machine-readable description of the individual check. This field contains vendor-specific terms and may not be populated in all cases. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Detail.new(
  description: Email address is correlated with the individual&#39;s name,
  label: Email,
  result: PASS,
  vendor_code: R940
)
```

