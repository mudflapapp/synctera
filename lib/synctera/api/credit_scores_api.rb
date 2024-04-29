=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Synctera
  class CreditScoresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a credit score and associate it with a customer
    # Credit score under customers that can link to accounts and applications 
    # @param credit_score [CreditScore] credit score to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [CreditScoreResponse]
    def create_credit_scores(credit_score, opts = {})
      data, _status_code, _headers = create_credit_scores_with_http_info(credit_score, opts)
      data
    end

    # Create a credit score and associate it with a customer
    # Credit score under customers that can link to accounts and applications 
    # @param credit_score [CreditScore] credit score to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(CreditScoreResponse, Integer, Hash)>] CreditScoreResponse data, response status code and response headers
    def create_credit_scores_with_http_info(credit_score, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditScoresApi.create_credit_scores ...'
      end
      # verify the required parameter 'credit_score' is set
      if @api_client.config.client_side_validation && credit_score.nil?
        fail ArgumentError, "Missing the required parameter 'credit_score' when calling CreditScoresApi.create_credit_scores"
      end
      # resource path
      local_var_path = '/credit_scores'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(credit_score)

      # return_type
      return_type = opts[:debug_return_type] || 'CreditScoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditScoresApi.create_credit_scores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditScoresApi#create_credit_scores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a credit score
    # @param credit_score_id [String] The unique identifier of a credit score
    # @param [Hash] opts the optional parameters
    # @return [CreditScoreResponse]
    def get_credit_score(credit_score_id, opts = {})
      data, _status_code, _headers = get_credit_score_with_http_info(credit_score_id, opts)
      data
    end

    # Retrieve a credit score
    # @param credit_score_id [String] The unique identifier of a credit score
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreditScoreResponse, Integer, Hash)>] CreditScoreResponse data, response status code and response headers
    def get_credit_score_with_http_info(credit_score_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditScoresApi.get_credit_score ...'
      end
      # verify the required parameter 'credit_score_id' is set
      if @api_client.config.client_side_validation && credit_score_id.nil?
        fail ArgumentError, "Missing the required parameter 'credit_score_id' when calling CreditScoresApi.get_credit_score"
      end
      # resource path
      local_var_path = '/credit_scores/{credit_score_id}'.sub('{' + 'credit_score_id' + '}', CGI.escape(credit_score_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CreditScoreResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditScoresApi.get_credit_score",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditScoresApi#get_credit_score\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List credit scores
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Return the credit score with the specified id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id Return the credit scores associated with the specified customer. Multiple IDs can be provided as a comma-separated list. 
    # @return [CreditScoreList]
    def list_credit_scores(opts = {})
      data, _status_code, _headers = list_credit_scores_with_http_info(opts)
      data
    end

    # List credit scores
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :id Return the credit score with the specified id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [Array<String>] :customer_id Return the credit scores associated with the specified customer. Multiple IDs can be provided as a comma-separated list. 
    # @return [Array<(CreditScoreList, Integer, Hash)>] CreditScoreList data, response status code and response headers
    def list_credit_scores_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CreditScoresApi.list_credit_scores ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CreditScoresApi.list_credit_scores, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/credit_scores'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'customer_id'] = @api_client.build_collection_param(opts[:'customer_id'], :csv) if !opts[:'customer_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CreditScoreList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"CreditScoresApi.list_credit_scores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CreditScoresApi#list_credit_scores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end