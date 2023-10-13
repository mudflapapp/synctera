# Synctera::CardProductResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates whether the Card Product is active |  |
| **card_program_id** | **String** | Card Program ID |  |
| **color** | **String** | Color code for dynamic card elements such as PAN and card holder name | [optional] |
| **creation_time** | **Time** | The timestamp representing when the Card Product was created | [readonly] |
| **digital_wallet_tokenization** | [**DigitalWalletTokenization**](DigitalWalletTokenization.md) |  |  |
| **end_date** | **Time** | The time when the Card Product is decommissioned |  |
| **id** | **String** | Card Product ID | [readonly] |
| **image** | **Boolean** | Indicates whether or not there is an overlay image of the card product available | [optional] |
| **image_mode** | [**CardImageMode**](CardImageMode.md) |  | [optional] |
| **issue_without_kyc** | **Boolean** | Allow issuing cards on this product without requiring KYC | [optional] |
| **last_modified_time** | **Time** | The timestamp representing when the Card Product was last modified | [readonly] |
| **name** | **String** | The name of the Card Product |  |
| **orientation** | **String** | Card orientation | [optional] |
| **package_id** | **String** | Card fulfillment provider’s package ID | [optional] |
| **physical_card_format** | [**PhysicalCardFormat**](PhysicalCardFormat.md) |  | [optional] |
| **return_address** | [**Shipping**](Shipping.md) |  | [optional] |
| **start_date** | **Time** | The time when the Card Product goes live |  |
| **three_ds_policy** | [**ThreeDsPolicy**](ThreeDsPolicy.md) |  |  |
| **txn_enhancer** | [**TxnEnhancer**](TxnEnhancer.md) |  | [optional][default to &#39;NONE&#39;] |
| **form** | **String** | PHYSICAL or VIRTUAL. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardProductResponse.new(
  active: null,
  card_program_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  color: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  digital_wallet_tokenization: null,
  end_date: 2050-06-07T21:32:43.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  image: null,
  image_mode: null,
  issue_without_kyc: null,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  name: null,
  orientation: null,
  package_id: null,
  physical_card_format: null,
  return_address: null,
  start_date: 2010-05-06T12:23:34.321Z,
  three_ds_policy: null,
  txn_enhancer: null,
  form: null
)
```

