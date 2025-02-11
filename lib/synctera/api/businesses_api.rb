=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class BusinessesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a business
    # Create a business who may act as a customer or a related business. You can then verify the identity of this customer and associate them with other people and accounts. 
    # @param business [Business] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Business]
    def create_business(business, opts = {})
      data, _status_code, _headers = create_business_with_http_info(business, opts)
      data
    end

    # Create a business
    # Create a business who may act as a customer or a related business. You can then verify the identity of this customer and associate them with other people and accounts. 
    # @param business [Business] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(Business, Integer, Hash)>] Business data, response status code and response headers
    def create_business_with_http_info(business, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BusinessesApi.create_business ...'
      end
      # verify the required parameter 'business' is set
      if @api_client.config.client_side_validation && business.nil?
        fail ArgumentError, "Missing the required parameter 'business' when calling BusinessesApi.create_business"
      end
      # resource path
      local_var_path = '/businesses'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(business)

      # return_type
      return_type = opts[:debug_return_type] || 'Business'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"BusinessesApi.create_business",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BusinessesApi#create_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get business
    # Get business by ID.
    # @param business_id [String] Business&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Business]
    def get_business(business_id, opts = {})
      data, _status_code, _headers = get_business_with_http_info(business_id, opts)
      data
    end

    # Get business
    # Get business by ID.
    # @param business_id [String] Business&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Business, Integer, Hash)>] Business data, response status code and response headers
    def get_business_with_http_info(business_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BusinessesApi.get_business ...'
      end
      # verify the required parameter 'business_id' is set
      if @api_client.config.client_side_validation && business_id.nil?
        fail ArgumentError, "Missing the required parameter 'business_id' when calling BusinessesApi.get_business"
      end
      # resource path
      local_var_path = '/businesses/{business_id}'.sub('{' + 'business_id' + '}', CGI.escape(business_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Business'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"BusinessesApi.get_business",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BusinessesApi#get_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List business
    # Retrieves paginated list of businesses associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_customer If true, show only customers. If false, show non-customer parties.
    # @option opts [Array<String>] :sort_by Specifies the sort order for the returned businesses. 
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
    # @option opts [String] :phone_number 
    # @option opts [String] :page_token 
    # @option opts [String] :status 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :entity_name 
    # @return [BusinessList]
    def list_businesses(opts = {})
      data, _status_code, _headers = list_businesses_with_http_info(opts)
      data
    end

    # List business
    # Retrieves paginated list of businesses associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_customer If true, show only customers. If false, show non-customer parties.
    # @option opts [Array<String>] :sort_by Specifies the sort order for the returned businesses. 
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
    # @option opts [String] :phone_number 
    # @option opts [String] :page_token 
    # @option opts [String] :status 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :entity_name 
    # @return [Array<(BusinessList, Integer, Hash)>] BusinessList data, response status code and response headers
    def list_businesses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BusinessesApi.list_businesses ...'
      end
      allowable_values = ["creation_time:asc", "creation_time:desc", "entity_name:asc", "entity_name:desc", "last_updated_time:asc", "last_updated_time:desc"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !opts[:'sort_by'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"sort_by\", must include one of #{allowable_values}"
      end
      allowable_values = ["ACTIVE", "CANCELLED", "CONVERTED", "DISSOLVED", "FROZEN", "INACTIVE", "MERGED", "PROSPECT", "SANCTION", "SUSPENDED"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BusinessesApi.list_businesses, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/businesses'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_customer'] = opts[:'is_customer'] if !opts[:'is_customer'].nil?
      query_params[:'sort_by'] = @api_client.build_collection_param(opts[:'sort_by'], :csv) if !opts[:'sort_by'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'has_accounts'] = opts[:'has_accounts'] if !opts[:'has_accounts'].nil?
      query_params[:'phone_number'] = opts[:'phone_number'] if !opts[:'phone_number'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'entity_name'] = opts[:'entity_name'] if !opts[:'entity_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BusinessList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"BusinessesApi.list_businesses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BusinessesApi#list_businesses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch business
    # Update business by ID.
    # @param business_id [String] Business&#39;s unique identifier.
    # @param patch_business [PatchBusiness] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Business]
    def update_business(business_id, patch_business, opts = {})
      data, _status_code, _headers = update_business_with_http_info(business_id, patch_business, opts)
      data
    end

    # Patch business
    # Update business by ID.
    # @param business_id [String] Business&#39;s unique identifier.
    # @param patch_business [PatchBusiness] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(Business, Integer, Hash)>] Business data, response status code and response headers
    def update_business_with_http_info(business_id, patch_business, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BusinessesApi.update_business ...'
      end
      # verify the required parameter 'business_id' is set
      if @api_client.config.client_side_validation && business_id.nil?
        fail ArgumentError, "Missing the required parameter 'business_id' when calling BusinessesApi.update_business"
      end
      # verify the required parameter 'patch_business' is set
      if @api_client.config.client_side_validation && patch_business.nil?
        fail ArgumentError, "Missing the required parameter 'patch_business' when calling BusinessesApi.update_business"
      end
      # resource path
      local_var_path = '/businesses/{business_id}'.sub('{' + 'business_id' + '}', CGI.escape(business_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_business)

      # return_type
      return_type = opts[:debug_return_type] || 'Business'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"BusinessesApi.update_business",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BusinessesApi#update_business\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
