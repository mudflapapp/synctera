=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class EDDApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a EDD
    # Create a EDD
    # @param create_edd_request [CreateEddRequest] EDD to create
    # @param [Hash] opts the optional parameters
    # @return [CreateEddResponse]
    def create_edd(create_edd_request, opts = {})
      data, _status_code, _headers = create_edd_with_http_info(create_edd_request, opts)
      data
    end

    # Create a EDD
    # Create a EDD
    # @param create_edd_request [CreateEddRequest] EDD to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateEddResponse, Integer, Hash)>] CreateEddResponse data, response status code and response headers
    def create_edd_with_http_info(create_edd_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDDApi.create_edd ...'
      end
      # verify the required parameter 'create_edd_request' is set
      if @api_client.config.client_side_validation && create_edd_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_edd_request' when calling EDDApi.create_edd"
      end
      # resource path
      local_var_path = '/edd'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_edd_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateEddResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EDDApi.create_edd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDDApi#create_edd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a EDD
    # Delete a EDD
    # @param edd_id [String] The unique identifier of a edd
    # @param [Hash] opts the optional parameters
    # @return [DeleteResponse]
    def delete_edd(edd_id, opts = {})
      data, _status_code, _headers = delete_edd_with_http_info(edd_id, opts)
      data
    end

    # Delete a EDD
    # Delete a EDD
    # @param edd_id [String] The unique identifier of a edd
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResponse, Integer, Hash)>] DeleteResponse data, response status code and response headers
    def delete_edd_with_http_info(edd_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDDApi.delete_edd ...'
      end
      # verify the required parameter 'edd_id' is set
      if @api_client.config.client_side_validation && edd_id.nil?
        fail ArgumentError, "Missing the required parameter 'edd_id' when calling EDDApi.delete_edd"
      end
      # resource path
      local_var_path = '/edd/{edd_id}'.sub('{' + 'edd_id' + '}', CGI.escape(edd_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EDDApi.delete_edd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDDApi#delete_edd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a EDD
    # Get a EDD
    # @param edd_id [String] The unique identifier of a edd
    # @param [Hash] opts the optional parameters
    # @return [CreateEddResponse]
    def get_edd(edd_id, opts = {})
      data, _status_code, _headers = get_edd_with_http_info(edd_id, opts)
      data
    end

    # Get a EDD
    # Get a EDD
    # @param edd_id [String] The unique identifier of a edd
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateEddResponse, Integer, Hash)>] CreateEddResponse data, response status code and response headers
    def get_edd_with_http_info(edd_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDDApi.get_edd ...'
      end
      # verify the required parameter 'edd_id' is set
      if @api_client.config.client_side_validation && edd_id.nil?
        fail ArgumentError, "Missing the required parameter 'edd_id' when calling EDDApi.get_edd"
      end
      # resource path
      local_var_path = '/edd/{edd_id}'.sub('{' + 'edd_id' + '}', CGI.escape(edd_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreateEddResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EDDApi.get_edd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDDApi#get_edd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List EDD
    # Get paginated list of EDD
    # @param related_resource_type [Array<RelatedResourceType1>] Type of related resource. Multiple values can be provided as a comma-separated list. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :related_resource_id Unique identifier for the related resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [EddList]
    def list_edd(related_resource_type, opts = {})
      data, _status_code, _headers = list_edd_with_http_info(related_resource_type, opts)
      data
    end

    # List EDD
    # Get paginated list of EDD
    # @param related_resource_type [Array<RelatedResourceType1>] Type of related resource. Multiple values can be provided as a comma-separated list. 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :related_resource_id Unique identifier for the related resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(EddList, Integer, Hash)>] EddList data, response status code and response headers
    def list_edd_with_http_info(related_resource_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EDDApi.list_edd ...'
      end
      # verify the required parameter 'related_resource_type' is set
      if @api_client.config.client_side_validation && related_resource_type.nil?
        fail ArgumentError, "Missing the required parameter 'related_resource_type' when calling EDDApi.list_edd"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EDDApi.list_edd, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/edd'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'related_resource_type'] = @api_client.build_collection_param(related_resource_type, :csv)
      query_params[:'related_resource_id'] = @api_client.build_collection_param(opts[:'related_resource_id'], :csv) if !opts[:'related_resource_id'].nil?
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
      return_type = opts[:debug_return_type] || 'EddList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"EDDApi.list_edd",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EDDApi#list_edd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
