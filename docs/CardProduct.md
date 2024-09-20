# Synctera::CardProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form** | **String** | PHYSICAL or VIRTUAL. |  |
| **active** | **Boolean** | Indicates whether the Card Product is active |  |
| **bin_country** | **String** | ISO-3166-1 Alpha-2 country code | [optional] |
| **bypass_risk_errors** | **Boolean** | Allow bypassing risk engine errors. | [optional] |
| **card_brand** | [**CardBrand**](CardBrand.md) |  | [optional] |
| **card_category** | [**CardCategory**](CardCategory.md) |  | [optional] |
| **card_fulfillment_country** | **String** | ISO-3166-1 Alpha-2 country code | [optional] |
| **card_fulfillment_provider** | [**CardFulfillmentProvider**](CardFulfillmentProvider.md) |  | [optional] |
| **card_program_id** | **String** | Card Program ID |  |
| **card_type** | [**CardProgramType**](CardProgramType.md) |  | [optional] |
| **color** | **String** | Color code for dynamic card elements such as PAN and card holder name | [optional] |
| **creation_time** | **Time** | The timestamp representing when the Card Product was created | [optional][readonly] |
| **cross_border_enabled** | **Boolean** | Enable/Disable cross border transaction - transaction will be automatically declined when merchant country is different than BIN country when disabled. Cross-Border transaction are disabled by default.  | [optional][default to false] |
| **digital_wallet_tokenization** | [**DigitalWalletTokenization**](DigitalWalletTokenization.md) |  | [optional] |
| **end_date** | **Time** | The time when the Card Product is decommissioned | [optional] |
| **id** | **String** | Card Product ID | [optional][readonly] |
| **image** | **Boolean** | Indicates whether or not there is an overlay image of the card product available | [optional] |
| **image_mode** | [**CardImageMode**](CardImageMode.md) |  | [optional] |
| **issue_without_kyc** | **Boolean** | Allow issuing cards on this product without requiring KYC | [optional] |
| **l2l3_enabled** | **Boolean** | Enable/Disable l2l3 transaction - L2l3 transaction are disabled by default.  | [optional][default to false] |
| **last_modified_time** | **Time** | The timestamp representing when the Card Product was last modified | [optional][readonly] |
| **name** | **String** | The name of the Card Product |  |
| **notification_language** | [**NotificationLanguage**](NotificationLanguage.md) |  | [optional] |
| **orientation** | **String** | Card orientation | [optional] |
| **package_id** | **String** | Card fulfillment provider’s package ID | [optional] |
| **physical_card_format** | [**PhysicalCardFormat**](PhysicalCardFormat.md) |  | [optional] |
| **return_address** | [**Shipping**](Shipping.md) |  | [optional] |
| **start_date** | **Time** | The time when the Card Product goes live |  |
| **txn_enhancer** | [**TxnEnhancer**](TxnEnhancer.md) |  | [optional][default to &#39;NONE&#39;] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardProduct.new(
  form: null,
  active: null,
  bin_country: US,
  bypass_risk_errors: null,
  card_brand: null,
  card_category: null,
  card_fulfillment_country: US,
  card_fulfillment_provider: null,
  card_program_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  card_type: null,
  color: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  cross_border_enabled: null,
  digital_wallet_tokenization: null,
  end_date: 2050-06-07T21:32:43.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  image: null,
  image_mode: null,
  issue_without_kyc: null,
  l2l3_enabled: null,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  name: null,
  notification_language: null,
  orientation: null,
  package_id: null,
  physical_card_format: null,
  return_address: null,
  start_date: 2010-05-06T12:23:34.321Z,
  txn_enhancer: null
)
```

