# Synctera::CreditSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_over_limit** | **Integer** | The portion of the posted account balance that exceeds the account&#39;s credit limit, in ISO 4217 minor currency units. | [optional] |
| **amount_past_due** | **Integer** | Any outstanding balance from a previous statement for this account in ISO 4217 minor currency units.  | [optional] |
| **apr** | **Integer** | The annual percentage rate of the credit account, in basis points. | [optional] |
| **balance_for_interest** | **Integer** | Balance on which interest is computed during the time interval covered by the statement. | [optional] |
| **credit_limit** | **Integer** | The credit limit of the credit account, in ISO 4217 minor currency units. Not applicable for charge secured accounts. | [optional] |
| **disclosure** | **String** | A suggested regulatory disclosure to display on the statement. | [optional] |
| **fees** | **Integer** | The total fees charged on the credit account in ISO 4217 minor currency units during the time interval covered by the statement. | [optional] |
| **fees_ytd** | **Integer** | The total fees charged on the credit account in ISO 4217 minor currency units for the year to date. | [optional] |
| **interest** | **Integer** | The total interest charged on the credit account in ISO 4217 minor currency units during the time interval covered by the statement. | [optional] |
| **interest_ytd** | **Integer** | The total interest charged on the credit account in ISO 4217 minor currency units for the year to date. | [optional] |
| **is_past_due** | **Boolean** | Whether or not the credit account is past due on payment. | [optional] |
| **last_payment_date** | **Date** | The date of the last payment received. | [optional] |
| **minimum_payment_due** | **Integer** | The minimum payment amount due by the payment due date in ISO 4217 minor currency units. | [optional] |
| **payment_due_date** | **Date** | The date the next payment is due. | [optional] |
| **payments_received** | **Integer** | The sum of all payments received in ISO 4217 minor currency units. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditSummary.new(
  amount_over_limit: 100000,
  amount_past_due: 100000,
  apr: null,
  balance_for_interest: null,
  credit_limit: null,
  disclosure: We have told the credit bureau(s) about a late payment, missed payment or other default on your account. This information may be reflected in your credit report.,
  fees: null,
  fees_ytd: null,
  interest: null,
  interest_ytd: null,
  is_past_due: null,
  last_payment_date: null,
  minimum_payment_due: null,
  payment_due_date: null,
  payments_received: null
)
```

