# Synctera::DeviceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **color_depth** | **Integer** | The device&#39;s color palette bit depth, in bits per pixel |  |
| **header** | **String** | The exact contents of the browser&#39;s HTTP accept headers |  |
| **ip_address** | **String** | The device&#39;s IP address (either IPv4 or IPv6 formats are acceptable) |  |
| **java_enabled** | **Boolean** | If the browser has the ability to execute Java (value returned from &#x60;navigator.javaEnabled&#x60; property) |  |
| **javascript_enabled** | **Boolean** | If the browser has the ability to execute JavaScript (value returned from &#x60;navigator.javaScriptEnabled&#x60; property) |  |
| **language** | **String** | The browser&#39;s language as defined in IETF BCP47 |  |
| **screen_height** | **Integer** | The total height of the device&#39;s screen, in pixels |  |
| **screen_width** | **Integer** | The total width of the device&#39;s screen, in pixels |  |
| **timezone** | **Integer** | The offset from UTC of the device&#39;s local timezone, in minutes |  |
| **user_agent** | **String** | The exact contents of the HTTP user agent header |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DeviceDetails.new(
  color_depth: 24,
  header: text/html,application/xhtml+xml,application/xml;q&#x3D;0.9,*/*;q&#x3D;0.8,
  ip_address: 1.12.123.255,
  java_enabled: null,
  javascript_enabled: null,
  language: en-US,
  screen_height: 1080,
  screen_width: 1920,
  timezone: -300,
  user_agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36
)
```

