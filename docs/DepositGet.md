# Synctera::DepositGet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** |  | [optional] |
| **date_captured** | **Time** | Date the deposit was captured, in RFC 3339 format |  |
| **date_processed** | **Time** | Date the deposit was processed, in RFC 3339 format |  |
| **deposit_amount** | **Integer** | Amount deposited in ISO 4217 minor currency units |  |
| **id** | **String** | Remote Check Deposit ID |  |
| **last_updated_time** | **Time** |  | [optional] |
| **ocr_account_number** | **String** | Account number of the issuer of the check, included if OCR is successful | [optional] |
| **ocr_check_number** | **String** | The unique check number for this check in the checkbook, included if OCR is successful and there is a check number on the check | [optional] |
| **ocr_routing_number** | **String** | Routing number of the issuing bank, included if OCR is successful | [optional] |
| **status** | **String** | The status of the deposit |  |
| **transaction_id** | **String** | The ID of the transaction associated with this deposit | [optional] |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |
| **account_id** | **String** | The ID of the account |  |
| **back_image_id** | **String** | ID of the uploaded image of the back of the check |  |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **check_amount** | **Integer** | Amount on check in ISO 4217 minor currency units |  |
| **deposit_currency** | **String** | ISO 4217 currency code for the deposit amount |  |
| **front_image_id** | **String** | ID of the uploaded image of the front of the check |  |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DepositGet.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  date_captured: 2010-05-06T12:23:34.321Z,
  date_processed: 2010-05-06T12:23:34.321Z,
  deposit_amount: 12345,
  id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  ocr_account_number: 123456789,
  ocr_check_number: 001,
  ocr_routing_number: 026009593,
  status: null,
  transaction_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  vendor_info: null,
  account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  back_image_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  business_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  check_amount: 12345,
  deposit_currency: USD,
  front_image_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  metadata: null,
  person_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96
)
```

