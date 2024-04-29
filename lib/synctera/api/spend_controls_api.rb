=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class SpendControlsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Spend Control
    # Create a spend control 
    # @param spend_control [SpendControl] Details of the spend control to create
    # @param [Hash] opts the optional parameters
    # @return [SpendControlResponse]
    def create_spend_control(spend_control, opts = {})
      data, _status_code, _headers = create_spend_control_with_http_info(spend_control, opts)
      data
    end

    # Create Spend Control
    # Create a spend control 
    # @param spend_control [SpendControl] Details of the spend control to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpendControlResponse, Integer, Hash)>] SpendControlResponse data, response status code and response headers
    def create_spend_control_with_http_info(spend_control, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpendControlsApi.create_spend_control ...'
      end
      # verify the required parameter 'spend_control' is set
      if @api_client.config.client_side_validation && spend_control.nil?
        fail ArgumentError, "Missing the required parameter 'spend_control' when calling SpendControlsApi.create_spend_control"
      end
      # resource path
      local_var_path = '/spend_controls'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(spend_control)

      # return_type
      return_type = opts[:debug_return_type] || 'SpendControlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SpendControlsApi.create_spend_control",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpendControlsApi#create_spend_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Spend Control
    # Get spend control 
    # @param spend_control_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [SpendControlResponse]
    def get_spend_control(spend_control_id, opts = {})
      data, _status_code, _headers = get_spend_control_with_http_info(spend_control_id, opts)
      data
    end

    # Get Spend Control
    # Get spend control 
    # @param spend_control_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpendControlResponse, Integer, Hash)>] SpendControlResponse data, response status code and response headers
    def get_spend_control_with_http_info(spend_control_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpendControlsApi.get_spend_control ...'
      end
      # verify the required parameter 'spend_control_id' is set
      if @api_client.config.client_side_validation && spend_control_id.nil?
        fail ArgumentError, "Missing the required parameter 'spend_control_id' when calling SpendControlsApi.get_spend_control"
      end
      # resource path
      local_var_path = '/spend_controls/{spend_control_id}'.sub('{' + 'spend_control_id' + '}', CGI.escape(spend_control_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SpendControlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SpendControlsApi.get_spend_control",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpendControlsApi#get_spend_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Spend Controls
    # List spend controls 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :amount_limit_gte return results with an amount limit greater than or equal to this
    # @option opts [Integer] :amount_limit_lte return results with an amount limit less than or equal to this
    # @option opts [Integer] :num_related_accounts_gte return results that are associated with at least this many accounts
    # @option opts [Integer] :num_related_accounts return results that are associated with this many accounts
    # @option opts [Integer] :num_related_accounts_lte return results that are associated with at most this many accounts
    # @option opts [Array<String>] :sort_by Specifies the sort order for returned Spend Controls. 
    # @option opts [PaymentType] :payment_type 
    # @option opts [String] :name return results that match this name
    # @option opts [Array<String>] :id return results with these comma-separated IDs
    # @option opts [SpendControlDirection] :direction 
    # @option opts [Boolean] :is_active return results that match this active status
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :account_id return results matching this account ID
    # @option opts [Integer] :amount_limit return results matching this amount limit
    # @return [SpendControlResponseList]
    def list_spend_controls(opts = {})
      data, _status_code, _headers = list_spend_controls_with_http_info(opts)
      data
    end

    # List Spend Controls
    # List spend controls 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :amount_limit_gte return results with an amount limit greater than or equal to this
    # @option opts [Integer] :amount_limit_lte return results with an amount limit less than or equal to this
    # @option opts [Integer] :num_related_accounts_gte return results that are associated with at least this many accounts
    # @option opts [Integer] :num_related_accounts return results that are associated with this many accounts
    # @option opts [Integer] :num_related_accounts_lte return results that are associated with at most this many accounts
    # @option opts [Array<String>] :sort_by Specifies the sort order for returned Spend Controls. 
    # @option opts [PaymentType] :payment_type 
    # @option opts [String] :name return results that match this name
    # @option opts [Array<String>] :id return results with these comma-separated IDs
    # @option opts [SpendControlDirection] :direction 
    # @option opts [Boolean] :is_active return results that match this active status
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :account_id return results matching this account ID
    # @option opts [Integer] :amount_limit return results matching this amount limit
    # @return [Array<(SpendControlResponseList, Integer, Hash)>] SpendControlResponseList data, response status code and response headers
    def list_spend_controls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpendControlsApi.list_spend_controls ...'
      end
      if @api_client.config.client_side_validation && !opts[:'amount_limit_gte'].nil? && opts[:'amount_limit_gte'] < 0
        fail ArgumentError, 'invalid value for "opts[:"amount_limit_gte"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'amount_limit_lte'].nil? && opts[:'amount_limit_lte'] < 0
        fail ArgumentError, 'invalid value for "opts[:"amount_limit_lte"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'num_related_accounts_gte'].nil? && opts[:'num_related_accounts_gte'] < 0
        fail ArgumentError, 'invalid value for "opts[:"num_related_accounts_gte"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'num_related_accounts'].nil? && opts[:'num_related_accounts'] < 0
        fail ArgumentError, 'invalid value for "opts[:"num_related_accounts"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'num_related_accounts_lte'].nil? && opts[:'num_related_accounts_lte'] < 0
        fail ArgumentError, 'invalid value for "opts[:"num_related_accounts_lte"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      allowable_values = ["amount_limit:asc", "amount_limit:desc", "is_active:asc", "is_active:desc", "last_modified_time:asc", "last_modified_time:desc", "name:asc", "name:desc", "num_related_accounts:asc", "num_related_accounts:desc"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !opts[:'sort_by'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"sort_by\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'amount_limit'].nil? && opts[:'amount_limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"amount_limit"]" when calling SpendControlsApi.list_spend_controls, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/spend_controls'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'amount_limit_gte'] = opts[:'amount_limit_gte'] if !opts[:'amount_limit_gte'].nil?
      query_params[:'amount_limit_lte'] = opts[:'amount_limit_lte'] if !opts[:'amount_limit_lte'].nil?
      query_params[:'num_related_accounts_gte'] = opts[:'num_related_accounts_gte'] if !opts[:'num_related_accounts_gte'].nil?
      query_params[:'num_related_accounts'] = opts[:'num_related_accounts'] if !opts[:'num_related_accounts'].nil?
      query_params[:'num_related_accounts_lte'] = opts[:'num_related_accounts_lte'] if !opts[:'num_related_accounts_lte'].nil?
      query_params[:'sort_by'] = @api_client.build_collection_param(opts[:'sort_by'], :csv) if !opts[:'sort_by'].nil?
      query_params[:'payment_type'] = opts[:'payment_type'] if !opts[:'payment_type'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?
      query_params[:'is_active'] = opts[:'is_active'] if !opts[:'is_active'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'amount_limit'] = opts[:'amount_limit'] if !opts[:'amount_limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SpendControlResponseList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SpendControlsApi.list_spend_controls",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpendControlsApi#list_spend_controls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Spend Control
    # Update spend control 
    # @param spend_control_id [String] 
    # @param spend_control_update_request [SpendControlUpdateRequest] Fields to update
    # @param [Hash] opts the optional parameters
    # @return [SpendControlResponse]
    def update_spend_control(spend_control_id, spend_control_update_request, opts = {})
      data, _status_code, _headers = update_spend_control_with_http_info(spend_control_id, spend_control_update_request, opts)
      data
    end

    # Update Spend Control
    # Update spend control 
    # @param spend_control_id [String] 
    # @param spend_control_update_request [SpendControlUpdateRequest] Fields to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpendControlResponse, Integer, Hash)>] SpendControlResponse data, response status code and response headers
    def update_spend_control_with_http_info(spend_control_id, spend_control_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SpendControlsApi.update_spend_control ...'
      end
      # verify the required parameter 'spend_control_id' is set
      if @api_client.config.client_side_validation && spend_control_id.nil?
        fail ArgumentError, "Missing the required parameter 'spend_control_id' when calling SpendControlsApi.update_spend_control"
      end
      # verify the required parameter 'spend_control_update_request' is set
      if @api_client.config.client_side_validation && spend_control_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'spend_control_update_request' when calling SpendControlsApi.update_spend_control"
      end
      # resource path
      local_var_path = '/spend_controls/{spend_control_id}'.sub('{' + 'spend_control_id' + '}', CGI.escape(spend_control_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(spend_control_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SpendControlResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SpendControlsApi.update_spend_control",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpendControlsApi#update_spend_control\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
