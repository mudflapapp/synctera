# Synctera::CardTransactionSimulationsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**simulate_authorization**](CardTransactionSimulationsApi.md#simulate_authorization) | **POST** /cards/transaction_simulations/authorization | Simulate authorization |
| [**simulate_authorization_advice**](CardTransactionSimulationsApi.md#simulate_authorization_advice) | **POST** /cards/transaction_simulations/authorization/advice | Simulate authorization advice |
| [**simulate_balance_inquiry**](CardTransactionSimulationsApi.md#simulate_balance_inquiry) | **POST** /cards/transaction_simulations/financial/balance_inquiry | Simulate balance inquiry |
| [**simulate_clearing**](CardTransactionSimulationsApi.md#simulate_clearing) | **POST** /cards/transaction_simulations/clearing | Simulate clearing or refund |
| [**simulate_financial**](CardTransactionSimulationsApi.md#simulate_financial) | **POST** /cards/transaction_simulations/financial | Simulate financial |
| [**simulate_financial_advice**](CardTransactionSimulationsApi.md#simulate_financial_advice) | **POST** /cards/transaction_simulations/financial/advice | Simulate financial advice |
| [**simulate_original_credit**](CardTransactionSimulationsApi.md#simulate_original_credit) | **POST** /cards/transaction_simulations/financial/original_credit | Simulate OCT |
| [**simulate_reversal**](CardTransactionSimulationsApi.md#simulate_reversal) | **POST** /cards/transaction_simulations/reversal | Simulate reversal |
| [**simulate_withdrawal**](CardTransactionSimulationsApi.md#simulate_withdrawal) | **POST** /cards/transaction_simulations/financial/withdrawal | Simulate ATM withdrawal |
| [**simulatel2l3**](CardTransactionSimulationsApi.md#simulatel2l3) | **POST** /cards/transaction_simulations/clearing/l2l3 | Simulate L2l3 |


## simulate_authorization

> Object simulate_authorization(opts)

Simulate authorization

Simulate an `authorization` type transaction by including the `card_token` and other authorization details in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
opts = {
  auth_request_model: Synctera::AuthRequestModel.new({amount: 37, card_id: 'card_id_example', mid: 'mid_example'}) # AuthRequestModel | Authorization details
}

begin
  # Simulate authorization
  result = api_instance.simulate_authorization(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_authorization: #{e}"
end
```

#### Using the simulate_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_authorization_with_http_info(opts)

```ruby
begin
  # Simulate authorization
  data, status_code, headers = api_instance.simulate_authorization_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_request_model** | [**AuthRequestModel**](AuthRequestModel.md) | Authorization details | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_authorization_advice

> Object simulate_authorization_advice(opts)

Simulate authorization advice

An authorization advice allows an amount to be decreased after the authorization. This endpoint allows you to simulate post-swipe adjustments.  Simulate an `authorization.advice` type transaction by including the `original_transaction_token` and other authorization details in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
opts = {
  authorization_advice_model: Synctera::AuthorizationAdviceModel.new({amount: 37, original_transaction_id: 'original_transaction_id_example'}) # AuthorizationAdviceModel | Authorization advice details
}

begin
  # Simulate authorization advice
  result = api_instance.simulate_authorization_advice(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_authorization_advice: #{e}"
end
```

#### Using the simulate_authorization_advice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_authorization_advice_with_http_info(opts)

```ruby
begin
  # Simulate authorization advice
  data, status_code, headers = api_instance.simulate_authorization_advice_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_authorization_advice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_advice_model** | [**AuthorizationAdviceModel**](AuthorizationAdviceModel.md) | Authorization advice details | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_balance_inquiry

> Object simulate_balance_inquiry(balance_inquiry_request_model)

Simulate balance inquiry

Simulate a `pindebit.balanceinquiry` type transaction by sending a POST request to the `/simulate/financial/balanceinquiry` endpoint. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
balance_inquiry_request_model = Synctera::BalanceInquiryRequestModel.new({account_type: 'checking', card_acceptor: Synctera::CardAcceptorModel.new, card_id: 'card_id_example', mid: 'mid_example'}) # BalanceInquiryRequestModel | Balance inquiry details

begin
  # Simulate balance inquiry
  result = api_instance.simulate_balance_inquiry(balance_inquiry_request_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_balance_inquiry: #{e}"
end
```

#### Using the simulate_balance_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_balance_inquiry_with_http_info(balance_inquiry_request_model)

```ruby
begin
  # Simulate balance inquiry
  data, status_code, headers = api_instance.simulate_balance_inquiry_with_http_info(balance_inquiry_request_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_balance_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_inquiry_request_model** | [**BalanceInquiryRequestModel**](BalanceInquiryRequestModel.md) | Balance inquiry details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_clearing

> Object simulate_clearing(opts)

Simulate clearing or refund

Simulate an `authorization.clearing` type transaction by including the `original_transaction_token` and `amount` in your request. To simulate a refund type transaction, set the `is_refund` field to true. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
opts = {
  clearing_model: Synctera::ClearingModel.new({amount: 37, original_transaction_id: 'original_transaction_id_example'}) # ClearingModel | Transaction clearing or refund details
}

begin
  # Simulate clearing or refund
  result = api_instance.simulate_clearing(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_clearing: #{e}"
end
```

#### Using the simulate_clearing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_clearing_with_http_info(opts)

```ruby
begin
  # Simulate clearing or refund
  data, status_code, headers = api_instance.simulate_clearing_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_clearing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clearing_model** | [**ClearingModel**](ClearingModel.md) | Transaction clearing or refund details | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_financial

> Object simulate_financial(financial_request_model)

Simulate financial

A \"financial\" is a transaction message class that includes ATM transactions, PIN-debit transactions, and balance inquiries.  Simulate a `pindebit` type transaction by including the `card_token` and `amount` in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
financial_request_model = Synctera::FinancialRequestModel.new({amount: 37, card_acceptor: Synctera::CardAcceptorModel.new, card_id: 'card_id_example', mid: 'mid_example'}) # FinancialRequestModel | Financial details

begin
  # Simulate financial
  result = api_instance.simulate_financial(financial_request_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_financial: #{e}"
end
```

#### Using the simulate_financial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_financial_with_http_info(financial_request_model)

```ruby
begin
  # Simulate financial
  data, status_code, headers = api_instance.simulate_financial_with_http_info(financial_request_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_financial_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **financial_request_model** | [**FinancialRequestModel**](FinancialRequestModel.md) | Financial details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_financial_advice

> Object simulate_financial_advice(authorization_advice_model)

Simulate financial advice

Simulate a financial advice by including the `original_transaction_token` and other authorization details in JSON format in the body of the request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
authorization_advice_model = Synctera::AuthorizationAdviceModel.new({amount: 37, original_transaction_id: 'original_transaction_id_example'}) # AuthorizationAdviceModel | Financial advice details

begin
  # Simulate financial advice
  result = api_instance.simulate_financial_advice(authorization_advice_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_financial_advice: #{e}"
end
```

#### Using the simulate_financial_advice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_financial_advice_with_http_info(authorization_advice_model)

```ruby
begin
  # Simulate financial advice
  data, status_code, headers = api_instance.simulate_financial_advice_with_http_info(authorization_advice_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_financial_advice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_advice_model** | [**AuthorizationAdviceModel**](AuthorizationAdviceModel.md) | Financial advice details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_original_credit

> Object simulate_original_credit(original_credit_request_model)

Simulate OCT

This Original Credit Transaction (OCT) enables the cardholder to receive funds on the specified card from an external source via the card network. Use this endpoint to simulate a transaction that is similar to a wire transfer and not linked to any purchase.  Simulate an OCT by including the `card_token`, `amount`, `mid`, and `type` in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
original_credit_request_model = Synctera::OriginalCreditRequestModel.new({amount: 37, card_id: 'card_id_example', mid: 'mid_example', type: 'account_to_account'}) # OriginalCreditRequestModel | OCT details

begin
  # Simulate OCT
  result = api_instance.simulate_original_credit(original_credit_request_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_original_credit: #{e}"
end
```

#### Using the simulate_original_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_original_credit_with_http_info(original_credit_request_model)

```ruby
begin
  # Simulate OCT
  data, status_code, headers = api_instance.simulate_original_credit_with_http_info(original_credit_request_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_original_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_credit_request_model** | [**OriginalCreditRequestModel**](OriginalCreditRequestModel.md) | OCT details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_reversal

> Object simulate_reversal(reversal_model)

Simulate reversal

A reversal releases the hold that was placed on account funds by an authorization, thus returning the funds to the account.  Simulate an `authorization.reversal` type transaction by including the `original_transaction_token` and `amount` in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
reversal_model = Synctera::ReversalModel.new({amount: 37, original_transaction_id: 'original_transaction_id_example'}) # ReversalModel | Reversal details

begin
  # Simulate reversal
  result = api_instance.simulate_reversal(reversal_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_reversal: #{e}"
end
```

#### Using the simulate_reversal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_reversal_with_http_info(reversal_model)

```ruby
begin
  # Simulate reversal
  data, status_code, headers = api_instance.simulate_reversal_with_http_info(reversal_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_reversal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reversal_model** | [**ReversalModel**](ReversalModel.md) | Reversal details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulate_withdrawal

> Object simulate_withdrawal(withdrawal_request_model)

Simulate ATM withdrawal

Simulate a `pindebit.atm.withdrawal` type transaction by including the `card_token` and `amount` in your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
withdrawal_request_model = Synctera::WithdrawalRequestModel.new({amount: 37, card_id: 'card_id_example', mid: 'mid_example'}) # WithdrawalRequestModel | ATM withdrawal details

begin
  # Simulate ATM withdrawal
  result = api_instance.simulate_withdrawal(withdrawal_request_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_withdrawal: #{e}"
end
```

#### Using the simulate_withdrawal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulate_withdrawal_with_http_info(withdrawal_request_model)

```ruby
begin
  # Simulate ATM withdrawal
  data, status_code, headers = api_instance.simulate_withdrawal_with_http_info(withdrawal_request_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulate_withdrawal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **withdrawal_request_model** | [**WithdrawalRequestModel**](WithdrawalRequestModel.md) | ATM withdrawal details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## simulatel2l3

> Object simulatel2l3(l2l3_model)

Simulate L2l3

> 🚧 Alpha > This is a Alpha endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Simulate a l2l3 type transaction by including the original_transaction_id and enhanced data in your request.  L2L3 events enhance the data of a transaction with the `l2l3` details from your request. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardTransactionSimulationsApi.new
l2l3_model = Synctera::L2l3Model.new({original_transaction_id: 'original_transaction_id_example'}) # L2l3Model | L2l3 details

begin
  # Simulate L2l3
  result = api_instance.simulatel2l3(l2l3_model)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulatel2l3: #{e}"
end
```

#### Using the simulatel2l3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> simulatel2l3_with_http_info(l2l3_model)

```ruby
begin
  # Simulate L2l3
  data, status_code, headers = api_instance.simulatel2l3_with_http_info(l2l3_model)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling CardTransactionSimulationsApi->simulatel2l3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **l2l3_model** | [**L2l3Model**](L2l3Model.md) | L2l3 details |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

