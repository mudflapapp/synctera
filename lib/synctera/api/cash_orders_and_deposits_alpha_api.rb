=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class CashOrdersAndDepositsAlphaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cash Authorization for an upcoming transfer
    # Create a new cash authorization > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashAuthorizationPost] :cash_authorization_post The cash authorization to be created.
    # @return [CashAuthorizationResponse]
    def create_cash_authorization(opts = {})
      data, _status_code, _headers = create_cash_authorization_with_http_info(opts)
      data
    end

    # Cash Authorization for an upcoming transfer
    # Create a new cash authorization &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashAuthorizationPost] :cash_authorization_post The cash authorization to be created.
    # @return [Array<(CashAuthorizationResponse, Integer, Hash)>] CashAuthorizationResponse data, response status code and response headers
    def create_cash_authorization_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.create_cash_authorization ...'
      end
      # resource path
      local_var_path = '/cash/authorization'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'cash_authorization_post'])

      # return_type
      return_type = opts[:debug_return_type] || 'CashAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.create_cash_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#create_cash_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cash authorizations
    # Get all cash authorizations > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [String] :client_name Client name of the transfer
    # @option opts [Date] :from_order_date From order date of the transfer
    # @option opts [Date] :to_order_date To order date of the transfer
    # @option opts [Array<String>] :id Cashier Authorization ID
    # @option opts [Date] :order_date order date of the transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :partner_id Partner ID of the transfer
    # @option opts [String] :bank_id Bank ID of the transfer
    # @option opts [String] :account_number Account number of the transfer, known as \&quot;Location ID\&quot; in the cash order csv
    # @option opts [String] :amount Amount of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @return [CashAuthorizationResponseList]
    def get_cash_authorizations(opts = {})
      data, _status_code, _headers = get_cash_authorizations_with_http_info(opts)
      data
    end

    # Get cash authorizations
    # Get all cash authorizations &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [String] :client_name Client name of the transfer
    # @option opts [Date] :from_order_date From order date of the transfer
    # @option opts [Date] :to_order_date To order date of the transfer
    # @option opts [Array<String>] :id Cashier Authorization ID
    # @option opts [Date] :order_date order date of the transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :partner_id Partner ID of the transfer
    # @option opts [String] :bank_id Bank ID of the transfer
    # @option opts [String] :account_number Account number of the transfer, known as \&quot;Location ID\&quot; in the cash order csv
    # @option opts [String] :amount Amount of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @return [Array<(CashAuthorizationResponseList, Integer, Hash)>] CashAuthorizationResponseList data, response status code and response headers
    def get_cash_authorizations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.get_cash_authorizations ...'
      end
      if @api_client.config.client_side_validation && !opts[:'max_amount'].nil? && opts[:'max_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"max_amount"]" when calling CashOrdersAndDepositsAlphaApi.get_cash_authorizations, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_amount'].nil? && opts[:'min_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"min_amount"]" when calling CashOrdersAndDepositsAlphaApi.get_cash_authorizations, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cash/authorization'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'destination_account_id'] = opts[:'destination_account_id'] if !opts[:'destination_account_id'].nil?
      query_params[:'client_name'] = opts[:'client_name'] if !opts[:'client_name'].nil?
      query_params[:'from_order_date'] = opts[:'from_order_date'] if !opts[:'from_order_date'].nil?
      query_params[:'to_order_date'] = opts[:'to_order_date'] if !opts[:'to_order_date'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'order_date'] = opts[:'order_date'] if !opts[:'order_date'].nil?
      query_params[:'originating_account_id'] = opts[:'originating_account_id'] if !opts[:'originating_account_id'].nil?
      query_params[:'partner_id'] = opts[:'partner_id'] if !opts[:'partner_id'].nil?
      query_params[:'bank_id'] = opts[:'bank_id'] if !opts[:'bank_id'].nil?
      query_params[:'account_number'] = opts[:'account_number'] if !opts[:'account_number'].nil?
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CashAuthorizationResponseList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.get_cash_authorizations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#get_cash_authorizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cash order authorization
    # Get a specific cash order authorization > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Authorization ID
    # @param [Hash] opts the optional parameters
    # @return [CashOrderAuthorizationResponse]
    def get_cash_order_authorization(id, opts = {})
      data, _status_code, _headers = get_cash_order_authorization_with_http_info(id, opts)
      data
    end

    # Get cash order authorization
    # Get a specific cash order authorization &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Authorization ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CashOrderAuthorizationResponse, Integer, Hash)>] CashOrderAuthorizationResponse data, response status code and response headers
    def get_cash_order_authorization_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.get_cash_order_authorization ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CashOrdersAndDepositsAlphaApi.get_cash_order_authorization"
      end
      # resource path
      local_var_path = '/cash/authorization/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CashOrderAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.get_cash_order_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#get_cash_order_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cash transfer
    # Get a specific cash transfer > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Transfer ID
    # @param [Hash] opts the optional parameters
    # @return [CashResponse]
    def get_cash_transfer(id, opts = {})
      data, _status_code, _headers = get_cash_transfer_with_http_info(id, opts)
      data
    end

    # Get cash transfer
    # Get a specific cash transfer &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Transfer ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CashResponse, Integer, Hash)>] CashResponse data, response status code and response headers
    def get_cash_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.get_cash_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CashOrdersAndDepositsAlphaApi.get_cash_transfer"
      end
      # resource path
      local_var_path = '/cash/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'CashResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.get_cash_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#get_cash_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get cash transfers
    # Get all cash transfers > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from_posting_date From posting date of the transfer
    # @option opts [String] :currency Currency of the transfer
    # @option opts [String] :to_effective_date To effective date of the transfer
    # @option opts [String] :to_posting_date To posting date of the transfer
    # @option opts [String] :customer_id Customer ID of the transfer
    # @option opts [String] :dc_sign DC sign of the transfer
    # @option opts [String] :from_effective_date From effective date of the transfer
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [Boolean] :is_same_day Is same day transfer
    # @option opts [String] :id Cashier Transfer ID
    # @option opts [String] :effective_date Effective date of the transfer
    # @option opts [String] :destination_account_number Destination account number
    # @option opts [String] :posting_date Posting date of the transfer
    # @option opts [String] :network_status Network status of the transfer
    # @option opts [String] :originating_account_number Originating account number
    # @option opts [String] :subtype Subtype of the transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :partner_id Partner ID of the transfer
    # @option opts [String] :destination_account_owner_name Destination account owner name
    # @option opts [String] :bank_id Bank ID of the transfer
    # @option opts [String] :reference_id Reference ID of the transfer
    # @option opts [String] :status Status of the transfer
    # @option opts [String] :amount Amount of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @option opts [String] :originating_account_owner_name Originating account owner name
    # @return [CashList]
    def get_cash_transfers(opts = {})
      data, _status_code, _headers = get_cash_transfers_with_http_info(opts)
      data
    end

    # Get cash transfers
    # Get all cash transfers &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :from_posting_date From posting date of the transfer
    # @option opts [String] :currency Currency of the transfer
    # @option opts [String] :to_effective_date To effective date of the transfer
    # @option opts [String] :to_posting_date To posting date of the transfer
    # @option opts [String] :customer_id Customer ID of the transfer
    # @option opts [String] :dc_sign DC sign of the transfer
    # @option opts [String] :from_effective_date From effective date of the transfer
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [Boolean] :is_same_day Is same day transfer
    # @option opts [String] :id Cashier Transfer ID
    # @option opts [String] :effective_date Effective date of the transfer
    # @option opts [String] :destination_account_number Destination account number
    # @option opts [String] :posting_date Posting date of the transfer
    # @option opts [String] :network_status Network status of the transfer
    # @option opts [String] :originating_account_number Originating account number
    # @option opts [String] :subtype Subtype of the transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :partner_id Partner ID of the transfer
    # @option opts [String] :destination_account_owner_name Destination account owner name
    # @option opts [String] :bank_id Bank ID of the transfer
    # @option opts [String] :reference_id Reference ID of the transfer
    # @option opts [String] :status Status of the transfer
    # @option opts [String] :amount Amount of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @option opts [String] :originating_account_owner_name Originating account owner name
    # @return [Array<(CashList, Integer, Hash)>] CashList data, response status code and response headers
    def get_cash_transfers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.get_cash_transfers ...'
      end
      if @api_client.config.client_side_validation && !opts[:'max_amount'].nil? && opts[:'max_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"max_amount"]" when calling CashOrdersAndDepositsAlphaApi.get_cash_transfers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_amount'].nil? && opts[:'min_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"min_amount"]" when calling CashOrdersAndDepositsAlphaApi.get_cash_transfers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/cash'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from_posting_date'] = opts[:'from_posting_date'] if !opts[:'from_posting_date'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'to_effective_date'] = opts[:'to_effective_date'] if !opts[:'to_effective_date'].nil?
      query_params[:'to_posting_date'] = opts[:'to_posting_date'] if !opts[:'to_posting_date'].nil?
      query_params[:'customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'dc_sign'] = opts[:'dc_sign'] if !opts[:'dc_sign'].nil?
      query_params[:'from_effective_date'] = opts[:'from_effective_date'] if !opts[:'from_effective_date'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'destination_account_id'] = opts[:'destination_account_id'] if !opts[:'destination_account_id'].nil?
      query_params[:'is_same_day'] = opts[:'is_same_day'] if !opts[:'is_same_day'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'effective_date'] = opts[:'effective_date'] if !opts[:'effective_date'].nil?
      query_params[:'destination_account_number'] = opts[:'destination_account_number'] if !opts[:'destination_account_number'].nil?
      query_params[:'posting_date'] = opts[:'posting_date'] if !opts[:'posting_date'].nil?
      query_params[:'network_status'] = opts[:'network_status'] if !opts[:'network_status'].nil?
      query_params[:'originating_account_number'] = opts[:'originating_account_number'] if !opts[:'originating_account_number'].nil?
      query_params[:'subtype'] = opts[:'subtype'] if !opts[:'subtype'].nil?
      query_params[:'originating_account_id'] = opts[:'originating_account_id'] if !opts[:'originating_account_id'].nil?
      query_params[:'partner_id'] = opts[:'partner_id'] if !opts[:'partner_id'].nil?
      query_params[:'destination_account_owner_name'] = opts[:'destination_account_owner_name'] if !opts[:'destination_account_owner_name'].nil?
      query_params[:'bank_id'] = opts[:'bank_id'] if !opts[:'bank_id'].nil?
      query_params[:'reference_id'] = opts[:'reference_id'] if !opts[:'reference_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'originating_account_owner_name'] = opts[:'originating_account_owner_name'] if !opts[:'originating_account_owner_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CashList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.get_cash_transfers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#get_cash_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a cash order authorization
    # > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Authorization ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashOrderAuthorizationPatch] :cash_order_authorization_patch Properties of the Cashier order authorization to update.
    # @return [CashOrderAuthorizationResponse]
    def patch_cash_order_authorization(id, opts = {})
      data, _status_code, _headers = patch_cash_order_authorization_with_http_info(id, opts)
      data
    end

    # Update a cash order authorization
    # &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Authorization ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashOrderAuthorizationPatch] :cash_order_authorization_patch Properties of the Cashier order authorization to update.
    # @return [Array<(CashOrderAuthorizationResponse, Integer, Hash)>] CashOrderAuthorizationResponse data, response status code and response headers
    def patch_cash_order_authorization_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.patch_cash_order_authorization ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CashOrdersAndDepositsAlphaApi.patch_cash_order_authorization"
      end
      # resource path
      local_var_path = '/cash/authorization/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'cash_order_authorization_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'CashOrderAuthorizationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.patch_cash_order_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#patch_cash_order_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a cash transfer
    # To cancel a transfer, update the status to 'CANCELLED'. Only 'INITIATED' or 'PENDING` transfers can be cancelled. > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Transfer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashPatch] :cash_patch Properties of the Cashier transfer to update.
    # @return [CashResponse]
    def patch_cash_transfer(id, opts = {})
      data, _status_code, _headers = patch_cash_transfer_with_http_info(id, opts)
      data
    end

    # Update a cash transfer
    # To cancel a transfer, update the status to &#39;CANCELLED&#39;. Only &#39;INITIATED&#39; or &#39;PENDING&#x60; transfers can be cancelled. &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] Cashier Transfer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [CashPatch] :cash_patch Properties of the Cashier transfer to update.
    # @return [Array<(CashResponse, Integer, Hash)>] CashResponse data, response status code and response headers
    def patch_cash_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashOrdersAndDepositsAlphaApi.patch_cash_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CashOrdersAndDepositsAlphaApi.patch_cash_transfer"
      end
      # resource path
      local_var_path = '/cash/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'cash_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'CashResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CashOrdersAndDepositsAlphaApi.patch_cash_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashOrdersAndDepositsAlphaApi#patch_cash_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
