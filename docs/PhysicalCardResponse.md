# Synctera::PhysicalCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account to which the card will be linked |  |
| **business_id** | **String** | The business ID associated with this card. If no customer_id is supplied, a card can still be issued to a business, but cannot be activated or used until a customer is assigned via the PATCH /cards/{card_id} endpoint. | [optional] |
| **card_product_id** | **String** | The card product to which the card is attached |  |
| **creation_time** | **Time** | The timestamp representing when the card issuance request was made | [readonly] |
| **customer_id** | **String** | The ID of the customer to whom the card will be issued. If a business_id is passed, but a customer_id not passed at the time of card creation the card cannot be activated or used for spend until it&#39;s assigned to a human customer via the PATCH /cards/{card_id} endpoint. If no business_id is passed, a customer_id is required. | [optional] |
| **emboss_name** | [**EmbossName**](EmbossName.md) |  |  |
| **expiration_month** | **String** |  | [optional][readonly] |
| **expiration_time** | **Time** | The timestamp representing when the card would expire at | [optional][readonly] |
| **expiration_year** | **String** |  | [optional][readonly] |
| **id** | **String** | Card ID | [readonly] |
| **is_pin_set** | **Boolean** | indicates whether a pin has been set on the card | [optional][readonly][default to false] |
| **last_four** | **String** | The last 4 digits of the card PAN | [optional][readonly] |
| **last_modified_time** | **Time** | The timestamp representing when the card was last modified at | [optional][readonly] |
| **metadata** | **Hash&lt;String, String&gt;** | Additional data to include in the request structured as key-value pairs | [optional] |
| **reissue_reason** | **String** | This is the reason the card needs to be reissued, if any. The reason determines several behaviours:   - whether or not the new card will use the same PAN as the original card   - the old card will be terminated and if so, when it will be terminated  Reason                 | Same PAN | Terminate Old Card ---------------------- | -------- | ------------------ EXPIRATION             | yes      | on activation LOST                   | no       | immediately STOLEN                 | no       | immediately DAMAGED                | yes      | on activation VIRTUAL_TO_PHYSICAL(*) | yes      | on activation PRODUCT_CHANGE         | yes      | on activation NAME_CHANGE(**)        | yes      | on activation APPEARANCE             | yes      | on activation  (*) VIRTUAL_TO_PHYSICAL is deprecated. Please use PRODUCT_CHANGE whenever reissuing from one card product to another, including from a virtual product to a physical product.  (**) NAME_CHANGE is deprecated. Please use APPEARANCE whenever reissuing in order to change the appearance of a card, such as the printed name or custom image.  For all reasons, the new card will use the same PIN as the original card and digital wallet tokens will reassigned to the new card  | [optional] |
| **reissued_from_id** | **String** | When reissuing a card, specify the card to be replaced here. When getting a card&#39;s details, if this card was issued as a reissuance of another card, this ID refers to the card was replaced. If this field is set, then reissue_reason must also be set.  | [optional] |
| **reissued_to_id** | **String** | If this card was reissued, this ID refers to the card that replaced it. | [optional][readonly] |
| **timestamp_pin_set** | **Time** | Time when the PIN was last set or changed. | [optional][readonly] |
| **type** | [**CardType**](CardType.md) |  |  |
| **form** | **String** | PHYSICAL or VIRTUAL. |  |
| **card_image_id** | **String** | The ID of the custom card image used for this card | [optional] |
| **shipping** | [**Shipping**](Shipping.md) |  |  |
| **card_status** | [**CardStatus**](CardStatus.md) |  |  |
| **memo** | **String** | Additional details about the reason for the status change | [optional] |
| **pending_reasons** | [**CardStatusPendingReasons**](CardStatusPendingReasons.md) |  | [optional] |
| **status_reason** | [**CardStatusReasonCode**](CardStatusReasonCode.md) |  |  |
| **card_fulfillment_status** | [**CardFulfillmentStatus**](CardFulfillmentStatus.md) |  |  |
| **fulfillment_details** | [**FulfillmentDetails**](FulfillmentDetails.md) |  | [optional] |
| **tracking_number** | **String** | This contains all shipping details as provided by the card fulfillment provider, including the tracking number. This field is deprecated. Instead, please use the fulfillment_details object, which includes a field for just the tracking number.  | [optional][readonly] |
| **bin** | **String** | The bin number | [optional] |
| **card_brand** | [**CardBrand**](CardBrand.md) |  |  |
| **physical_card_format** | [**PhysicalCardFormat**](PhysicalCardFormat.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PhysicalCardResponse.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  card_product_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  emboss_name: null,
  expiration_month: 06,
  expiration_time: 2010-05-06T12:23:34.321Z,
  expiration_year: 25,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_pin_set: true,
  last_four: 1234,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  reissue_reason: null,
  reissued_from_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  reissued_to_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  timestamp_pin_set: 2010-05-06T12:23:34.321Z,
  type: null,
  form: null,
  card_image_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  shipping: null,
  card_status: null,
  memo: null,
  pending_reasons: null,
  status_reason: null,
  card_fulfillment_status: null,
  fulfillment_details: null,
  tracking_number: Ship Date [2022-07-19], Shipping Method [UPS Next Day Air Saver]; Tracking Number [1ZW3268W1319325382],
  bin: null,
  card_brand: null,
  physical_card_format: null
)
```

