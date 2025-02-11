=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class TransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a pending transaction
    # Get a pending transaction by its uuid 
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [PendingTransaction]
    def get_pending_transaction_by_id(id, opts = {})
      data, _status_code, _headers = get_pending_transaction_by_id_with_http_info(id, opts)
      data
    end

    # Get a pending transaction
    # Get a pending transaction by its uuid 
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PendingTransaction, Integer, Hash)>] PendingTransaction data, response status code and response headers
    def get_pending_transaction_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_pending_transaction_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.get_pending_transaction_by_id"
      end
      # resource path
      local_var_path = '/transactions/pending/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PendingTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TransactionsApi.get_pending_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_pending_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a posted transaction
    # Get a posted transaction by its uuid 
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [PostedTransaction]
    def get_posted_transaction_by_id(id, opts = {})
      data, _status_code, _headers = get_posted_transaction_by_id_with_http_info(id, opts)
      data
    end

    # Get a posted transaction
    # Get a posted transaction by its uuid 
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PostedTransaction, Integer, Hash)>] PostedTransaction data, response status code and response headers
    def get_posted_transaction_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_posted_transaction_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionsApi.get_posted_transaction_by_id"
      end
      # resource path
      local_var_path = '/transactions/posted/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'PostedTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TransactionsApi.get_posted_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_posted_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Transactions From Batch Payments Templates
    # Get all transactions that have the potential to be included in a batch payment. 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled 
    # @return [PostedTransactions]
    def get_transactions_batch_payments(opts = {})
      data, _status_code, _headers = get_transactions_batch_payments_with_http_info(opts)
      data
    end

    # Get Transactions From Batch Payments Templates
    # Get all transactions that have the potential to be included in a batch payment. 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :enabled 
    # @return [Array<(PostedTransactions, Integer, Hash)>] PostedTransactions data, response status code and response headers
    def get_transactions_batch_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.get_transactions_batch_payments ...'
      end
      # resource path
      local_var_path = '/transactions/batchable'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'enabled'] = opts[:'enabled'] if !opts[:'enabled'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PostedTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TransactionsApi.get_transactions_batch_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#get_transactions_batch_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List pending transactions
    # Get paginated list of pending transactions matching the provided filters 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_child_transactions Include transactions from sub-accounts when listing transactions for a given account
    # @option opts [Array<String>] :status The status of the transaction
    # @option opts [Array<String>] :account_id Account ID
    # @option opts [Date] :from_date Only display transactions with a posting date greater than from_date
    # @option opts [Date] :to_date Only display transactions with a posting date less than or equal to to_date
    # @option opts [String] :transaction_id Only display holds linked to the provided transaction id
    # @option opts [String] :type Only display transactions matching the given type
    # @option opts [Array<String>] :idempotency_key Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
    # @option opts [String] :account_no Account number
    # @option opts [Boolean] :exclude_jit_transactions Hide \&quot;JIT funding\&quot; transactions from results
    # @option opts [Array<String>] :uuid Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [String] :card_id Card ID
    # @option opts [String] :reference_id Reference ID
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :subtype Only display transactions matching the given subtype
    # @return [PendingTransactions]
    def list_pending_transactions(opts = {})
      data, _status_code, _headers = list_pending_transactions_with_http_info(opts)
      data
    end

    # List pending transactions
    # Get paginated list of pending transactions matching the provided filters 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_child_transactions Include transactions from sub-accounts when listing transactions for a given account
    # @option opts [Array<String>] :status The status of the transaction
    # @option opts [Array<String>] :account_id Account ID
    # @option opts [Date] :from_date Only display transactions with a posting date greater than from_date
    # @option opts [Date] :to_date Only display transactions with a posting date less than or equal to to_date
    # @option opts [String] :transaction_id Only display holds linked to the provided transaction id
    # @option opts [String] :type Only display transactions matching the given type
    # @option opts [Array<String>] :idempotency_key Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
    # @option opts [String] :account_no Account number
    # @option opts [Boolean] :exclude_jit_transactions Hide \&quot;JIT funding\&quot; transactions from results
    # @option opts [Array<String>] :uuid Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [String] :card_id Card ID
    # @option opts [String] :reference_id Reference ID
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :subtype Only display transactions matching the given subtype
    # @return [Array<(PendingTransactions, Integer, Hash)>] PendingTransactions data, response status code and response headers
    def list_pending_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.list_pending_transactions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsApi.list_pending_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/transactions/pending'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_child_transactions'] = opts[:'include_child_transactions'] if !opts[:'include_child_transactions'].nil?
      query_params[:'status'] = @api_client.build_collection_param(opts[:'status'], :csv) if !opts[:'status'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :csv) if !opts[:'account_id'].nil?
      query_params[:'from_date'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'to_date'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'transaction_id'] = opts[:'transaction_id'] if !opts[:'transaction_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'idempotency_key'] = @api_client.build_collection_param(opts[:'idempotency_key'], :csv) if !opts[:'idempotency_key'].nil?
      query_params[:'account_no'] = opts[:'account_no'] if !opts[:'account_no'].nil?
      query_params[:'exclude_jit_transactions'] = opts[:'exclude_jit_transactions'] if !opts[:'exclude_jit_transactions'].nil?
      query_params[:'uuid'] = @api_client.build_collection_param(opts[:'uuid'], :csv) if !opts[:'uuid'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'card_id'] = opts[:'card_id'] if !opts[:'card_id'].nil?
      query_params[:'reference_id'] = opts[:'reference_id'] if !opts[:'reference_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'subtype'] = opts[:'subtype'] if !opts[:'subtype'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PendingTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TransactionsApi.list_pending_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#list_pending_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List posted transactions
    # Get paginated list of posted transactions matching the provided filters 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_batched If true, only display transactions that are part of a batch payment. Cannot be used with batch_ids.
    # @option opts [Boolean] :include_child_transactions Include transactions from sub-accounts when listing transactions for a given account
    # @option opts [Array<String>] :account_id Account ID
    # @option opts [Array<String>] :batch_ids Batch UUID(s). Multiple UUIDs can be provided as a comma-separated list. Cannot be used with is_batched.
    # @option opts [Date] :from_date Only display transactions with a posting date greater than from_date
    # @option opts [Date] :to_date Only display transactions with a posting date less than or equal to to_date
    # @option opts [String] :dc_sign Debit/Credit sign
    # @option opts [String] :type Only display transactions matching the given type
    # @option opts [Array<String>] :idempotency_key Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
    # @option opts [String] :account_no Account number
    # @option opts [Boolean] :exclude_jit_transactions Hide \&quot;JIT funding\&quot; transactions from results
    # @option opts [Array<String>] :uuid Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [String] :card_id Card ID
    # @option opts [String] :reference_id Reference ID
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :subtype Only display transactions matching the given subtype
    # @return [PostedTransactions]
    def list_posted_transactions(opts = {})
      data, _status_code, _headers = list_posted_transactions_with_http_info(opts)
      data
    end

    # List posted transactions
    # Get paginated list of posted transactions matching the provided filters 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_batched If true, only display transactions that are part of a batch payment. Cannot be used with batch_ids.
    # @option opts [Boolean] :include_child_transactions Include transactions from sub-accounts when listing transactions for a given account
    # @option opts [Array<String>] :account_id Account ID
    # @option opts [Array<String>] :batch_ids Batch UUID(s). Multiple UUIDs can be provided as a comma-separated list. Cannot be used with is_batched.
    # @option opts [Date] :from_date Only display transactions with a posting date greater than from_date
    # @option opts [Date] :to_date Only display transactions with a posting date less than or equal to to_date
    # @option opts [String] :dc_sign Debit/Credit sign
    # @option opts [String] :type Only display transactions matching the given type
    # @option opts [Array<String>] :idempotency_key Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
    # @option opts [String] :account_no Account number
    # @option opts [Boolean] :exclude_jit_transactions Hide \&quot;JIT funding\&quot; transactions from results
    # @option opts [Array<String>] :uuid Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list.
    # @option opts [String] :page_token 
    # @option opts [String] :card_id Card ID
    # @option opts [String] :reference_id Reference ID
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :subtype Only display transactions matching the given subtype
    # @return [Array<(PostedTransactions, Integer, Hash)>] PostedTransactions data, response status code and response headers
    def list_posted_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsApi.list_posted_transactions ...'
      end
      allowable_values = ["credit", "debit"]
      if @api_client.config.client_side_validation && opts[:'dc_sign'] && !allowable_values.include?(opts[:'dc_sign'])
        fail ArgumentError, "invalid value for \"dc_sign\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionsApi.list_posted_transactions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/transactions/posted'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_batched'] = opts[:'is_batched'] if !opts[:'is_batched'].nil?
      query_params[:'include_child_transactions'] = opts[:'include_child_transactions'] if !opts[:'include_child_transactions'].nil?
      query_params[:'account_id'] = @api_client.build_collection_param(opts[:'account_id'], :csv) if !opts[:'account_id'].nil?
      query_params[:'batch_ids'] = @api_client.build_collection_param(opts[:'batch_ids'], :csv) if !opts[:'batch_ids'].nil?
      query_params[:'from_date'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'to_date'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'dc_sign'] = opts[:'dc_sign'] if !opts[:'dc_sign'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'idempotency_key'] = @api_client.build_collection_param(opts[:'idempotency_key'], :csv) if !opts[:'idempotency_key'].nil?
      query_params[:'account_no'] = opts[:'account_no'] if !opts[:'account_no'].nil?
      query_params[:'exclude_jit_transactions'] = opts[:'exclude_jit_transactions'] if !opts[:'exclude_jit_transactions'].nil?
      query_params[:'uuid'] = @api_client.build_collection_param(opts[:'uuid'], :csv) if !opts[:'uuid'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'card_id'] = opts[:'card_id'] if !opts[:'card_id'].nil?
      query_params[:'reference_id'] = opts[:'reference_id'] if !opts[:'reference_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'subtype'] = opts[:'subtype'] if !opts[:'subtype'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PostedTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TransactionsApi.list_posted_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsApi#list_posted_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
