=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module Synctera
  class MonitoringApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Subscribe a customer or business to monitoring
    # This endpoint is rarely needed. Since August 2022, watchlist monitoring is automatically enabled for all businesses and customers who are verified (KYC/KYB) through Synctera's platform. 
    # @param monitoring_subscription [MonitoringSubscription] The monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [MonitoringSubscription]
    def create_subscription(monitoring_subscription, opts = {})
      data, _status_code, _headers = create_subscription_with_http_info(monitoring_subscription, opts)
      data
    end

    # Subscribe a customer or business to monitoring
    # This endpoint is rarely needed. Since August 2022, watchlist monitoring is automatically enabled for all businesses and customers who are verified (KYC/KYB) through Synctera&#39;s platform. 
    # @param monitoring_subscription [MonitoringSubscription] The monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MonitoringSubscription, Integer, Hash)>] MonitoringSubscription data, response status code and response headers
    def create_subscription_with_http_info(monitoring_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.create_subscription ...'
      end
      # verify the required parameter 'monitoring_subscription' is set
      if @api_client.config.client_side_validation && monitoring_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'monitoring_subscription' when calling MonitoringApi.create_subscription"
      end
      # resource path
      local_var_path = '/monitoring/subscriptions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(monitoring_subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'MonitoringSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.create_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete monitoring subscription
    # @param subscription_id [String] Unique identifier for monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [DeleteResponse]
    def delete_subscription(subscription_id, opts = {})
      data, _status_code, _headers = delete_subscription_with_http_info(subscription_id, opts)
      data
    end

    # Delete monitoring subscription
    # @param subscription_id [String] Unique identifier for monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResponse, Integer, Hash)>] DeleteResponse data, response status code and response headers
    def delete_subscription_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.delete_subscription ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling MonitoringApi.delete_subscription"
      end
      # resource path
      local_var_path = '/monitoring/subscriptions/{subscription_id}'.sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

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
        :operation => :"MonitoringApi.delete_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#delete_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a monitoring alert
    # @param alert_id [String] Unique identifier for this monitoring alert.
    # @param [Hash] opts the optional parameters
    # @return [MonitoringAlert]
    def get_alert(alert_id, opts = {})
      data, _status_code, _headers = get_alert_with_http_info(alert_id, opts)
      data
    end

    # Retrieve a monitoring alert
    # @param alert_id [String] Unique identifier for this monitoring alert.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MonitoringAlert, Integer, Hash)>] MonitoringAlert data, response status code and response headers
    def get_alert_with_http_info(alert_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.get_alert ...'
      end
      # verify the required parameter 'alert_id' is set
      if @api_client.config.client_side_validation && alert_id.nil?
        fail ArgumentError, "Missing the required parameter 'alert_id' when calling MonitoringApi.get_alert"
      end
      # resource path
      local_var_path = '/monitoring/alerts/{alert_id}'.sub('{' + 'alert_id' + '}', CGI.escape(alert_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MonitoringAlert'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.get_alert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#get_alert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve monitoring subscription
    # @param subscription_id [String] Unique identifier for monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [MonitoringSubscription]
    def get_subscription(subscription_id, opts = {})
      data, _status_code, _headers = get_subscription_with_http_info(subscription_id, opts)
      data
    end

    # Retrieve monitoring subscription
    # @param subscription_id [String] Unique identifier for monitoring subscription.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MonitoringSubscription, Integer, Hash)>] MonitoringSubscription data, response status code and response headers
    def get_subscription_with_http_info(subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.get_subscription ...'
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling MonitoringApi.get_subscription"
      end
      # resource path
      local_var_path = '/monitoring/subscriptions/{subscription_id}'.sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

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
      return_type = opts[:debug_return_type] || 'MonitoringSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.get_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List monitoring alerts
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [MonitoringAlertList]
    def list_alerts(opts = {})
      data, _status_code, _headers = list_alerts_with_http_info(opts)
      data
    end

    # List monitoring alerts
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(MonitoringAlertList, Integer, Hash)>] MonitoringAlertList data, response status code and response headers
    def list_alerts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.list_alerts ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MonitoringApi.list_alerts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/monitoring/alerts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'business_id'] = @api_client.build_collection_param(opts[:'business_id'], :csv) if !opts[:'business_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'person_id'] = @api_client.build_collection_param(opts[:'person_id'], :csv) if !opts[:'person_id'].nil?
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
      return_type = opts[:debug_return_type] || 'MonitoringAlertList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.list_alerts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#list_alerts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List monitoring subscriptions
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [MonitoringSubscriptionList]
    def list_subscriptions(opts = {})
      data, _status_code, _headers = list_subscriptions_with_http_info(opts)
      data
    end

    # List monitoring subscriptions
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(MonitoringSubscriptionList, Integer, Hash)>] MonitoringSubscriptionList data, response status code and response headers
    def list_subscriptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.list_subscriptions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling MonitoringApi.list_subscriptions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/monitoring/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'business_id'] = @api_client.build_collection_param(opts[:'business_id'], :csv) if !opts[:'business_id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'person_id'] = @api_client.build_collection_param(opts[:'person_id'], :csv) if !opts[:'person_id'].nil?
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
      return_type = opts[:debug_return_type] || 'MonitoringSubscriptionList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.list_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#list_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a monitoring alert
    # @param alert_id [String] Unique identifier for this monitoring alert.
    # @param monitoring_alert [MonitoringAlert] Monitoring alert to update.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_alert(alert_id, monitoring_alert, opts = {})
      update_alert_with_http_info(alert_id, monitoring_alert, opts)
      nil
    end

    # Update a monitoring alert
    # @param alert_id [String] Unique identifier for this monitoring alert.
    # @param monitoring_alert [MonitoringAlert] Monitoring alert to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_alert_with_http_info(alert_id, monitoring_alert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonitoringApi.update_alert ...'
      end
      # verify the required parameter 'alert_id' is set
      if @api_client.config.client_side_validation && alert_id.nil?
        fail ArgumentError, "Missing the required parameter 'alert_id' when calling MonitoringApi.update_alert"
      end
      # verify the required parameter 'monitoring_alert' is set
      if @api_client.config.client_side_validation && monitoring_alert.nil?
        fail ArgumentError, "Missing the required parameter 'monitoring_alert' when calling MonitoringApi.update_alert"
      end
      # resource path
      local_var_path = '/monitoring/alerts/{alert_id}'.sub('{' + 'alert_id' + '}', CGI.escape(alert_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(monitoring_alert)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"MonitoringApi.update_alert",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonitoringApi#update_alert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
