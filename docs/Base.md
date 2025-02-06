# Synctera::Base

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) | All of the customer&#39;s addresses | [optional][readonly] |
| **compliance_restrictions** | **Array&lt;String&gt;** | The types of compliance that the business needs to adhere to * &#x60;LICENSED_CANNABIS&#x60; – A type of compliance restriction where the business would need a cannabis license in order to operate.  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **ein** | **String** | U.S. Employer Identification Number (EIN) for this business, in the format xx-xxxxxxx. | [optional] |
| **email** | **String** | Business&#39;s email. | [optional] |
| **entity_name** | **String** | Business&#39;s legal name. | [optional] |
| **formation_date** | **Date** | Date the business was legally registered in RFC 3339 full-date format (YYYY-MM-DD). | [optional] |
| **formation_state** | **String** | U.S. state where the business is legally registered (2-letter abbreviation). | [optional] |
| **has_accounts** | **Boolean** | This flag indicates whether the person or business has accounts. | [optional][readonly] |
| **id** | **String** | Business&#39;s unique identifier. | [optional][readonly] |
| **is_customer** | **Boolean** | True for personal and business customers with a direct relationship with the fintech or bank. Set this to true for any customer related to an account.  | [optional] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **legal_address** | [**LegalAddress**](LegalAddress.md) |  | [optional] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **phone_number** | **String** | Business&#39;s phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated. | [optional] |
| **status** | **String** | Status of the business. One of the following: * &#x60;PROSPECT&#x60; – a potential customer, used for information-gathering and disclosures. * &#x60;ACTIVE&#x60; –  is an integrator defined status.  Integrators should set a business to active if they believe the person to be qualified for conducting business.  Synctera will combine this status with other statuses such a verification to determine if the business is eligible for specific actions such as initiating transactions or issuing a card. * &#x60;FROZEN&#x60; – business&#39;s actions are blocked for security, legal, or other reasons. * &#x60;SANCTION&#x60; – business is on a sanctions list and should be carefully monitored. * &#x60;DISSOLVED&#x60; – an inactive status indicating a business entity has filed articles of dissolution or a certificate of termination to terminate its existence. * &#x60;CANCELLED&#x60; – an inactive status indicating that a business entity has filed a cancellation or has failed to file its periodic report after notice of forfeiture of its rights to do business. * &#x60;SUSPENDED&#x60; – an inactive status indicating that the business entity has lost the right to operate in it&#39;s registered jurisdiction. * &#x60;MERGED&#x60; – an inactive status indicating that the business entity has terminated existence by merging into another entity. * &#x60;INACTIVE&#x60; – an inactive status indicating that the business entity is no longer active. * &#x60;CONVERTED&#x60; – An inactive status indicating that the business entity has been converted to another type of business entity in the same jurisdiction.  | [optional] |
| **structure** | **String** | Business&#39;s legal structure. | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **trade_names** | **Array&lt;String&gt;** | All registered &#39;doing business as&#39; (DBA) or trade names for this business. | [optional] |
| **verification_last_run** | **Time** | Date and time KYB verification was last run on the business. | [optional][readonly] |
| **verification_status** | [**VerificationStatus**](VerificationStatus.md) |  | [optional] |
| **website** | **String** | Business&#39;s website. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Base.new(
  addresses: null,
  compliance_restrictions: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  ein: 12-3456789,
  email: alice@example.com,
  entity_name: Apex Corporation,
  formation_date: Fri Dec 31 16:00:00 PST 1999,
  formation_state: NY,
  has_accounts: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_customer: true,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  legal_address: null,
  metadata: null,
  phone_number: +14374570680,
  status: null,
  structure: CORPORATION,
  tenant: abcdef_ghijkl,
  trade_names: [&quot;Apex&quot;,&quot;Apex LLC&quot;,&quot;CorporationID#77231&quot;],
  verification_last_run: 2010-05-06T12:23:34.321Z,
  verification_status: null,
  website: https://example.com
)
```

