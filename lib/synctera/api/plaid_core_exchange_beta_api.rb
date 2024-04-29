=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class PlaidCoreExchangeBetaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authorization Test
    # Use this endpoint to initiate a test of the Plaid Core Exchange authorization flow. Your configured Authentication URI will be returned in the response body which you can navigate to in browser, then perform your authentication process using the appended auth_request_id. If that authentication is successful, this flow should end by redirecting to our success page from the authorize response. This endpoint is only supported in the sandbox environment. 
    # @param [Hash] opts the optional parameters
    # @return [TestAuthorizeResponse]
    def get_authorization_test(opts = {})
      data, _status_code, _headers = get_authorization_test_with_http_info(opts)
      data
    end

    # Authorization Test
    # Use this endpoint to initiate a test of the Plaid Core Exchange authorization flow. Your configured Authentication URI will be returned in the response body which you can navigate to in browser, then perform your authentication process using the appended auth_request_id. If that authentication is successful, this flow should end by redirecting to our success page from the authorize response. This endpoint is only supported in the sandbox environment. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TestAuthorizeResponse, Integer, Hash)>] TestAuthorizeResponse data, response status code and response headers
    def get_authorization_test_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaidCoreExchangeBetaApi.get_authorization_test ...'
      end
      # resource path
      local_var_path = '/fdx_auth_requests/authorization_test'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TestAuthorizeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PlaidCoreExchangeBetaApi.get_authorization_test",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaidCoreExchangeBetaApi#get_authorization_test\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an FDX token
    # > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get an FDX token 
    # @param fdx_token_id [String] The unique identifier of an FDX token
    # @param [Hash] opts the optional parameters
    # @return [FdxTokenResponse]
    def get_fdx_token(fdx_token_id, opts = {})
      data, _status_code, _headers = get_fdx_token_with_http_info(fdx_token_id, opts)
      data
    end

    # Get an FDX token
    # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get an FDX token 
    # @param fdx_token_id [String] The unique identifier of an FDX token
    # @param [Hash] opts the optional parameters
    # @return [Array<(FdxTokenResponse, Integer, Hash)>] FdxTokenResponse data, response status code and response headers
    def get_fdx_token_with_http_info(fdx_token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaidCoreExchangeBetaApi.get_fdx_token ...'
      end
      # verify the required parameter 'fdx_token_id' is set
      if @api_client.config.client_side_validation && fdx_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'fdx_token_id' when calling PlaidCoreExchangeBetaApi.get_fdx_token"
      end
      # resource path
      local_var_path = '/fdx_tokens/{fdx_token_id}'.sub('{' + 'fdx_token_id' + '}', CGI.escape(fdx_token_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FdxTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PlaidCoreExchangeBetaApi.get_fdx_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaidCoreExchangeBetaApi#get_fdx_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Grant an FDX authorization request
    # > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Grant or deny an FDX authorization request 
    # @param fdx_auth_grant_post [FdxAuthGrantPost] FDX authorization grant
    # @param [Hash] opts the optional parameters
    # @return [FdxAuthGrantResponse]
    def grant_fdx_auth_request(fdx_auth_grant_post, opts = {})
      data, _status_code, _headers = grant_fdx_auth_request_with_http_info(fdx_auth_grant_post, opts)
      data
    end

    # Grant an FDX authorization request
    # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Grant or deny an FDX authorization request 
    # @param fdx_auth_grant_post [FdxAuthGrantPost] FDX authorization grant
    # @param [Hash] opts the optional parameters
    # @return [Array<(FdxAuthGrantResponse, Integer, Hash)>] FdxAuthGrantResponse data, response status code and response headers
    def grant_fdx_auth_request_with_http_info(fdx_auth_grant_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaidCoreExchangeBetaApi.grant_fdx_auth_request ...'
      end
      # verify the required parameter 'fdx_auth_grant_post' is set
      if @api_client.config.client_side_validation && fdx_auth_grant_post.nil?
        fail ArgumentError, "Missing the required parameter 'fdx_auth_grant_post' when calling PlaidCoreExchangeBetaApi.grant_fdx_auth_request"
      end
      # resource path
      local_var_path = '/fdx_auth_requests/authorize'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fdx_auth_grant_post)

      # return_type
      return_type = opts[:debug_return_type] || 'FdxAuthGrantResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PlaidCoreExchangeBetaApi.grant_fdx_auth_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaidCoreExchangeBetaApi#grant_fdx_auth_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FDX authorization requests
    # > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX authorization requests 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [FdxAuthRequestList]
    def list_fdx_auth_requests(opts = {})
      data, _status_code, _headers = list_fdx_auth_requests_with_http_info(opts)
      data
    end

    # List FDX authorization requests
    # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX authorization requests 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(FdxAuthRequestList, Integer, Hash)>] FdxAuthRequestList data, response status code and response headers
    def list_fdx_auth_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaidCoreExchangeBetaApi.list_fdx_auth_requests ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PlaidCoreExchangeBetaApi.list_fdx_auth_requests, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/fdx_auth_requests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FdxAuthRequestList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PlaidCoreExchangeBetaApi.list_fdx_auth_requests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaidCoreExchangeBetaApi#list_fdx_auth_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tokens
    # > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX tokens 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [FdxTokenList]
    def list_fdx_token(opts = {})
      data, _status_code, _headers = list_fdx_token_with_http_info(opts)
      data
    end

    # List tokens
    # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX tokens 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(FdxTokenList, Integer, Hash)>] FdxTokenList data, response status code and response headers
    def list_fdx_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaidCoreExchangeBetaApi.list_fdx_token ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PlaidCoreExchangeBetaApi.list_fdx_token, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/fdx_tokens'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FdxTokenList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PlaidCoreExchangeBetaApi.list_fdx_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaidCoreExchangeBetaApi#list_fdx_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
