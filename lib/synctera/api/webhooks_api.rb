=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a secret
    # Create a webhook secret. The secret will be used to verify all subsequent webhook request signature.
    # @param [Hash] opts the optional parameters
    # @return [CreateSecret201Response]
    def create_secret(opts = {})
      data, _status_code, _headers = create_secret_with_http_info(opts)
      data
    end

    # Create a secret
    # Create a webhook secret. The secret will be used to verify all subsequent webhook request signature.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSecret201Response, Integer, Hash)>] CreateSecret201Response data, response status code and response headers
    def create_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_secret ...'
      end
      # resource path
      local_var_path = '/webhook_secrets'

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
      return_type = opts[:debug_return_type] || 'CreateSecret201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.create_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a webhook
    # Create a webhook
    # @param webhook [Webhook] Webhook to create
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def create_webhook(webhook, opts = {})
      data, _status_code, _headers = create_webhook_with_http_info(webhook, opts)
      data
    end

    # Create a webhook
    # Create a webhook
    # @param webhook [Webhook] Webhook to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def create_webhook_with_http_info(webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.create_webhook ...'
      end
      # verify the required parameter 'webhook' is set
      if @api_client.config.client_side_validation && webhook.nil?
        fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.create_webhook"
      end
      # resource path
      local_var_path = '/webhooks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook)

      # return_type
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.create_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook
    # Delete a webhook
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [DeleteResponse]
    def delete_webhook(webhook_id, opts = {})
      data, _status_code, _headers = delete_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Delete a webhook
    # Delete a webhook
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResponse, Integer, Hash)>] DeleteResponse data, response status code and response headers
    def delete_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.delete_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.delete_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhook_id}'.sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.delete_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhook event
    # Get webhook event by ID
    # @param event_id [String] Webhook event ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [Event]
    def get_event(event_id, webhook_id, opts = {})
      data, _status_code, _headers = get_event_with_http_info(event_id, webhook_id, opts)
      data
    end

    # Get webhook event
    # Get webhook event by ID
    # @param event_id [String] Webhook event ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Event, Integer, Hash)>] Event data, response status code and response headers
    def get_event_with_http_info(event_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WebhooksApi.get_event"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_event"
      end
      # resource path
      local_var_path = '/webhooks/{webhook_id}/events/{event_id}'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s)).sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Event'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook
    # Get a webhook
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def get_webhook(webhook_id, opts = {})
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook
    # Get a webhook
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def get_webhook_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.get_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.get_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhook_id}'.sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.get_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List webhook events
    # List webhook events. This response will not associate with the event response history.
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :start_time Start time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
    # @option opts [Date] :end_date End date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. end_date is alias of end_time and is deprecated. Please use end_time instead.
    # @option opts [Time] :end_time End time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
    # @option opts [String] :page_token 
    # @option opts [String] :resource_id Limit returned events to those that occurred on the specified resource.
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Date] :start_date Start date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. start_date is alias of start_time and is deprecated. Please use start_time instead.
    # @return [EventList]
    def list_events(webhook_id, opts = {})
      data, _status_code, _headers = list_events_with_http_info(webhook_id, opts)
      data
    end

    # List webhook events
    # List webhook events. This response will not associate with the event response history.
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :start_time Start time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
    # @option opts [Date] :end_date End date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. end_date is alias of end_time and is deprecated. Please use end_time instead.
    # @option opts [Time] :end_time End time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
    # @option opts [String] :page_token 
    # @option opts [String] :resource_id Limit returned events to those that occurred on the specified resource.
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Date] :start_date Start date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. start_date is alias of start_time and is deprecated. Please use start_time instead.
    # @return [Array<(EventList, Integer, Hash)>] EventList data, response status code and response headers
    def list_events_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.list_events ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.list_events"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.list_events, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/webhooks/{webhook_id}/events'.sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_time'] = opts[:'start_time'] if !opts[:'start_time'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'end_time'] = opts[:'end_time'] if !opts[:'end_time'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'resource_id'] = opts[:'resource_id'] if !opts[:'resource_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EventList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.list_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#list_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List webhooks
    # List all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Boolean] :is_enabled_only 
    # @option opts [Integer] :limit  (default to 100)
    # @return [WebhookList]
    def list_webhooks(opts = {})
      data, _status_code, _headers = list_webhooks_with_http_info(opts)
      data
    end

    # List webhooks
    # List all webhooks
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Boolean] :is_enabled_only 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(WebhookList, Integer, Hash)>] WebhookList data, response status code and response headers
    def list_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.list_webhooks ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhooksApi.list_webhooks, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'is_enabled_only'] = opts[:'is_enabled_only'] if !opts[:'is_enabled_only'].nil?
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
      return_type = opts[:debug_return_type] || 'WebhookList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.list_webhooks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#list_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Replace an existing secret
    # Replace an existing webhook secret immediately or as part of rotation. This new secret will be used to verify all subsequent webhook request signature.
    # @param replace_secret_request [ReplaceSecretRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ReplaceSecret200Response]
    def replace_secret(replace_secret_request, opts = {})
      data, _status_code, _headers = replace_secret_with_http_info(replace_secret_request, opts)
      data
    end

    # Replace an existing secret
    # Replace an existing webhook secret immediately or as part of rotation. This new secret will be used to verify all subsequent webhook request signature.
    # @param replace_secret_request [ReplaceSecretRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReplaceSecret200Response, Integer, Hash)>] ReplaceSecret200Response data, response status code and response headers
    def replace_secret_with_http_info(replace_secret_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.replace_secret ...'
      end
      # verify the required parameter 'replace_secret_request' is set
      if @api_client.config.client_side_validation && replace_secret_request.nil?
        fail ArgumentError, "Missing the required parameter 'replace_secret_request' when calling WebhooksApi.replace_secret"
      end
      # resource path
      local_var_path = '/webhook_secrets'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(replace_secret_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ReplaceSecret200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.replace_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#replace_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resend an event
    # Resend a webhook event
    # @param event_id [String] Webhook event ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Delay the event triggering in seconds. Events are checked once a minute, so a short delay may not result in an immediate resend.
    # @return [Event]
    def resend_event(event_id, webhook_id, opts = {})
      data, _status_code, _headers = resend_event_with_http_info(event_id, webhook_id, opts)
      data
    end

    # Resend an event
    # Resend a webhook event
    # @param event_id [String] Webhook event ID
    # @param webhook_id [String] Webhook ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delay Delay the event triggering in seconds. Events are checked once a minute, so a short delay may not result in an immediate resend.
    # @return [Array<(Event, Integer, Hash)>] Event data, response status code and response headers
    def resend_event_with_http_info(event_id, webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.resend_event ...'
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WebhooksApi.resend_event"
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.resend_event"
      end
      if @api_client.config.client_side_validation && !opts[:'delay'].nil? && opts[:'delay'] > 3600
        fail ArgumentError, 'invalid value for "opts[:"delay"]" when calling WebhooksApi.resend_event, must be smaller than or equal to 3600.'
      end

      if @api_client.config.client_side_validation && !opts[:'delay'].nil? && opts[:'delay'] < 0
        fail ArgumentError, 'invalid value for "opts[:"delay"]" when calling WebhooksApi.resend_event, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/webhooks/{webhook_id}/events/{event_id}/resend'.sub('{' + 'event_id' + '}', CGI.escape(event_id.to_s)).sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'delay'] = opts[:'delay'] if !opts[:'delay'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Event'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.resend_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#resend_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Revoke the secret
    # Revoke the existing webhook secret. If this is called at the rolling secret time, then both old and new secrets will be revoked
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :old_secret_only 
    # @return [nil]
    def revoke_secret(opts = {})
      revoke_secret_with_http_info(opts)
      nil
    end

    # Revoke the secret
    # Revoke the existing webhook secret. If this is called at the rolling secret time, then both old and new secrets will be revoked
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :old_secret_only 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def revoke_secret_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.revoke_secret ...'
      end
      # resource path
      local_var_path = '/webhook_secrets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'old_secret_only'] = opts[:'old_secret_only'] if !opts[:'old_secret_only'].nil?

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
        :operation => :"WebhooksApi.revoke_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#revoke_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Trigger an event
    # Trigger an specific event for webhook testing purpose
    # @param trigger_event_request [TriggerEventRequest] Provide an event type to trigger
    # @param [Hash] opts the optional parameters
    # @return [EventTrigger]
    def trigger_event(trigger_event_request, opts = {})
      data, _status_code, _headers = trigger_event_with_http_info(trigger_event_request, opts)
      data
    end

    # Trigger an event
    # Trigger an specific event for webhook testing purpose
    # @param trigger_event_request [TriggerEventRequest] Provide an event type to trigger
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventTrigger, Integer, Hash)>] EventTrigger data, response status code and response headers
    def trigger_event_with_http_info(trigger_event_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.trigger_event ...'
      end
      # verify the required parameter 'trigger_event_request' is set
      if @api_client.config.client_side_validation && trigger_event_request.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_event_request' when calling WebhooksApi.trigger_event"
      end
      # resource path
      local_var_path = '/webhooks/trigger'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trigger_event_request)

      # return_type
      return_type = opts[:debug_return_type] || 'EventTrigger'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.trigger_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#trigger_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # Update a webhook
    # @param webhook_id [String] Webhook ID
    # @param webhook [Webhook] Webhook to update
    # @param [Hash] opts the optional parameters
    # @return [Webhook]
    def update_webhook(webhook_id, webhook, opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(webhook_id, webhook, opts)
      data
    end

    # Update a webhook
    # Update a webhook
    # @param webhook_id [String] Webhook ID
    # @param webhook [Webhook] Webhook to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(Webhook, Integer, Hash)>] Webhook data, response status code and response headers
    def update_webhook_with_http_info(webhook_id, webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.update_webhook ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.update_webhook"
      end
      # verify the required parameter 'webhook' is set
      if @api_client.config.client_side_validation && webhook.nil?
        fail ArgumentError, "Missing the required parameter 'webhook' when calling WebhooksApi.update_webhook"
      end
      # resource path
      local_var_path = '/webhooks/{webhook_id}'.sub('{' + 'webhook_id' + '}', CGI.escape(webhook_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook)

      # return_type
      return_type = opts[:debug_return_type] || 'Webhook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
