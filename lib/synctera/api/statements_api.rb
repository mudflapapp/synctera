=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class StatementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a statement
    # Gets a full statement by its ID.
    # @param statement_id [String] The unique identifier of a statement
    # @param [Hash] opts the optional parameters
    # @return [Statement]
    def get_statement(statement_id, opts = {})
      data, _status_code, _headers = get_statement_with_http_info(statement_id, opts)
      data
    end

    # Get a statement
    # Gets a full statement by its ID.
    # @param statement_id [String] The unique identifier of a statement
    # @param [Hash] opts the optional parameters
    # @return [Array<(Statement, Integer, Hash)>] Statement data, response status code and response headers
    def get_statement_with_http_info(statement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatementsApi.get_statement ...'
      end
      # verify the required parameter 'statement_id' is set
      if @api_client.config.client_side_validation && statement_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_id' when calling StatementsApi.get_statement"
      end
      # resource path
      local_var_path = '/statements/{statement_id}'.sub('{' + 'statement_id' + '}', CGI.escape(statement_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Statement'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"StatementsApi.get_statement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatementsApi#get_statement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a statement's transactions
    # Gets the list of transactions for a statement's period.
    # @param statement_id [String] The unique identifier of a statement
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [TransactionList]
    def get_statement_transactions(statement_id, opts = {})
      data, _status_code, _headers = get_statement_transactions_with_http_info(statement_id, opts)
      data
    end

    # Get a statement&#39;s transactions
    # Gets the list of transactions for a statement&#39;s period.
    # @param statement_id [String] The unique identifier of a statement
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(TransactionList, Integer, Hash)>] TransactionList data, response status code and response headers
    def get_statement_transactions_with_http_info(statement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatementsApi.get_statement_transactions ...'
      end
      # verify the required parameter 'statement_id' is set
      if @api_client.config.client_side_validation && statement_id.nil?
        fail ArgumentError, "Missing the required parameter 'statement_id' when calling StatementsApi.get_statement_transactions"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling StatementsApi.get_statement_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/statements/{statement_id}/transactions'.sub('{' + 'statement_id' + '}', CGI.escape(statement_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'TransactionList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"StatementsApi.get_statement_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatementsApi#get_statement_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List statements
    # Gets a list of statement summaries for an account.
    # @param account_id [String] The account&#39;s unique identifier provided by Synctera
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [StatementList]
    def list_statements(account_id, opts = {})
      data, _status_code, _headers = list_statements_with_http_info(account_id, opts)
      data
    end

    # List statements
    # Gets a list of statement summaries for an account.
    # @param account_id [String] The account&#39;s unique identifier provided by Synctera
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(StatementList, Integer, Hash)>] StatementList data, response status code and response headers
    def list_statements_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatementsApi.list_statements ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling StatementsApi.list_statements"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling StatementsApi.list_statements, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/statements'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = account_id
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
      return_type = opts[:debug_return_type] || 'StatementList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"StatementsApi.list_statements",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatementsApi#list_statements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
