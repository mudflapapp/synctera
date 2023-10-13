# Synctera::AccountRestrictions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_account_out_of_area** | **Boolean** | A flag to indicate whether any of the account holders of the account are out of the supported countries. Can only be set by the Synctera platform.  | [optional] |
| **is_delinquent** | **Boolean** | A flag to indicate whether a credit account is greater than 30 days past due on minimum payments. Delinquent accounts will be unable to spend until overdue amount is paid. Can only be set by the Synctera platform.  | [optional] |
| **is_past_due** | **Boolean** | A flag to indicate whether a credit account is past due on minimum payments.  Can only be set by the Synctera platform.  | [optional] |
| **is_revoked** | **Boolean** | A flag to indicates whether a credit account has been revoked (greater than 90 days past due). Revoked accounts will be unable to spend and  no longer accrue interest.  Can only be set by the Synctera platform.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountRestrictions.new(
  is_account_out_of_area: null,
  is_delinquent: null,
  is_past_due: null,
  is_revoked: null
)
```

