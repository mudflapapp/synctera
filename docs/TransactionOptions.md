# Synctera::TransactionOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** |  | [optional] |
| **card_expiration_date_yymm** | **String** |  | [optional] |
| **database_transaction_timeout** | **Integer** |  | [optional] |
| **encryption_key_id** | **String** |  | [optional] |
| **is_async** | **Boolean** |  | [optional][default to false] |
| **pre_auth_time_limit** | **String** |  | [optional] |
| **send_expiration_date** | **Boolean** |  | [optional][default to false] |
| **send_track_data** | **Boolean** |  | [optional][default to false] |
| **transaction_id** | **String** |  | [optional] |
| **transaction_timeout_threshold_seconds** | **Integer** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TransactionOptions.new(
  additional_data: null,
  card_expiration_date_yymm: null,
  database_transaction_timeout: null,
  encryption_key_id: null,
  is_async: null,
  pre_auth_time_limit: null,
  send_expiration_date: null,
  send_track_data: null,
  transaction_id: null,
  transaction_timeout_threshold_seconds: null
)
```

