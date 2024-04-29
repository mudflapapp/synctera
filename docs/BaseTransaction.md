# Synctera::BaseTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account uuid associated with the transaction. &#x60;account_id&#x60; and &#x60;internal_account_id&#x60; are mutually exclusive | [optional] |
| **amount** | **Integer** | The total amount of the transaction including both pending and already posted amounts. The value is represented as the smallest denomination of the applicable currency. |  |
| **creation_time** | **Time** | The exact time the transaction was recorded in the ledger |  |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **customer_id** | **String** | The uuid of the customer that initiated the transaction (if any)  | [optional] |
| **dc_sign** | **String** | The &#x60;dc_sign&#x60; represents the direction money was moved. A value of &#x60;DEBIT&#x60; is money moving out of an account, a value of &#x60;CREDIT&#x60; is money moving into an account |  |
| **decline** | [**BaseTransactionDecline**](BaseTransactionDecline.md) |  | [optional] |
| **description** | **String** | A human-friendly description of the transaction, provided by the integrator | [optional] |
| **effective_date** | **Date** | The effective date of the transaction. This usually aligns with network settlement date, which differs between transaction types. The effective date is also used to determine effective daily balances for the purposes of interest calculation. |  |
| **enhanced_transaction** | [**EnhancedTransactionData1**](EnhancedTransactionData1.md) |  | [optional] |
| **force_post** | **Boolean** | Determines whether or not a transaction or auth was \&quot;forced\&quot; or not. A forced transaction skips any account balance checks |  |
| **fraud_risk** | [**FraudRiskData**](FraudRiskData.md) |  | [optional] |
| **group_id** | **String** | The group id of the transaction. Every transaction in the ledger is one entry in a double-entry system and the primary and offset transactions share the same &#x60;group_id&#x60; |  |
| **hold_expiration_time** | **Time** | The date and time any pending amount is expected to be released back to the account. | [optional] |
| **id** | **String** | The unique identifier of the transaction |  |
| **internal_account_id** | **String** | The internal account uuid associated with the transaction. &#x60;account_id&#x60; and &#x60;internal_account_id&#x60; are mutually exclusive | [optional] |
| **last_updated_time** | **Time** | The date and time the transaction was last modified |  |
| **metadata** | **Object** | an unstructured json blob representing additional transaction information supplied by the integrator. | [optional] |
| **partial_hold** | **Boolean** | Determines whether or not the funds on hold were the result of a partial auth or not. If &#x60;true&#x60; the &#x60;pending_amount&#x60; of the transaction will be less than the requested amount. This is primarily used for certain types of card transactions. |  |
| **pending_amount** | **Integer** | The amount amount of the transaction currently authorized or on hold |  |
| **posted_amount** | **Integer** | The amount of the transaction that has been fully posted to the account |  |
| **posted_date** | **Date** | The date the transaction was posted (based on the bank calendar and end-of-day). For transaction with multiple postings, this is the date of the earliest posting. This will be omitted for transactions with a &#x60;posted_amount&#x60; of &#x60;0&#x60;. | [optional] |
| **reference_id** | **String** | An external ID provided by the payment network to represent this transaction. This is not guaranteed to be globally unique. This will always be omitted for internal transfers. | [optional] |
| **status** | [**TransactionStatuses**](TransactionStatuses.md) |  |  |
| **system_description** | **String** | A human-friendly description of the transaction, provided by the Synctera platform | [optional] |
| **transaction_time** | **Time** | The time the transaction occurred. In most cases this will be roughly identical to creation_time, but it can differ in some situations if the payment doesn&#39;t appear in the ledger in real-time. |  |
| **type** | [**TransactionTypes**](TransactionTypes.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BaseTransaction.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  amount: null,
  creation_time: null,
  currency: null,
  customer_id: null,
  dc_sign: null,
  decline: null,
  description: null,
  effective_date: null,
  enhanced_transaction: null,
  force_post: null,
  fraud_risk: null,
  group_id: null,
  hold_expiration_time: null,
  id: null,
  internal_account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: null,
  metadata: null,
  partial_hold: null,
  pending_amount: null,
  posted_amount: null,
  posted_date: null,
  reference_id: null,
  status: null,
  system_description: null,
  transaction_time: null,
  type: null
)
```

