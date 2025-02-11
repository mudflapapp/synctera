=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class InternalTransferApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an internal transfer
    # An internal transfer is an payment between two accounts within the same Fintech.  By default, the payment is posted immediately. To indicate that you want to separate the authorization from the completion of the payment, use `capture_mode` = `MANUAL`. In that case, a separate call to update the status of the transfer will be required to complete the payment.
    # @param internal_transfer [InternalTransfer] Internal transfer request body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [InternalTransferResponse]
    def create_internal_transfer(internal_transfer, opts = {})
      data, _status_code, _headers = create_internal_transfer_with_http_info(internal_transfer, opts)
      data
    end

    # Create an internal transfer
    # An internal transfer is an payment between two accounts within the same Fintech.  By default, the payment is posted immediately. To indicate that you want to separate the authorization from the completion of the payment, use &#x60;capture_mode&#x60; &#x3D; &#x60;MANUAL&#x60;. In that case, a separate call to update the status of the transfer will be required to complete the payment.
    # @param internal_transfer [InternalTransfer] Internal transfer request body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(InternalTransferResponse, Integer, Hash)>] InternalTransferResponse data, response status code and response headers
    def create_internal_transfer_with_http_info(internal_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalTransferApi.create_internal_transfer ...'
      end
      # verify the required parameter 'internal_transfer' is set
      if @api_client.config.client_side_validation && internal_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'internal_transfer' when calling InternalTransferApi.create_internal_transfer"
      end
      # resource path
      local_var_path = '/transactions/internal_transfer'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_transfer)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternalTransferApi.create_internal_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalTransferApi#create_internal_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an internal transfer
    # Get an internal transfer auth by ID
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferResponse]
    def get_internal_transfer_by_id(id, opts = {})
      data, _status_code, _headers = get_internal_transfer_by_id_with_http_info(id, opts)
      data
    end

    # Get an internal transfer
    # Get an internal transfer auth by ID
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferResponse, Integer, Hash)>] InternalTransferResponse data, response status code and response headers
    def get_internal_transfer_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalTransferApi.get_internal_transfer_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InternalTransferApi.get_internal_transfer_by_id"
      end
      # resource path
      local_var_path = '/transactions/internal_transfer/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'InternalTransferResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternalTransferApi.get_internal_transfer_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalTransferApi#get_internal_transfer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an internal transfer
    # Update an internal transfer.  This is only relevant when committing or cancelling an internal transfer authorization (created with `capture_mode` = `MANUAL`) that hasn't already been completed.
    # @param id [String] Transaction ID
    # @param internal_transfer_patch [InternalTransferPatch] Internal transfer request body
    # @param [Hash] opts the optional parameters
    # @return [InternalTransferResponse]
    def update_internal_transfer_by_id(id, internal_transfer_patch, opts = {})
      data, _status_code, _headers = update_internal_transfer_by_id_with_http_info(id, internal_transfer_patch, opts)
      data
    end

    # Update an internal transfer
    # Update an internal transfer.  This is only relevant when committing or cancelling an internal transfer authorization (created with &#x60;capture_mode&#x60; &#x3D; &#x60;MANUAL&#x60;) that hasn&#39;t already been completed.
    # @param id [String] Transaction ID
    # @param internal_transfer_patch [InternalTransferPatch] Internal transfer request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(InternalTransferResponse, Integer, Hash)>] InternalTransferResponse data, response status code and response headers
    def update_internal_transfer_by_id_with_http_info(id, internal_transfer_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InternalTransferApi.update_internal_transfer_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InternalTransferApi.update_internal_transfer_by_id"
      end
      # verify the required parameter 'internal_transfer_patch' is set
      if @api_client.config.client_side_validation && internal_transfer_patch.nil?
        fail ArgumentError, "Missing the required parameter 'internal_transfer_patch' when calling InternalTransferApi.update_internal_transfer_by_id"
      end
      # resource path
      local_var_path = '/transactions/internal_transfer/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(internal_transfer_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'InternalTransferResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"InternalTransferApi.update_internal_transfer_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InternalTransferApi#update_internal_transfer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
