=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class PaymentSchedulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a payment schedule
    # Create a payment schedule
    # @param payment_schedule [PaymentSchedule] payment schedule to create
    # @param [Hash] opts the optional parameters
    # @return [PaymentSchedule]
    def create_payment_schedule(payment_schedule, opts = {})
      data, _status_code, _headers = create_payment_schedule_with_http_info(payment_schedule, opts)
      data
    end

    # Create a payment schedule
    # Create a payment schedule
    # @param payment_schedule [PaymentSchedule] payment schedule to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentSchedule, Integer, Hash)>] PaymentSchedule data, response status code and response headers
    def create_payment_schedule_with_http_info(payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.create_payment_schedule ...'
      end
      # verify the required parameter 'payment_schedule' is set
      if @api_client.config.client_side_validation && payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule' when calling PaymentSchedulesApi.create_payment_schedule"
      end
      # resource path
      local_var_path = '/payment_schedules'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_schedule)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentSchedule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.create_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#create_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List payment schedules
    # Get paginated list of payment schedules
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
    # @return [PaymentScheduleList]
    def list_payment_schedules(opts = {})
      data, _status_code, _headers = list_payment_schedules_with_http_info(opts)
      data
    end

    # List payment schedules
    # Get paginated list of payment schedules
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
    # @return [Array<(PaymentScheduleList, Integer, Hash)>] PaymentScheduleList data, response status code and response headers
    def list_payment_schedules_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.list_payment_schedules ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentSchedulesApi.list_payment_schedules, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment_schedules'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :csv) if !opts[:'account_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'customer_id'] = @api_client.build_collection_param(opts[:'customer_id'], :csv) if !opts[:'customer_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentScheduleList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.list_payment_schedules",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#list_payment_schedules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List payments
    # Get paginated list of payments
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :schedule_id Payment schedule IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
    # @return [PaymentList]
    def list_payments(opts = {})
      data, _status_code, _headers = list_payments_with_http_info(opts)
      data
    end

    # List payments
    # Get paginated list of payments
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :schedule_id Payment schedule IDs. Multiple IDs can be provided as a comma-separated list.
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
    # @return [Array<(PaymentList, Integer, Hash)>] PaymentList data, response status code and response headers
    def list_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.list_payments ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PaymentSchedulesApi.list_payments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payment_schedules/payments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :csv) if !opts[:'account_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'schedule_id'] = @api_client.build_collection_param(opts[:'schedule_id'], :csv) if !opts[:'schedule_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'customer_id'] = @api_client.build_collection_param(opts[:'customer_id'], :csv) if !opts[:'customer_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.list_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#list_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a payment schedule
    # Update a payment schedule
    # @param payment_schedule_id [String] Payment schedule ID
    # @param patch_payment_schedule [PatchPaymentSchedule] payment schedule to update
    # @param [Hash] opts the optional parameters
    # @return [PaymentSchedule]
    def patch_payment_schedule(payment_schedule_id, patch_payment_schedule, opts = {})
      data, _status_code, _headers = patch_payment_schedule_with_http_info(payment_schedule_id, patch_payment_schedule, opts)
      data
    end

    # Update a payment schedule
    # Update a payment schedule
    # @param payment_schedule_id [String] Payment schedule ID
    # @param patch_payment_schedule [PatchPaymentSchedule] payment schedule to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentSchedule, Integer, Hash)>] PaymentSchedule data, response status code and response headers
    def patch_payment_schedule_with_http_info(payment_schedule_id, patch_payment_schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentSchedulesApi.patch_payment_schedule ...'
      end
      # verify the required parameter 'payment_schedule_id' is set
      if @api_client.config.client_side_validation && payment_schedule_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_schedule_id' when calling PaymentSchedulesApi.patch_payment_schedule"
      end
      # verify the required parameter 'patch_payment_schedule' is set
      if @api_client.config.client_side_validation && patch_payment_schedule.nil?
        fail ArgumentError, "Missing the required parameter 'patch_payment_schedule' when calling PaymentSchedulesApi.patch_payment_schedule"
      end
      # resource path
      local_var_path = '/payment_schedules/{payment_schedule_id}'.sub('{' + 'payment_schedule_id' + '}', CGI.escape(payment_schedule_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_payment_schedule)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentSchedule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PaymentSchedulesApi.patch_payment_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentSchedulesApi#patch_payment_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
