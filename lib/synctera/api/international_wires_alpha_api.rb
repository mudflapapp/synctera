=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class InternationalWiresAlphaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an International Wire
    # Create an international wire transfer. For now these need manual approval and submission to the wire terminal by bank operations team. Created wires will result in an auth, posting only happens when bank operations team confirms the wire. The wire will be subsequently updated with the reference ID and synctera case ID when the wire is submitted via the wire terminal. Wire processing is subject to the bank's processing schedule. Cross currency wires may only be available during certain hours of banking days.
    # @param international_wire_post [InternationalWirePost] International wire transfer request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [InternationalWireResponse]
    def create_international_wire(international_wire_post, opts = {})
      data, _status_code, _headers = create_international_wire_with_http_info(international_wire_post, opts)
      data
    end

    # Create an International Wire
    # Create an international wire transfer. For now these need manual approval and submission to the wire terminal by bank operations team. Created wires will result in an auth, posting only happens when bank operations team confirms the wire. The wire will be subsequently updated with the reference ID and synctera case ID when the wire is submitted via the wire terminal. Wire processing is subject to the bank&#39;s processing schedule. Cross currency wires may only be available during certain hours of banking days.
    # @param international_wire_post [InternationalWirePost] International wire transfer request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(InternationalWireResponse, Integer, Hash)>] InternationalWireResponse data, response status code and response headers
    def create_international_wire_with_http_info(international_wire_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternationalWiresAlphaApi.create_international_wire ...'
      end
      # verify the required parameter 'international_wire_post' is set
      if @api_client.config.client_side_validation && international_wire_post.nil?
        fail ArgumentError, "Missing the required parameter 'international_wire_post' when calling InternationalWiresAlphaApi.create_international_wire"
      end
      # resource path
      local_var_path = '/international_wires'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(international_wire_post)

      # return_type
      return_type = opts[:debug_return_type] || 'InternationalWireResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternationalWiresAlphaApi.create_international_wire",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternationalWiresAlphaApi#create_international_wire\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an international wire by id
    # Get an international wire by id
    # @param wire_id [String] The unique identifier of a wire transfer.
    # @param [Hash] opts the optional parameters
    # @return [InternationalWireResponse]
    def get_international_wire(wire_id, opts = {})
      data, _status_code, _headers = get_international_wire_with_http_info(wire_id, opts)
      data
    end

    # Get an international wire by id
    # Get an international wire by id
    # @param wire_id [String] The unique identifier of a wire transfer.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternationalWireResponse, Integer, Hash)>] InternationalWireResponse data, response status code and response headers
    def get_international_wire_with_http_info(wire_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternationalWiresAlphaApi.get_international_wire ...'
      end
      # verify the required parameter 'wire_id' is set
      if @api_client.config.client_side_validation && wire_id.nil?
        fail ArgumentError, "Missing the required parameter 'wire_id' when calling InternationalWiresAlphaApi.get_international_wire"
      end
      # resource path
      local_var_path = '/international_wires/{wire_id}'.sub('{' + 'wire_id' + '}', CGI.escape(wire_id.to_s))

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
      return_type = opts[:debug_return_type] || 'InternationalWireResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternationalWiresAlphaApi.get_international_wire",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternationalWiresAlphaApi#get_international_wire\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List International Wires
    # Get paginated list of international wires
    # @param [Hash] opts the optional parameters
    # @option opts [InternationalWireStatus] :international_wire_status The status of the international wire transfer.
    # @option opts [String] :originating_account_id The unique identifier of the originating account.
    # @option opts [String] :customer_id The unique identifier of a customer.
    # @option opts [String] :receiving_account_id The unique identifier of the receiving account.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [InternationalWireList]
    def list_international_wires(opts = {})
      data, _status_code, _headers = list_international_wires_with_http_info(opts)
      data
    end

    # List International Wires
    # Get paginated list of international wires
    # @param [Hash] opts the optional parameters
    # @option opts [InternationalWireStatus] :international_wire_status The status of the international wire transfer.
    # @option opts [String] :originating_account_id The unique identifier of the originating account.
    # @option opts [String] :customer_id The unique identifier of a customer.
    # @option opts [String] :receiving_account_id The unique identifier of the receiving account.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(InternationalWireList, Integer, Hash)>] InternationalWireList data, response status code and response headers
    def list_international_wires_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternationalWiresAlphaApi.list_international_wires ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling InternationalWiresAlphaApi.list_international_wires, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/international_wires'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'international_wire_status'] = opts[:'international_wire_status'] if !opts[:'international_wire_status'].nil?
      query_params[:'originating_account_id'] = opts[:'originating_account_id'] if !opts[:'originating_account_id'].nil?
      query_params[:'customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'receiving_account_id'] = opts[:'receiving_account_id'] if !opts[:'receiving_account_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
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
      return_type = opts[:debug_return_type] || 'InternationalWireList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternationalWiresAlphaApi.list_international_wires",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternationalWiresAlphaApi#list_international_wires\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an international wire to various statuses
    # Update an outgoing international wire. End customers can only cancel a wire while its status is still PENDING. All other updates must be done by Synctera operations team or bank operations team.
    # @param wire_id [String] The unique identifier of a wire transfer.
    # @param international_wire_patch [InternationalWirePatch] Instruction to update an international wire
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [InternationalWireResponse]
    def patch_international_wire(wire_id, international_wire_patch, opts = {})
      data, _status_code, _headers = patch_international_wire_with_http_info(wire_id, international_wire_patch, opts)
      data
    end

    # Update an international wire to various statuses
    # Update an outgoing international wire. End customers can only cancel a wire while its status is still PENDING. All other updates must be done by Synctera operations team or bank operations team.
    # @param wire_id [String] The unique identifier of a wire transfer.
    # @param international_wire_patch [InternationalWirePatch] Instruction to update an international wire
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(InternationalWireResponse, Integer, Hash)>] InternationalWireResponse data, response status code and response headers
    def patch_international_wire_with_http_info(wire_id, international_wire_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternationalWiresAlphaApi.patch_international_wire ...'
      end
      # verify the required parameter 'wire_id' is set
      if @api_client.config.client_side_validation && wire_id.nil?
        fail ArgumentError, "Missing the required parameter 'wire_id' when calling InternationalWiresAlphaApi.patch_international_wire"
      end
      # verify the required parameter 'international_wire_patch' is set
      if @api_client.config.client_side_validation && international_wire_patch.nil?
        fail ArgumentError, "Missing the required parameter 'international_wire_patch' when calling InternationalWiresAlphaApi.patch_international_wire"
      end
      # resource path
      local_var_path = '/international_wires/{wire_id}'.sub('{' + 'wire_id' + '}', CGI.escape(wire_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(international_wire_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'InternationalWireResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternationalWiresAlphaApi.patch_international_wire",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternationalWiresAlphaApi#patch_international_wire\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
