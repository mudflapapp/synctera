# Synctera::Disclosure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acknowledging_person_id** | **String** | Unique ID for the person acknowledging the disclosure. Applicable for disclosures where the person acknowledging is different from the subject of the disclosure. Required for OWNER_CERTIFICATION disclosures. | [optional] |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **disclosure_date** | **Time** | Date and time the disclosure was made. |  |
| **event_type** | **String** | Describes how the disclosure was shown and what the user did as a result. One of the following: * &#x60;DISPLAYED&#x60; —     The document was made visible to the user,     but they did not interact with it.  * &#x60;VIEWED&#x60; —     The document was made visible to the user,     and they interacted enough to see the whole document (e.g. scrolled to the bottom).  * &#x60;ACKNOWLEDGED&#x60; —     The document was made visible to the user,     and they took positive action to confirm that they have read and accepted the document. |  |
| **id** | **String** | The unique identifier for this resource. | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **type** | [**DisclosureType**](DisclosureType.md) |  |  |
| **version** | **String** | Version of the disclosure document. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Disclosure.new(
  acknowledging_person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  disclosure_date: 2010-05-06T12:23:34.321Z,
  event_type: ACKNOWLEDGED,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  tenant: abcdef_ghijkl,
  type: null,
  version: 1.0
)
```

