# Synctera::IncomingAch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier for a receiving account. If the entry is in suspense (status &#x3D; \&quot;IN_SUSPENSE\&quot;), this represents the intended customer account, i.e. the account that &#39;account_no&#39; from the ACH entry refers to (if it exists in the Synctera system). If the entry has been posted (status &#x3D; \&quot;POSTED\&quot;), it is the account the transaction was actually posted to. In that case it does not necessarily correspond to the account number in &#39;account_no&#39;.  | [optional] |
| **account_no** | **String** | Receiving account number. This is the account number from the ACH entry, actual account the transaction gets posted to after processing may be different (e.g. suspense account). |  |
| **amount** | **Integer** | Transfer amount in cents ($100 would be 10000) |  |
| **company_entry_description** | **String** | Company Entry Description field in ACH batch header. |  |
| **company_name** | **String** | Company Name field in ACH batch header. |  |
| **dc_sign** | **String** | The type of transaction (debit or credit). An incoming debit pulls money out of the receiving account, a credit is a transfer in. |  |
| **decline_reason** | **String** | Free-form text describing the reason why this entry did not post to the intended account when first processed. | [optional] |
| **effective_date** | **Date** | Effective date of the transaction |  |
| **external_id** | **String** | Transaction ID in the ledger. The transaction may not exist yet in case the entry is a future-dated ACH. | [optional] |
| **iat_info** | [**IatData**](IatData.md) |  | [optional] |
| **id** | **String** |  |  |
| **identification_number** | **String** | Value in this field varies depending on the SEC code. Can contain check serial number, identification number or a name of the originator. |  |
| **is_future_dated** | **Boolean** | Was the effective date in the future when the entry was received? |  |
| **notification_of_change** | [**NocData**](NocData.md) |  | [optional] |
| **originating_routing_number** | **String** | The routing number of the DFI that originated the entry, with check digit included (9 digits in total). |  |
| **outgoing_ach_id** | **String** | ID of the linked outgoing ACH entry. This is filled only for incoming ACH entries that are returns and links to the original outgoing entry that is now being returned. | [optional] |
| **reference_info** | **Array&lt;String&gt;** | Contents of all attached records with addenda 05 (payment related information). Some SEC codes allow multiple instances of addenda 05. | [optional] |
| **return_data** | [**ReturnData**](ReturnData.md) |  | [optional] |
| **sec_code** | **String** | SEC (Standard Entry Class) code of the ACH entry |  |
| **settlement_date** | **Date** | Settlement date of the transaction |  |
| **status** | **String** | Processing status of the incoming entry |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **trace_no** | **String** | Trace number of the ACH entry |  |

## Example

```ruby
require 'synctera'

instance = Synctera::IncomingAch.new(
  account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  account_no: 122455799,
  amount: 10000,
  company_entry_description: PAYROLL,
  company_name: Asdf Finance,
  dc_sign: null,
  decline_reason: Suspected fraud,
  effective_date: Thu Mar 24 17:00:00 PDT 2022,
  external_id: null,
  iat_info: null,
  id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  identification_number: null,
  is_future_dated: null,
  notification_of_change: null,
  originating_routing_number: 364275034,
  outgoing_ach_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  reference_info: null,
  return_data: null,
  sec_code: WEB,
  settlement_date: Thu Mar 24 17:00:00 PDT 2022,
  status: null,
  tenant: abcdef_ghijkl,
  trace_no: 123456780000069
)
```

