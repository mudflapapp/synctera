=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.111.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class KYCVerificationDeprecatedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a customer verification result
    # Create a verification result for a customer. This endpoint will be removed in API v1. Use `POST /v0/verifications` instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param customer_verification_result [CustomerVerificationResult] Customer verification result to create.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [CustomerVerificationResult]
    def create_customer_verification_result(customer_id, customer_verification_result, opts = {})
      data, _status_code, _headers = create_customer_verification_result_with_http_info(customer_id, customer_verification_result, opts)
      data
    end

    # Create a customer verification result
    # Create a verification result for a customer. This endpoint will be removed in API v1. Use &#x60;POST /v0/verifications&#x60; instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param customer_verification_result [CustomerVerificationResult] Customer verification result to create.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(CustomerVerificationResult, Integer, Hash)>] CustomerVerificationResult data, response status code and response headers
    def create_customer_verification_result_with_http_info(customer_id, customer_verification_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KYCVerificationDeprecatedApi.create_customer_verification_result ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling KYCVerificationDeprecatedApi.create_customer_verification_result"
      end
      # verify the required parameter 'customer_verification_result' is set
      if @api_client.config.client_side_validation && customer_verification_result.nil?
        fail ArgumentError, "Missing the required parameter 'customer_verification_result' when calling KYCVerificationDeprecatedApi.create_customer_verification_result"
      end
      # resource path
      local_var_path = '/customers/{customer_id}/verifications'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_verification_result)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerVerificationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KYCVerificationDeprecatedApi.create_customer_verification_result",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KYCVerificationDeprecatedApi#create_customer_verification_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get verification result
    # Get verification result by ID.  This endpoint will be removed in API v1. Use `GET /v0/verifications/{verification_id}` instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param verification_id [String] Verification&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [CustomerVerificationResult]
    def get_verification(customer_id, verification_id, opts = {})
      data, _status_code, _headers = get_verification_with_http_info(customer_id, verification_id, opts)
      data
    end

    # Get verification result
    # Get verification result by ID.  This endpoint will be removed in API v1. Use &#x60;GET /v0/verifications/{verification_id}&#x60; instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param verification_id [String] Verification&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerVerificationResult, Integer, Hash)>] CustomerVerificationResult data, response status code and response headers
    def get_verification_with_http_info(customer_id, verification_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KYCVerificationDeprecatedApi.get_verification ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling KYCVerificationDeprecatedApi.get_verification"
      end
      # verify the required parameter 'verification_id' is set
      if @api_client.config.client_side_validation && verification_id.nil?
        fail ArgumentError, "Missing the required parameter 'verification_id' when calling KYCVerificationDeprecatedApi.get_verification"
      end
      # resource path
      local_var_path = '/customers/{customer_id}/verifications/{verification_id}'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'verification_id' + '}', CGI.escape(verification_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerVerificationResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KYCVerificationDeprecatedApi.get_verification",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KYCVerificationDeprecatedApi#get_verification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List verification results
    # List verification results.  This endpoint will be removed in API v1. Use `GET /v0/verifications?customer_id={customer_id}` instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, include old (inactive) records as well. (default to false)
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [CustomerVerificationResultList]
    def list_verifications(customer_id, opts = {})
      data, _status_code, _headers = list_verifications_with_http_info(customer_id, opts)
      data
    end

    # List verification results
    # List verification results.  This endpoint will be removed in API v1. Use &#x60;GET /v0/verifications?customer_id&#x3D;{customer_id}&#x60; instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, include old (inactive) records as well. (default to false)
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(CustomerVerificationResultList, Integer, Hash)>] CustomerVerificationResultList data, response status code and response headers
    def list_verifications_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KYCVerificationDeprecatedApi.list_verifications ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling KYCVerificationDeprecatedApi.list_verifications"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling KYCVerificationDeprecatedApi.list_verifications, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/customers/{customer_id}/verifications'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_history'] = opts[:'include_history'] if !opts[:'include_history'].nil?
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
      return_type = opts[:debug_return_type] || 'CustomerVerificationResultList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KYCVerificationDeprecatedApi.list_verifications",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KYCVerificationDeprecatedApi#list_verifications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify a customer's identity
    # Initiate identity verification for a customer and run the specified identity checks.  Verifying a personal customer requires that the following fields already be set: * `first_name` * `last_name` * `dob` * `email` * `phone_number` * `legal_address` * `ssn`  This endpoint will be removed in API v1. Use `POST /v0/verifications/verify` instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param customer_verification [CustomerVerification] Customer verification request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [CustomerVerifyResponse]
    def verify_customer(customer_id, customer_verification, opts = {})
      data, _status_code, _headers = verify_customer_with_http_info(customer_id, customer_verification, opts)
      data
    end

    # Verify a customer&#39;s identity
    # Initiate identity verification for a customer and run the specified identity checks.  Verifying a personal customer requires that the following fields already be set: * &#x60;first_name&#x60; * &#x60;last_name&#x60; * &#x60;dob&#x60; * &#x60;email&#x60; * &#x60;phone_number&#x60; * &#x60;legal_address&#x60; * &#x60;ssn&#x60;  This endpoint will be removed in API v1. Use &#x60;POST /v0/verifications/verify&#x60; instead. 
    # @param customer_id [String] The customer&#39;s unique identifier
    # @param customer_verification [CustomerVerification] Customer verification request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(CustomerVerifyResponse, Integer, Hash)>] CustomerVerifyResponse data, response status code and response headers
    def verify_customer_with_http_info(customer_id, customer_verification, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KYCVerificationDeprecatedApi.verify_customer ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling KYCVerificationDeprecatedApi.verify_customer"
      end
      # verify the required parameter 'customer_verification' is set
      if @api_client.config.client_side_validation && customer_verification.nil?
        fail ArgumentError, "Missing the required parameter 'customer_verification' when calling KYCVerificationDeprecatedApi.verify_customer"
      end
      # resource path
      local_var_path = '/customers/{customer_id}/verify'.sub('{' + 'customer_id' + '}', CGI.escape(customer_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(customer_verification)

      # return_type
      return_type = opts[:debug_return_type] || 'CustomerVerifyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KYCVerificationDeprecatedApi.verify_customer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KYCVerificationDeprecatedApi#verify_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
