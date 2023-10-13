# Synctera::AddVendorAccountFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | [**AddVendorAccountsErrorReason**](AddVendorAccountsErrorReason.md) |  |  |
| **reason_description** | **String** | A human-readable message describing the reason for the failure. |  |
| **vendor_account_id** | **String** | The vendor account ID for the account that failed. For Plaid, this is an &#x60;account_id&#x60;.  |  |
| **vendor_error_message** | **String** | The display_message returned by the vendor. Only returned if reason is set to &#x60;PROVIDER_ERROR&#x60;. For Plaid, this is the &#x60;display_message&#x60;.  | [optional] |
| **vendor_request_id** | **String** | A unique identifier for the request from the vendor, which can be used for troubleshooting. Only returned if reason is set to &#x60;PROVIDER_ERROR&#x60;.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddVendorAccountFailure.new(
  reason: null,
  reason_description: null,
  vendor_account_id: blgvvBlXw3cq5GMPwqB6s6q4dLKB9WcVqGDGo,
  vendor_error_message: null,
  vendor_request_id: null
)
```

