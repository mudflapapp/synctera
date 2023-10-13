# Synctera::ExternalAccountLinkToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The identifier for the business customer associated with this external account. Exactly one of &#x60;business_id&#x60; or &#x60;customer_id&#x60; must be specified.  | [optional] |
| **client_name** | **String** | The name of your application, as it should be displayed in Link. Maximum length of 30 characters. |  |
| **country_codes** | **Array&lt;String&gt;** | Country codes in the ISO-3166-1 alpha-2 country code standard. |  |
| **customer_id** | **String** | The identifier for the personal customer associated with this external account. Exactly one of &#x60;customer_id&#x60; or &#x60;business_id&#x60; must be specified.  | [optional] |
| **expiration** | **Time** | The expiration date for the link_token. Expires in 4 hours. | [optional][readonly] |
| **language** | [**ExternalAccountLanguage**](ExternalAccountLanguage.md) |  |  |
| **link_customization_name** | **String** | The name of the Link customization from the Plaid Dashboard to be applied to Link. If not specified, the default customization will be used. When using a Link customization, the language in the customization must match the language selected via the language parameter, and the countries in the customization should match the country codes selected via country_codes.  | [optional] |
| **link_token** | **String** | A link_token, which can be supplied to Link in order to initialize it and receive a public_token, which can be exchanged for an access_token.  | [optional][readonly] |
| **redirect_uri** | **String** | A URI indicating the destination where a user should be forwarded after completing the Link flow; used to support OAuth authentication flows when launching Link in the browser or via a webview.  | [optional] |
| **request_id** | **String** | A unique identifier for the request, which can be used for troubleshooting. | [optional][readonly] |
| **sdk_type** | **String** | Describes the environment of the client code running a vendor-supplied SDK | [optional][default to &#39;WEB&#39;] |
| **type** | **String** | The type of the link token. DEPOSITORY for checking and savings accounts, CREDIT for credit card type accounts, INVESTMENT for investment accounts, and MICRO_DEPOSIT for depository accounts with support for micro-deposits verification. |  |
| **vendor_access_token** | **String** | The access token associated with the Item data is being requested for. | [optional] |
| **vendor_institution_id** | **String** | The ID of the institution the access token is requested for. If present the link token will be created in an update mode.  | [optional] |
| **verify_owner** | **Boolean** | If true, Synctera will attempt to verify that the external account owner is the same as the customer by comparing external account data to customer data. At least 2 of the following fields must match: name, phone number, email, address. Verification is disabled by default.  | [optional][default to false] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountLinkToken.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  client_name: null,
  country_codes: null,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  expiration: null,
  language: null,
  link_customization_name: null,
  link_token: null,
  redirect_uri: null,
  request_id: null,
  sdk_type: null,
  type: null,
  vendor_access_token: null,
  vendor_institution_id: null,
  verify_owner: null
)
```

