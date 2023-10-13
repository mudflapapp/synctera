=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'cgi'

module Synctera
  class MerchantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get merchant from MX
    # Returns information about a particular merchant from MX, such as a logo, name, and website. 
    # @param merchant_guid [String] The unique id for a &#x60;merchant&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [MerchantResponse]
    def mx_read_merchant(merchant_guid, opts = {})
      data, _status_code, _headers = mx_read_merchant_with_http_info(merchant_guid, opts)
      data
    end

    # Get merchant from MX
    # Returns information about a particular merchant from MX, such as a logo, name, and website. 
    # @param merchant_guid [String] The unique id for a &#x60;merchant&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MerchantResponse, Integer, Hash)>] MerchantResponse data, response status code and response headers
    def mx_read_merchant_with_http_info(merchant_guid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MerchantsApi.mx_read_merchant ...'
      end
      # verify the required parameter 'merchant_guid' is set
      if @api_client.config.client_side_validation && merchant_guid.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_guid' when calling MerchantsApi.mx_read_merchant"
      end
      # resource path
      local_var_path = '/mx/merchants/{merchant_guid}'.sub('{' + 'merchant_guid' + '}', CGI.escape(merchant_guid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MerchantResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MerchantsApi.mx_read_merchant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MerchantsApi#mx_read_merchant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
