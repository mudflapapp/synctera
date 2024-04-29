=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class DisclosuresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create disclosure record
    # Record the fact that a regulatory document was disclosed to a customer.
    # @param disclosure [Disclosure] Disclosure to create.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Disclosure]
    def create_disclosure(disclosure, opts = {})
      data, _status_code, _headers = create_disclosure_with_http_info(disclosure, opts)
      data
    end

    # Create disclosure record
    # Record the fact that a regulatory document was disclosed to a customer.
    # @param disclosure [Disclosure] Disclosure to create.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(Disclosure, Integer, Hash)>] Disclosure data, response status code and response headers
    def create_disclosure_with_http_info(disclosure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DisclosuresApi.create_disclosure ...'
      end
      # verify the required parameter 'disclosure' is set
      if @api_client.config.client_side_validation && disclosure.nil?
        fail ArgumentError, "Missing the required parameter 'disclosure' when calling DisclosuresApi.create_disclosure"
      end
      # resource path
      local_var_path = '/disclosures'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(disclosure)

      # return_type
      return_type = opts[:debug_return_type] || 'Disclosure'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DisclosuresApi.create_disclosure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DisclosuresApi#create_disclosure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get disclosure
    # Get disclosure by ID.
    # @param disclosure_id [String] The unique identifier for the disclosure.
    # @param [Hash] opts the optional parameters
    # @return [Disclosure]
    def get_disclosure(disclosure_id, opts = {})
      data, _status_code, _headers = get_disclosure_with_http_info(disclosure_id, opts)
      data
    end

    # Get disclosure
    # Get disclosure by ID.
    # @param disclosure_id [String] The unique identifier for the disclosure.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Disclosure, Integer, Hash)>] Disclosure data, response status code and response headers
    def get_disclosure_with_http_info(disclosure_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DisclosuresApi.get_disclosure ...'
      end
      # verify the required parameter 'disclosure_id' is set
      if @api_client.config.client_side_validation && disclosure_id.nil?
        fail ArgumentError, "Missing the required parameter 'disclosure_id' when calling DisclosuresApi.get_disclosure"
      end
      # resource path
      local_var_path = '/disclosures/{disclosure_id}'.sub('{' + 'disclosure_id' + '}', CGI.escape(disclosure_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Disclosure'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DisclosuresApi.get_disclosure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DisclosuresApi#get_disclosure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List disclosures
    # Retrieves paginated list of disclosures associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :id Unique resource identifier
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :acknowledging_person_id Return only disclosures that have the specified acknowledging_person_id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [DisclosureList]
    def list_disclosures(opts = {})
      data, _status_code, _headers = list_disclosures_with_http_info(opts)
      data
    end

    # List disclosures
    # Retrieves paginated list of disclosures associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :id Unique resource identifier
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :acknowledging_person_id Return only disclosures that have the specified acknowledging_person_id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(DisclosureList, Integer, Hash)>] DisclosureList data, response status code and response headers
    def list_disclosures_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DisclosuresApi.list_disclosures ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DisclosuresApi.list_disclosures, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/disclosures'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'business_id'] = @api_client.build_collection_param(opts[:'business_id'], :csv) if !opts[:'business_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'person_id'] = @api_client.build_collection_param(opts[:'person_id'], :csv) if !opts[:'person_id'].nil?
      query_params[:'acknowledging_person_id'] = @api_client.build_collection_param(opts[:'acknowledging_person_id'], :csv) if !opts[:'acknowledging_person_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DisclosureList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DisclosuresApi.list_disclosures",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DisclosuresApi#list_disclosures\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
