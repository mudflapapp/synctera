# Synctera::Detail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Machine-readable identifier to allow grouping details into subsets.  Checks for the following categories should typcially be provided when onboarding personal customers: * &#x60;CIP&#x60; – Checks relating to a Customer Identification Program (CIP) including name, ID verification, and date of birth. * &#x60;ADDRESS&#x60; – Address check done either through a bureau or document verification. * &#x60;PHONE&#x60; – Phone checks, including verifying number and other correlation methods. * &#x60;EMAIL&#x60; – Email checks, including verifying email address and other correlation methods. * &#x60;FRAUD&#x60; – Checks relating to elements of fraud. * &#x60;SYNTHETIC&#x60; – Check relating to elements of synthetic identity. * &#x60;DEVICE&#x60; – Checks relating to elements of device risk. Can include SDK or IP screening. * &#x60;DOC_VERIFICATION&#x60; – Document Verification checks, where ID documents are submitted for verification, including liveness test, or other anti-forgery verification. * &#x60;SELFIE_CAPTURE&#x60; – Selfie capture check, including liveness test, or other anti-fake verification. * &#x60;SELFIE_DOCUMENT&#x60; – Check if selfie matches with photo on document. * &#x60;DOC_DETAILS&#x60; – Check if details on ID documents matches with supplied information. * &#x60;WATCHLIST&#x60; – Outcome from watchlist screenings (especially OFAC/SDN and other sanctions lists).  Checks for the following categories should typcially be provided when onboarding businesses customers: * &#x60;BUSINESS_NAME&#x60; – Business name check done against a bureau. * &#x60;OFFICE_ADDRESS&#x60; – Address check done either through a bureau or document verification. * &#x60;SOS_FILINGS&#x60; – Findings from a Secretary of State (SOS) filings check. * &#x60;WEBSITE&#x60; – Business website check. * &#x60;TIN_MATCH&#x60; – Taxpayer Identification Number (TIN) check from tax bureau. * &#x60;BANKRUPTCIES&#x60; – Check for any bankruptcy filings. * &#x60;SOS_DOMESTIC&#x60; – Outcome from a Domestic Secretary of State (SOS) filings check * &#x60;LICENSE&#x60; –  * &#x60;WATCHLIST&#x60; – Outcome from watchlist screenings (especially OFAC/SDN and other sanctions lists).  If you would like to provide additional information that doesn&#39;t fit with an existing category you may provide: * &#x60;OTHER&#x60; – A category for miscellaneous or uncategorized checks.  | [optional] |
| **description** | **String** | Human-readable description explaining the individual check. | [optional] |
| **label** | **String** | Human-readable grouping describing the aspect of the customer&#39;s identity examined by this check. | [optional][readonly] |
| **result** | **String** | The result of the individual check. One of the following: * &#x60;PASS&#x60; – the check passed contributing to a positive outcome (or accepted verification result). * &#x60;INFO&#x60; – the check returned neutral information which may or may not explain a negative result. * &#x60;WARN&#x60; – the check was inconclusive and might require review. * &#x60;FAIL&#x60; – the check failed and might result in a failing outcome (or rejected verification_result).  | [optional] |
| **score** | **Float** | An arbitrary floating point score value which may be used to contextualize the human readable description. | [optional] |
| **url** | **String** | A URL containing supporting information for this individual check. | [optional] |
| **vendor_code** | **String** | Machine-readable description of the individual check. This field contains vendor-specific terms and may not be populated in all cases. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Detail.new(
  category: null,
  description: Email address is correlated with the individual&#39;s name,
  label: Email,
  result: PASS,
  score: 0.25,
  url: http://example.com/additional-information,
  vendor_code: R940
)
```

