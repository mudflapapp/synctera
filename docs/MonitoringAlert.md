# Synctera::MonitoringAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **id** | **String** | Unique identifier for this alert. | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last update. | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |
| **status** | [**MonitoringStatus**](MonitoringStatus.md) |  | [optional] |
| **title** | **String** | A description of the monitoring alert. | [optional] |
| **type** | **String** | The type of customer alert. Any of the following: * &#x60;WATCHLIST&#x60; – the customer was added to a known watchlist. * &#x60;BANKRUPTCY&#x60; – the customer filed for bankruptcy. * &#x60;NEGATIVE_NEWS&#x60; – the customer was mentioned in negative news articles. * &#x60;LICENSE_VALIDITY&#x60; – the license is no longer valid. Exmaple of this would be if a license was suspended  | [optional][readonly] |
| **urls** | **Array&lt;String&gt;** | Where to get more information about this alert. | [optional][readonly] |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::MonitoringAlert.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  status: null,
  title: Ireland Competition and Consumer Protection Commission Criminal Court Cases,
  type: null,
  urls: [&quot;https://example.com/alert-document-1&quot;,&quot;https://example.com/alert-document-2&quot;],
  vendor_info: null
)
```

