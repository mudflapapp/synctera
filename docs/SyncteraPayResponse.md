# Synctera::SyncteraPayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents |  |
| **currency** | **String** | The currency of the transfer in ISO 4217 format |  |
| **dc_sign** | **String** | Debit or credit sign |  |
| **direction** | [**SyncteraPayDirection**](SyncteraPayDirection.md) |  |  |
| **exchange_details** | [**ExchangeDetails**](ExchangeDetails.md) |  | [optional] |
| **final_external_account_id** | **String** | The ID of the final external account that will be the receiver of the Synctera Pay transfer.  |  |
| **source_data** | **Object** | Additional information to be added to the transfer | [optional] |
| **subtype** | [**SyncteraPaySubtype**](SyncteraPaySubtype.md) |  |  |
| **synctera_pay_network** | **String** | The network of the transfer.  |  |
| **synctera_pay_vendor_id** | **String** | The ID of the vendor that will be used to process the Synctera Pay transfer. | [optional] |
| **customer_id** | **String** | The UUID of the Synctera customer resource that is the originator of the transfer.  | [optional] |
| **destination_account_id** | **String** | The UUID of the Synctera account that is the destination of the transfer. For a transfer originated by the Synctera platform, this will be an external account resource, while for a transfer originated by the external account, this account will be an account resource.  | [optional] |
| **destination_account_owner_name** | **String** | The account owner name of the destination account. | [optional] |
| **effective_date** | **Date** | The effective date of the transaction once it gets posted |  |
| **failed** | **Boolean** | Whether the transfer failed or not. | [optional] |
| **history** | [**Array&lt;Action&gt;**](Action.md) |  | [optional] |
| **id** | **String** | ID of the transfer |  |
| **is_same_day** | **Boolean** | Send the same day (use only is_same_day without specific effective_date). |  |
| **network_status** | [**SyncteraPayNetworkStatus**](SyncteraPayNetworkStatus.md) |  | [optional] |
| **original_reference_id** | **String** | The original reference id of the transfer if it&#39;s a return. | [optional] |
| **originating_account_id** | **String** | The UUID of the Synctera account that is the origination of the transfer. For a transfer originated by the Synctera platform, this will be an account resource, while for a transfer originated by the external account, this will be an external account resource.  | [optional] |
| **originating_account_owner_name** | **String** | The account owner name of the origination account. | [optional] |
| **posting_date** | **Date** | The posting date of the transaction once it gets posted | [optional] |
| **reference_id** | **String** | The reference id of the transfer. |  |
| **status** | [**SyncteraPayStatus**](SyncteraPayStatus.md) |  |  |
| **suspended** | **Boolean** | Whether the transfer is suspended or not. | [optional] |
| **tenant_id** | **String** | The id of the tenant containing the resource.  |  |
| **transaction_id** | **String** | The related transaction id of the transfer. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayResponse.new(
  amount: 10000,
  currency: USD,
  dc_sign: DEBIT,
  direction: null,
  exchange_details: null,
  final_external_account_id: null,
  source_data: null,
  subtype: null,
  synctera_pay_network: WISE,
  synctera_pay_vendor_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 46fec39e-e776-4571-bf90-d0e1d15172fe,
  destination_account_id: fccb4a46-1261-4e91-b622-73b5b946183d,
  destination_account_owner_name: null,
  effective_date: Thu Mar 17 20:00:00 EDT 2022,
  failed: false,
  history: null,
  id: null,
  is_same_day: true,
  network_status: null,
  original_reference_id: null,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  originating_account_owner_name: null,
  posting_date: Thu Mar 17 20:00:00 EDT 2022,
  reference_id: null,
  status: null,
  suspended: false,
  tenant_id: abcdef_ghijkl,
  transaction_id: 45b5246f-ad97-4629-9aac-465b74a05505
)
```

