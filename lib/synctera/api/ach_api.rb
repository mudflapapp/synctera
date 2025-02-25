=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class ACHApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create New Gateway Endpoint Configuration
    # By creating Gateway Endpoint Configuration object for Fintech, you enable ACH in Auth flow for all the ACH transactions for specified Fintech (Tenant) 
    # @param gateway_post [GatewayPost] Gateway Config Create Request
    # @param [Hash] opts the optional parameters
    # @return [GatewayConfig]
    def add_gateway_config(gateway_post, opts = {})
      data, _status_code, _headers = add_gateway_config_with_http_info(gateway_post, opts)
      data
    end

    # Create New Gateway Endpoint Configuration
    # By creating Gateway Endpoint Configuration object for Fintech, you enable ACH in Auth flow for all the ACH transactions for specified Fintech (Tenant) 
    # @param gateway_post [GatewayPost] Gateway Config Create Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(GatewayConfig, Integer, Hash)>] GatewayConfig data, response status code and response headers
    def add_gateway_config_with_http_info(gateway_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.add_gateway_config ...'
      end
      # verify the required parameter 'gateway_post' is set
      if @api_client.config.client_side_validation && gateway_post.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_post' when calling ACHApi.add_gateway_config"
      end
      # resource path
      local_var_path = '/ach/gateways'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gateway_post)

      # return_type
      return_type = opts[:debug_return_type] || 'GatewayConfig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.add_gateway_config",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#add_gateway_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an ACH
    # Send an ACH 
    # @param outgoing_ach_request [OutgoingAchRequest] Send ACH request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [OutgoingAch]
    def add_transaction_out(outgoing_ach_request, opts = {})
      data, _status_code, _headers = add_transaction_out_with_http_info(outgoing_ach_request, opts)
      data
    end

    # Send an ACH
    # Send an ACH 
    # @param outgoing_ach_request [OutgoingAchRequest] Send ACH request
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(OutgoingAch, Integer, Hash)>] OutgoingAch data, response status code and response headers
    def add_transaction_out_with_http_info(outgoing_ach_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.add_transaction_out ...'
      end
      # verify the required parameter 'outgoing_ach_request' is set
      if @api_client.config.client_side_validation && outgoing_ach_request.nil?
        fail ArgumentError, "Missing the required parameter 'outgoing_ach_request' when calling ACHApi.add_transaction_out"
      end
      # resource path
      local_var_path = '/ach'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(outgoing_ach_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OutgoingAch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.add_transaction_out",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#add_transaction_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Gateway Endpoint Configuration by ID
    # Use this to permanently remove Gateway Configuration and disable Auth Flow for Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_gateway_config_by_id(id, opts = {})
      delete_gateway_config_by_id_with_http_info(id, opts)
      nil
    end

    # Delete Gateway Endpoint Configuration by ID
    # Use this to permanently remove Gateway Configuration and disable Auth Flow for Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_gateway_config_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.delete_gateway_config_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ACHApi.delete_gateway_config_by_id"
      end
      # resource path
      local_var_path = '/ach/gateways/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.delete_gateway_config_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#delete_gateway_config_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List All Gateway Configurations
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param [Hash] opts the optional parameters
    # @return [Array<GatewayConfig>]
    def get_all_gateway_configs(opts = {})
      data, _status_code, _headers = get_all_gateway_configs_with_http_info(opts)
      data
    end

    # List All Gateway Configurations
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GatewayConfig>, Integer, Hash)>] Array<GatewayConfig> data, response status code and response headers
    def get_all_gateway_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.get_all_gateway_configs ...'
      end
      # resource path
      local_var_path = '/ach/gateways'

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
      return_type = opts[:debug_return_type] || 'Array<GatewayConfig>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.get_all_gateway_configs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#get_all_gateway_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Gateway Endpoint Configuration By ID
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [GatewayConfig]
    def get_gateway_config_by_id(id, opts = {})
      data, _status_code, _headers = get_gateway_config_by_id_with_http_info(id, opts)
      data
    end

    # Get Gateway Endpoint Configuration By ID
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(GatewayConfig, Integer, Hash)>] GatewayConfig data, response status code and response headers
    def get_gateway_config_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.get_gateway_config_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ACHApi.get_gateway_config_by_id"
      end
      # resource path
      local_var_path = '/ach/gateways/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GatewayConfig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.get_gateway_config_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#get_gateway_config_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Incoming ACH Transactions
    # > 🚧 Beta > This is a Beta endpoint for use by early adopters. Do not use this endpoint with real customers. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the transaction
    # @option opts [Date] :settlement_date_to End of the settlement date range query
    # @option opts [Date] :settlement_date_from Start of the settlement date range query
    # @option opts [String] :account_id uuid representing an account
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [IncomingAchList]
    def get_incoming_ach_list(opts = {})
      data, _status_code, _headers = get_incoming_ach_list_with_http_info(opts)
      data
    end

    # List Incoming ACH Transactions
    # &gt; 🚧 Beta &gt; This is a Beta endpoint for use by early adopters. Do not use this endpoint with real customers. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Status of the transaction
    # @option opts [Date] :settlement_date_to End of the settlement date range query
    # @option opts [Date] :settlement_date_from Start of the settlement date range query
    # @option opts [String] :account_id uuid representing an account
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(IncomingAchList, Integer, Hash)>] IncomingAchList data, response status code and response headers
    def get_incoming_ach_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.get_incoming_ach_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ACHApi.get_incoming_ach_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/ach/incoming'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'settlement_date_to'] = opts[:'settlement_date_to'] if !opts[:'settlement_date_to'].nil?
      query_params[:'settlement_date_from'] = opts[:'settlement_date_from'] if !opts[:'settlement_date_from'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncomingAchList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.get_incoming_ach_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#get_incoming_ach_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Incoming ACH Transaction By ID
    # > 🚧 Beta > This is a Beta endpoint for use by early adopters. Do not use this endpoint with real customers. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [IncomingAch]
    def get_incoming_achby_id(id, opts = {})
      data, _status_code, _headers = get_incoming_achby_id_with_http_info(id, opts)
      data
    end

    # Get Incoming ACH Transaction By ID
    # &gt; 🚧 Beta &gt; This is a Beta endpoint for use by early adopters. Do not use this endpoint with real customers. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 
    # @param id [String] The unique resource identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(IncomingAch, Integer, Hash)>] IncomingAch data, response status code and response headers
    def get_incoming_achby_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.get_incoming_achby_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ACHApi.get_incoming_achby_id"
      end
      # resource path
      local_var_path = '/ach/incoming/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'IncomingAch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.get_incoming_achby_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#get_incoming_achby_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a sent ACH transaction
    # Get a single sent ACH transaction
    # @param transaction_id [String] Transaction ID in the ledger
    # @param [Hash] opts the optional parameters
    # @return [OutgoingAch]
    def get_transaction_out(transaction_id, opts = {})
      data, _status_code, _headers = get_transaction_out_with_http_info(transaction_id, opts)
      data
    end

    # Get a sent ACH transaction
    # Get a single sent ACH transaction
    # @param transaction_id [String] Transaction ID in the ledger
    # @param [Hash] opts the optional parameters
    # @return [Array<(OutgoingAch, Integer, Hash)>] OutgoingAch data, response status code and response headers
    def get_transaction_out_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.get_transaction_out ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling ACHApi.get_transaction_out"
      end
      # resource path
      local_var_path = '/ach/{transaction_id}'.sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OutgoingAch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.get_transaction_out",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#get_transaction_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List sent ACH transactions
    # List sent ACH transactions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :incoming_ach_id ID of the linked incoming ACH entry. This is filled only for outgoing ACH entries that are returns and links to the originally received incoming entry.
    # @option opts [Date] :end_effective_date End of the effective date range query
    # @option opts [Date] :start_effective_date Start of the effective date range query
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Date] :effective_date Effective date of the transaction
    # @return [OutgoingAchList]
    def list_transactions_out(opts = {})
      data, _status_code, _headers = list_transactions_out_with_http_info(opts)
      data
    end

    # List sent ACH transactions
    # List sent ACH transactions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :incoming_ach_id ID of the linked incoming ACH entry. This is filled only for outgoing ACH entries that are returns and links to the originally received incoming entry.
    # @option opts [Date] :end_effective_date End of the effective date range query
    # @option opts [Date] :start_effective_date Start of the effective date range query
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Date] :effective_date Effective date of the transaction
    # @return [Array<(OutgoingAchList, Integer, Hash)>] OutgoingAchList data, response status code and response headers
    def list_transactions_out_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.list_transactions_out ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ACHApi.list_transactions_out, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/ach'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'incoming_ach_id'] = opts[:'incoming_ach_id'] if !opts[:'incoming_ach_id'].nil?
      query_params[:'end_effective_date'] = opts[:'end_effective_date'] if !opts[:'end_effective_date'].nil?
      query_params[:'start_effective_date'] = opts[:'start_effective_date'] if !opts[:'start_effective_date'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'effective_date'] = opts[:'effective_date'] if !opts[:'effective_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'OutgoingAchList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.list_transactions_out",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#list_transactions_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Gateway Endpoint Configuration By ID
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param gateway_patch [GatewayPatch] Gateway Config Object fields allowed for update
    # @param [Hash] opts the optional parameters
    # @return [GatewayConfig]
    def patch_gateway_config_by_id(id, gateway_patch, opts = {})
      data, _status_code, _headers = patch_gateway_config_by_id_with_http_info(id, gateway_patch, opts)
      data
    end

    # Update Gateway Endpoint Configuration By ID
    # Gateway Endpoint Configuration object represents details required for Auth flow Request to the Fintech (Tenant)
    # @param id [String] The unique resource identifier
    # @param gateway_patch [GatewayPatch] Gateway Config Object fields allowed for update
    # @param [Hash] opts the optional parameters
    # @return [Array<(GatewayConfig, Integer, Hash)>] GatewayConfig data, response status code and response headers
    def patch_gateway_config_by_id_with_http_info(id, gateway_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.patch_gateway_config_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ACHApi.patch_gateway_config_by_id"
      end
      # verify the required parameter 'gateway_patch' is set
      if @api_client.config.client_side_validation && gateway_patch.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_patch' when calling ACHApi.patch_gateway_config_by_id"
      end
      # resource path
      local_var_path = '/ach/gateways/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gateway_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'GatewayConfig'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.patch_gateway_config_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#patch_gateway_config_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a sent ACH transaction
    # Update a sent ACH transaction (either status or funds availability)
    # @param transaction_id [String] Transaction ID in the ledger
    # @param outgoing_ach_patch [OutgoingAchPatch] Update sent ach transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [OutgoingAch]
    def patch_transaction_out(transaction_id, outgoing_ach_patch, opts = {})
      data, _status_code, _headers = patch_transaction_out_with_http_info(transaction_id, outgoing_ach_patch, opts)
      data
    end

    # Update a sent ACH transaction
    # Update a sent ACH transaction (either status or funds availability)
    # @param transaction_id [String] Transaction ID in the ledger
    # @param outgoing_ach_patch [OutgoingAchPatch] Update sent ach transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(OutgoingAch, Integer, Hash)>] OutgoingAch data, response status code and response headers
    def patch_transaction_out_with_http_info(transaction_id, outgoing_ach_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ACHApi.patch_transaction_out ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling ACHApi.patch_transaction_out"
      end
      # verify the required parameter 'outgoing_ach_patch' is set
      if @api_client.config.client_side_validation && outgoing_ach_patch.nil?
        fail ArgumentError, "Missing the required parameter 'outgoing_ach_patch' when calling ACHApi.patch_transaction_out"
      end
      # resource path
      local_var_path = '/ach/{transaction_id}'.sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(outgoing_ach_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'OutgoingAch'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ACHApi.patch_transaction_out",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ACHApi#patch_transaction_out\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
