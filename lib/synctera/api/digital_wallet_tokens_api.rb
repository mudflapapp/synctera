=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module Synctera
  class DigitalWalletTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create digital wallet token provision request for Apple Pay
    # @param card_id [String] 
    # @param apple_digital_wallet_provision_request [AppleDigitalWalletProvisionRequest] Request to provision digital wallet card data to pass to Apple Pay digital wallet.  &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [AppleDigitalWalletProvisionResponse]
    def create_digital_wallet_apple(card_id, apple_digital_wallet_provision_request, opts = {})
      data, _status_code, _headers = create_digital_wallet_apple_with_http_info(card_id, apple_digital_wallet_provision_request, opts)
      data
    end

    # Create digital wallet token provision request for Apple Pay
    # @param card_id [String] 
    # @param apple_digital_wallet_provision_request [AppleDigitalWalletProvisionRequest] Request to provision digital wallet card data to pass to Apple Pay digital wallet.  &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(AppleDigitalWalletProvisionResponse, Integer, Hash)>] AppleDigitalWalletProvisionResponse data, response status code and response headers
    def create_digital_wallet_apple_with_http_info(card_id, apple_digital_wallet_provision_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalWalletTokensApi.create_digital_wallet_apple ...'
      end
      # verify the required parameter 'card_id' is set
      if @api_client.config.client_side_validation && card_id.nil?
        fail ArgumentError, "Missing the required parameter 'card_id' when calling DigitalWalletTokensApi.create_digital_wallet_apple"
      end
      # verify the required parameter 'apple_digital_wallet_provision_request' is set
      if @api_client.config.client_side_validation && apple_digital_wallet_provision_request.nil?
        fail ArgumentError, "Missing the required parameter 'apple_digital_wallet_provision_request' when calling DigitalWalletTokensApi.create_digital_wallet_apple"
      end
      # resource path
      local_var_path = '/cards/{card_id}/digital_wallet_tokens/applepay'.sub('{' + 'card_id' + '}', CGI.escape(card_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(apple_digital_wallet_provision_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AppleDigitalWalletProvisionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DigitalWalletTokensApi.create_digital_wallet_apple",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalWalletTokensApi#create_digital_wallet_apple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create digital wallet token provision request for Google Pay
    # @param card_id [String] 
    # @param google_digital_wallet_provision_request [GoogleDigitalWalletProvisionRequest] Request to provision digital wallet card data to pass to Google Pay digital wallet. &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [GoogleDigitalWalletProvisionResponse]
    def create_digital_wallet_google(card_id, google_digital_wallet_provision_request, opts = {})
      data, _status_code, _headers = create_digital_wallet_google_with_http_info(card_id, google_digital_wallet_provision_request, opts)
      data
    end

    # Create digital wallet token provision request for Google Pay
    # @param card_id [String] 
    # @param google_digital_wallet_provision_request [GoogleDigitalWalletProvisionRequest] Request to provision digital wallet card data to pass to Google Pay digital wallet. &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(GoogleDigitalWalletProvisionResponse, Integer, Hash)>] GoogleDigitalWalletProvisionResponse data, response status code and response headers
    def create_digital_wallet_google_with_http_info(card_id, google_digital_wallet_provision_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalWalletTokensApi.create_digital_wallet_google ...'
      end
      # verify the required parameter 'card_id' is set
      if @api_client.config.client_side_validation && card_id.nil?
        fail ArgumentError, "Missing the required parameter 'card_id' when calling DigitalWalletTokensApi.create_digital_wallet_google"
      end
      # verify the required parameter 'google_digital_wallet_provision_request' is set
      if @api_client.config.client_side_validation && google_digital_wallet_provision_request.nil?
        fail ArgumentError, "Missing the required parameter 'google_digital_wallet_provision_request' when calling DigitalWalletTokensApi.create_digital_wallet_google"
      end
      # resource path
      local_var_path = '/cards/{card_id}/digital_wallet_tokens/googlepay'.sub('{' + 'card_id' + '}', CGI.escape(card_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(google_digital_wallet_provision_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GoogleDigitalWalletProvisionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DigitalWalletTokensApi.create_digital_wallet_google",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalWalletTokensApi#create_digital_wallet_google\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Digital Wallet Token
    # Get the details about the digital wallet token of a card <br>NB: Digital wallet tokens cannot be created outside of production</br> 
    # @param digital_wallet_token_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DigitalWalletTokenResponse]
    def get_digital_wallet_token(digital_wallet_token_id, opts = {})
      data, _status_code, _headers = get_digital_wallet_token_with_http_info(digital_wallet_token_id, opts)
      data
    end

    # Get Digital Wallet Token
    # Get the details about the digital wallet token of a card &lt;br&gt;NB: Digital wallet tokens cannot be created outside of production&lt;/br&gt; 
    # @param digital_wallet_token_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DigitalWalletTokenResponse, Integer, Hash)>] DigitalWalletTokenResponse data, response status code and response headers
    def get_digital_wallet_token_with_http_info(digital_wallet_token_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalWalletTokensApi.get_digital_wallet_token ...'
      end
      # verify the required parameter 'digital_wallet_token_id' is set
      if @api_client.config.client_side_validation && digital_wallet_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'digital_wallet_token_id' when calling DigitalWalletTokensApi.get_digital_wallet_token"
      end
      # resource path
      local_var_path = '/cards/digital_wallet_tokens/{digital_wallet_token_id}'.sub('{' + 'digital_wallet_token_id' + '}', CGI.escape(digital_wallet_token_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DigitalWalletTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DigitalWalletTokensApi.get_digital_wallet_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalWalletTokensApi#get_digital_wallet_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Digital Wallet Tokens
    # List Digital Wallet Tokens <br>NB: Digital wallet tokens cannot be created outside of production</br> 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [DigitalWalletTokenState] :token_state The status of the Digital Wallet Token
    # @option opts [String] :card_id 
    # @return [TokenListResponse]
    def list_digital_wallet_tokens(opts = {})
      data, _status_code, _headers = list_digital_wallet_tokens_with_http_info(opts)
      data
    end

    # List Digital Wallet Tokens
    # List Digital Wallet Tokens &lt;br&gt;NB: Digital wallet tokens cannot be created outside of production&lt;/br&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [DigitalWalletTokenState] :token_state The status of the Digital Wallet Token
    # @option opts [String] :card_id 
    # @return [Array<(TokenListResponse, Integer, Hash)>] TokenListResponse data, response status code and response headers
    def list_digital_wallet_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalWalletTokensApi.list_digital_wallet_tokens ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DigitalWalletTokensApi.list_digital_wallet_tokens, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cards/digital_wallet_tokens'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'token_state'] = opts[:'token_state'] if !opts[:'token_state'].nil?
      query_params[:'card_id'] = opts[:'card_id'] if !opts[:'card_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TokenListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DigitalWalletTokensApi.list_digital_wallet_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalWalletTokensApi#list_digital_wallet_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Digital Wallet Token's life cycle status
    # The status of a digital wallet token can be updated as, ACTIVE to SUSPENDED, SUSPENDED to ACTIVE, ACTIVE to TERMINATED or SUSPENDED to TERMINATED. 
    # @param digital_wallet_token_id [String] 
    # @param digital_wallet_token_edit_request [DigitalWalletTokenEditRequest] Update Digital wallet token status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [DigitalWalletTokenResponse]
    def update_digital_wallet_token_status(digital_wallet_token_id, digital_wallet_token_edit_request, opts = {})
      data, _status_code, _headers = update_digital_wallet_token_status_with_http_info(digital_wallet_token_id, digital_wallet_token_edit_request, opts)
      data
    end

    # Update Digital Wallet Token&#39;s life cycle status
    # The status of a digital wallet token can be updated as, ACTIVE to SUSPENDED, SUSPENDED to ACTIVE, ACTIVE to TERMINATED or SUSPENDED to TERMINATED. 
    # @param digital_wallet_token_id [String] 
    # @param digital_wallet_token_edit_request [DigitalWalletTokenEditRequest] Update Digital wallet token status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(DigitalWalletTokenResponse, Integer, Hash)>] DigitalWalletTokenResponse data, response status code and response headers
    def update_digital_wallet_token_status_with_http_info(digital_wallet_token_id, digital_wallet_token_edit_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DigitalWalletTokensApi.update_digital_wallet_token_status ...'
      end
      # verify the required parameter 'digital_wallet_token_id' is set
      if @api_client.config.client_side_validation && digital_wallet_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'digital_wallet_token_id' when calling DigitalWalletTokensApi.update_digital_wallet_token_status"
      end
      # verify the required parameter 'digital_wallet_token_edit_request' is set
      if @api_client.config.client_side_validation && digital_wallet_token_edit_request.nil?
        fail ArgumentError, "Missing the required parameter 'digital_wallet_token_edit_request' when calling DigitalWalletTokensApi.update_digital_wallet_token_status"
      end
      # resource path
      local_var_path = '/cards/digital_wallet_tokens/{digital_wallet_token_id}'.sub('{' + 'digital_wallet_token_id' + '}', CGI.escape(digital_wallet_token_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(digital_wallet_token_edit_request)

      # return_type
      return_type = opts[:debug_return_type] || 'DigitalWalletTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"DigitalWalletTokensApi.update_digital_wallet_token_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DigitalWalletTokensApi#update_digital_wallet_token_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
