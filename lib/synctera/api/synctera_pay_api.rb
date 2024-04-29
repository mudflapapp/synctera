=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class SyncteraPayApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Synctera Pay Transfer
    # Create a Synctera Pay transfer > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [SyncteraPayPost] :synctera_pay_post Attributes of the Synctera Pay transfer
    # @return [SyncteraPayResponse]
    def create_synctera_pay_transfer(opts = {})
      data, _status_code, _headers = create_synctera_pay_transfer_with_http_info(opts)
      data
    end

    # Create Synctera Pay Transfer
    # Create a Synctera Pay transfer &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [SyncteraPayPost] :synctera_pay_post Attributes of the Synctera Pay transfer
    # @return [Array<(SyncteraPayResponse, Integer, Hash)>] SyncteraPayResponse data, response status code and response headers
    def create_synctera_pay_transfer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.create_synctera_pay_transfer ...'
      end
      # resource path
      local_var_path = '/synctera_pay'

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
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'synctera_pay_post'])

      # return_type
      return_type = opts[:debug_return_type] || 'SyncteraPayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.create_synctera_pay_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#create_synctera_pay_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Synctera Pay Transfer
    # Get a Synctera Pay transfer > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @return [SyncteraPayResponse]
    def get_synctera_pay_transfer(id, opts = {})
      data, _status_code, _headers = get_synctera_pay_transfer_with_http_info(id, opts)
      data
    end

    # Get Synctera Pay Transfer
    # Get a Synctera Pay transfer &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SyncteraPayResponse, Integer, Hash)>] SyncteraPayResponse data, response status code and response headers
    def get_synctera_pay_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.get_synctera_pay_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SyncteraPayApi.get_synctera_pay_transfer"
      end
      # resource path
      local_var_path = '/synctera_pay/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SyncteraPayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.get_synctera_pay_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#get_synctera_pay_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Synctera Pay Transfers
    # Get all Synctera Pay transfers > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :subtype Subtype of the transfer
    # @option opts [String] :from_posting_date From posting date of the transfer
    # @option opts [String] :to_posting_date To posting date of the transfer
    # @option opts [String] :id Synctera Pay Transfer ID
    # @option opts [String] :amount Amount of the transfer
    # @option opts [String] :reference_id Reference ID of the transfer
    # @option opts [String] :effective_date Effective date of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @option opts [Boolean] :is_same_day Is same day transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :from_effective_date From effective date of the transfer
    # @option opts [String] :customer_id Customer ID of the transfer
    # @option opts [String] :originating_account_owner_name Originating account owner name
    # @option opts [String] :to_effective_date To effective date of the transfer
    # @option opts [String] :dc_sign DC sign of the transfer
    # @option opts [String] :currency Currency of the transfer
    # @option opts [String] :network_status Network status of the transfer
    # @option opts [String] :status Status of the transfer
    # @option opts [String] :posting_date Posting date of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [String] :destination_account_owner_name Destination account owner name
    # @return [SyncteraPayList]
    def get_synctera_pay_transfers(opts = {})
      data, _status_code, _headers = get_synctera_pay_transfers_with_http_info(opts)
      data
    end

    # Get Synctera Pay Transfers
    # Get all Synctera Pay transfers &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_amount Maximum amount of the transfer
    # @option opts [String] :subtype Subtype of the transfer
    # @option opts [String] :from_posting_date From posting date of the transfer
    # @option opts [String] :to_posting_date To posting date of the transfer
    # @option opts [String] :id Synctera Pay Transfer ID
    # @option opts [String] :amount Amount of the transfer
    # @option opts [String] :reference_id Reference ID of the transfer
    # @option opts [String] :effective_date Effective date of the transfer
    # @option opts [Integer] :min_amount Minimum amount of the transfer
    # @option opts [Boolean] :is_same_day Is same day transfer
    # @option opts [String] :originating_account_id Originating account ID
    # @option opts [String] :from_effective_date From effective date of the transfer
    # @option opts [String] :customer_id Customer ID of the transfer
    # @option opts [String] :originating_account_owner_name Originating account owner name
    # @option opts [String] :to_effective_date To effective date of the transfer
    # @option opts [String] :dc_sign DC sign of the transfer
    # @option opts [String] :currency Currency of the transfer
    # @option opts [String] :network_status Network status of the transfer
    # @option opts [String] :status Status of the transfer
    # @option opts [String] :posting_date Posting date of the transfer
    # @option opts [String] :destination_account_id Destination account ID
    # @option opts [String] :destination_account_owner_name Destination account owner name
    # @return [Array<(SyncteraPayList, Integer, Hash)>] SyncteraPayList data, response status code and response headers
    def get_synctera_pay_transfers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.get_synctera_pay_transfers ...'
      end
      if @api_client.config.client_side_validation && !opts[:'max_amount'].nil? && opts[:'max_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"max_amount"]" when calling SyncteraPayApi.get_synctera_pay_transfers, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'min_amount'].nil? && opts[:'min_amount'] < 1
        fail ArgumentError, 'invalid value for "opts[:"min_amount"]" when calling SyncteraPayApi.get_synctera_pay_transfers, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/synctera_pay'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'subtype'] = opts[:'subtype'] if !opts[:'subtype'].nil?
      query_params[:'from_posting_date'] = opts[:'from_posting_date'] if !opts[:'from_posting_date'].nil?
      query_params[:'to_posting_date'] = opts[:'to_posting_date'] if !opts[:'to_posting_date'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'reference_id'] = opts[:'reference_id'] if !opts[:'reference_id'].nil?
      query_params[:'effective_date'] = opts[:'effective_date'] if !opts[:'effective_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'is_same_day'] = opts[:'is_same_day'] if !opts[:'is_same_day'].nil?
      query_params[:'originating_account_id'] = opts[:'originating_account_id'] if !opts[:'originating_account_id'].nil?
      query_params[:'from_effective_date'] = opts[:'from_effective_date'] if !opts[:'from_effective_date'].nil?
      query_params[:'customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'originating_account_owner_name'] = opts[:'originating_account_owner_name'] if !opts[:'originating_account_owner_name'].nil?
      query_params[:'to_effective_date'] = opts[:'to_effective_date'] if !opts[:'to_effective_date'].nil?
      query_params[:'dc_sign'] = opts[:'dc_sign'] if !opts[:'dc_sign'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'network_status'] = opts[:'network_status'] if !opts[:'network_status'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'posting_date'] = opts[:'posting_date'] if !opts[:'posting_date'].nil?
      query_params[:'destination_account_id'] = opts[:'destination_account_id'] if !opts[:'destination_account_id'].nil?
      query_params[:'destination_account_owner_name'] = opts[:'destination_account_owner_name'] if !opts[:'destination_account_owner_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SyncteraPayList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.get_synctera_pay_transfers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#get_synctera_pay_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Synctera Pay vendor
    # Get a Synctera Pay vendor  > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @return [SyncteraPayVendorResponse]
    def get_synctera_pay_vendor(id, opts = {})
      data, _status_code, _headers = get_synctera_pay_vendor_with_http_info(id, opts)
      data
    end

    # Get a Synctera Pay vendor
    # Get a Synctera Pay vendor  &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SyncteraPayVendorResponse, Integer, Hash)>] SyncteraPayVendorResponse data, response status code and response headers
    def get_synctera_pay_vendor_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.get_synctera_pay_vendor ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SyncteraPayApi.get_synctera_pay_vendor"
      end
      # resource path
      local_var_path = '/synctera_pay/vendors/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SyncteraPayVendorResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.get_synctera_pay_vendor",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#get_synctera_pay_vendor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Synctera Pay vendors
    # Get paginated list of Synctera Pay vendors associated  > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the Synctera Pay vendor. 
    # @option opts [String] :id Synctera Pay Vendor ID
    # @option opts [Boolean] :enabled Whether the resource is enabled. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [SyncteraPayVendorList]
    def get_synctera_pay_vendors(opts = {})
      data, _status_code, _headers = get_synctera_pay_vendors_with_http_info(opts)
      data
    end

    # List Synctera Pay vendors
    # Get paginated list of Synctera Pay vendors associated  &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name The name of the Synctera Pay vendor. 
    # @option opts [String] :id Synctera Pay Vendor ID
    # @option opts [Boolean] :enabled Whether the resource is enabled. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(SyncteraPayVendorList, Integer, Hash)>] SyncteraPayVendorList data, response status code and response headers
    def get_synctera_pay_vendors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.get_synctera_pay_vendors ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SyncteraPayApi.get_synctera_pay_vendors, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/synctera_pay/vendors'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'enabled'] = opts[:'enabled'] if !opts[:'enabled'].nil?
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
      return_type = opts[:debug_return_type] || 'SyncteraPayVendorList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.get_synctera_pay_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#get_synctera_pay_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a Synctera Pay Transfer
    # Trigger a return upon an existing Synctera Pay transfer > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [SyncteraPayResponse]
    def return_synctera_pay_transfer(id, opts = {})
      data, _status_code, _headers = return_synctera_pay_transfer_with_http_info(id, opts)
      data
    end

    # Return a Synctera Pay Transfer
    # Trigger a return upon an existing Synctera Pay transfer &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(SyncteraPayResponse, Integer, Hash)>] SyncteraPayResponse data, response status code and response headers
    def return_synctera_pay_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.return_synctera_pay_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SyncteraPayApi.return_synctera_pay_transfer"
      end
      # resource path
      local_var_path = '/synctera_pay/{id}/return'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SyncteraPayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.return_synctera_pay_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#return_synctera_pay_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Synctera Pay Transfer
    # Update a Synctera Pay transfer > 🚧 Alpha > This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [SyncteraPayPatch] :synctera_pay_patch Attributes of the Synctera Pay transfer
    # @return [SyncteraPayResponse]
    def update_synctera_pay_transfer(id, opts = {})
      data, _status_code, _headers = update_synctera_pay_transfer_with_http_info(id, opts)
      data
    end

    # Update Synctera Pay Transfer
    # Update a Synctera Pay transfer &gt; 🚧 Alpha &gt; This is an Alpha spec-only endpoint. Feedback from the community is welcome. We may make breaking changes. 
    # @param id [String] ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [SyncteraPayPatch] :synctera_pay_patch Attributes of the Synctera Pay transfer
    # @return [Array<(SyncteraPayResponse, Integer, Hash)>] SyncteraPayResponse data, response status code and response headers
    def update_synctera_pay_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SyncteraPayApi.update_synctera_pay_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SyncteraPayApi.update_synctera_pay_transfer"
      end
      # resource path
      local_var_path = '/synctera_pay/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'synctera_pay_patch'])

      # return_type
      return_type = opts[:debug_return_type] || 'SyncteraPayResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"SyncteraPayApi.update_synctera_pay_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SyncteraPayApi#update_synctera_pay_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
