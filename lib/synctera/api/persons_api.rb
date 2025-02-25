=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class PersonsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a person
    # Create a person who may act as a personal customer or a director/officer/owner of a business. You can then verify the identity of this customer and associate them with other people and accounts. Note that if no shipping_address attribute is provided in the request, the shipping_address will be set to a copy of the legal_address. 
    # @param post_person [PostPerson] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [ResponsePerson]
    def create_person(post_person, opts = {})
      data, _status_code, _headers = create_person_with_http_info(post_person, opts)
      data
    end

    # Create a person
    # Create a person who may act as a personal customer or a director/officer/owner of a business. You can then verify the identity of this customer and associate them with other people and accounts. Note that if no shipping_address attribute is provided in the request, the shipping_address will be set to a copy of the legal_address. 
    # @param post_person [PostPerson] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(ResponsePerson, Integer, Hash)>] ResponsePerson data, response status code and response headers
    def create_person_with_http_info(post_person, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.create_person ...'
      end
      # verify the required parameter 'post_person' is set
      if @api_client.config.client_side_validation && post_person.nil?
        fail ArgumentError, "Missing the required parameter 'post_person' when calling PersonsApi.create_person"
      end
      # resource path
      local_var_path = '/persons'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_person)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsePerson'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.create_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#create_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a personal identifier
    # Create a personal identifier, e.g. SSN, for this customer
    # @param post_personal_id_w_cust [PostPersonalIdWCust] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [ResponsePersonalIdWCust]
    def create_personal_id(post_personal_id_w_cust, opts = {})
      data, _status_code, _headers = create_personal_id_with_http_info(post_personal_id_w_cust, opts)
      data
    end

    # Create a personal identifier
    # Create a personal identifier, e.g. SSN, for this customer
    # @param post_personal_id_w_cust [PostPersonalIdWCust] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(ResponsePersonalIdWCust, Integer, Hash)>] ResponsePersonalIdWCust data, response status code and response headers
    def create_personal_id_with_http_info(post_personal_id_w_cust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.create_personal_id ...'
      end
      # verify the required parameter 'post_personal_id_w_cust' is set
      if @api_client.config.client_side_validation && post_personal_id_w_cust.nil?
        fail ArgumentError, "Missing the required parameter 'post_personal_id_w_cust' when calling PersonsApi.create_personal_id"
      end
      # resource path
      local_var_path = '/persons/personal_ids'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(post_personal_id_w_cust)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsePersonalIdWCust'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.create_personal_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#create_personal_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a personal identifier
    # Delete personal identifier 
    # @param personal_id_id [String] UUID for a personal identifier.
    # @param [Hash] opts the optional parameters
    # @return [DeleteResponse]
    def delete_personal_id(personal_id_id, opts = {})
      data, _status_code, _headers = delete_personal_id_with_http_info(personal_id_id, opts)
      data
    end

    # Delete a personal identifier
    # Delete personal identifier 
    # @param personal_id_id [String] UUID for a personal identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResponse, Integer, Hash)>] DeleteResponse data, response status code and response headers
    def delete_personal_id_with_http_info(personal_id_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.delete_personal_id ...'
      end
      # verify the required parameter 'personal_id_id' is set
      if @api_client.config.client_side_validation && personal_id_id.nil?
        fail ArgumentError, "Missing the required parameter 'personal_id_id' when calling PersonsApi.delete_personal_id"
      end
      # resource path
      local_var_path = '/persons/personal_ids/{personal_id_id}'.sub('{' + 'personal_id_id' + '}', CGI.escape(personal_id_id.to_s))

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
        :operation => :"PersonsApi.delete_personal_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#delete_personal_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get person
    # Get person by ID.
    # @param person_id [String] Person&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [ResponsePerson]
    def get_person(person_id, opts = {})
      data, _status_code, _headers = get_person_with_http_info(person_id, opts)
      data
    end

    # Get person
    # Get person by ID.
    # @param person_id [String] Person&#39;s unique identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResponsePerson, Integer, Hash)>] ResponsePerson data, response status code and response headers
    def get_person_with_http_info(person_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.get_person ...'
      end
      # verify the required parameter 'person_id' is set
      if @api_client.config.client_side_validation && person_id.nil?
        fail ArgumentError, "Missing the required parameter 'person_id' when calling PersonsApi.get_person"
      end
      # resource path
      local_var_path = '/persons/{person_id}'.sub('{' + 'person_id' + '}', CGI.escape(person_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ResponsePerson'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.get_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#get_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List persons
    # Retrieves paginated list of persons associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :sort_by Specifies the sort order for the returned persons. 
    # @option opts [Boolean] :is_customer If true, show only customers. If false, show non-customer parties.
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
    # @option opts [String] :ssn_last_4 
    # @option opts [String] :last_name 
    # @option opts [PersonStatus] :status 
    # @option opts [String] :email 
    # @option opts [String] :first_name 
    # @option opts [String] :phone_number 
    # @option opts [String] :page_token 
    # @option opts [Boolean] :include_console_users includes the person representations of available console users in the person get respsonse. 
    # @option opts [Array<BanStatus>] :ban_status (beta) Ban status of the person. Multiple values can be provided as a comma-seperated list of the following: * &#x60;ALLOWED&#x60; – person is not banned or suspended * &#x60;SUSPENDED&#x60; - person is suspended * &#x60;BANNED&#x60; – person is banned 
    # @option opts [Integer] :limit  (default to 100)
    # @return [PersonList]
    def list_persons(opts = {})
      data, _status_code, _headers = list_persons_with_http_info(opts)
      data
    end

    # List persons
    # Retrieves paginated list of persons associated with the authorized requester.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :sort_by Specifies the sort order for the returned persons. 
    # @option opts [Boolean] :is_customer If true, show only customers. If false, show non-customer parties.
    # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
    # @option opts [String] :ssn_last_4 
    # @option opts [String] :last_name 
    # @option opts [PersonStatus] :status 
    # @option opts [String] :email 
    # @option opts [String] :first_name 
    # @option opts [String] :phone_number 
    # @option opts [String] :page_token 
    # @option opts [Boolean] :include_console_users includes the person representations of available console users in the person get respsonse. 
    # @option opts [Array<BanStatus>] :ban_status (beta) Ban status of the person. Multiple values can be provided as a comma-seperated list of the following: * &#x60;ALLOWED&#x60; – person is not banned or suspended * &#x60;SUSPENDED&#x60; - person is suspended * &#x60;BANNED&#x60; – person is banned 
    # @option opts [Integer] :limit  (default to 100)
    # @return [Array<(PersonList, Integer, Hash)>] PersonList data, response status code and response headers
    def list_persons_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.list_persons ...'
      end
      allowable_values = ["creation_time:asc", "creation_time:desc", "first_name:asc", "first_name:desc", "last_name:asc", "last_name:desc", "last_updated_time:asc", "last_updated_time:desc"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !opts[:'sort_by'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"sort_by\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'ssn_last_4'].nil? && opts[:'ssn_last_4'].to_s.length > 4
        fail ArgumentError, 'invalid value for "opts[:"ssn_last_4"]" when calling PersonsApi.list_persons, the character length must be smaller than or equal to 4.'
      end

      if @api_client.config.client_side_validation && !opts[:'ssn_last_4'].nil? && opts[:'ssn_last_4'].to_s.length < 4
        fail ArgumentError, 'invalid value for "opts[:"ssn_last_4"]" when calling PersonsApi.list_persons, the character length must be great than or equal to 4.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PersonsApi.list_persons, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/persons'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sort_by'] = @api_client.build_collection_param(opts[:'sort_by'], :csv) if !opts[:'sort_by'].nil?
      query_params[:'is_customer'] = opts[:'is_customer'] if !opts[:'is_customer'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'has_accounts'] = opts[:'has_accounts'] if !opts[:'has_accounts'].nil?
      query_params[:'ssn_last_4'] = opts[:'ssn_last_4'] if !opts[:'ssn_last_4'].nil?
      query_params[:'last_name'] = opts[:'last_name'] if !opts[:'last_name'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'first_name'] = opts[:'first_name'] if !opts[:'first_name'].nil?
      query_params[:'phone_number'] = opts[:'phone_number'] if !opts[:'phone_number'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'include_console_users'] = opts[:'include_console_users'] if !opts[:'include_console_users'].nil?
      query_params[:'ban_status'] = @api_client.build_collection_param(opts[:'ban_status'], :csv) if !opts[:'ban_status'].nil?
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
      return_type = opts[:debug_return_type] || 'PersonList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.list_persons",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#list_persons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update person
    # Update person by ID.  Note that if: * legal address is provided in the request, AND * shipping_address is not provided in the request, AND * the customer resource does not have shipping_address then shipping_address will be set to a copy of the legal_address. 
    # @param person_id [String] Person&#39;s unique identifier.
    # @param patch_person [PatchPerson] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [ResponsePerson]
    def update_person(person_id, patch_person, opts = {})
      data, _status_code, _headers = update_person_with_http_info(person_id, patch_person, opts)
      data
    end

    # Update person
    # Update person by ID.  Note that if: * legal address is provided in the request, AND * shipping_address is not provided in the request, AND * the customer resource does not have shipping_address then shipping_address will be set to a copy of the legal_address. 
    # @param person_id [String] Person&#39;s unique identifier.
    # @param patch_person [PatchPerson] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(ResponsePerson, Integer, Hash)>] ResponsePerson data, response status code and response headers
    def update_person_with_http_info(person_id, patch_person, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.update_person ...'
      end
      # verify the required parameter 'person_id' is set
      if @api_client.config.client_side_validation && person_id.nil?
        fail ArgumentError, "Missing the required parameter 'person_id' when calling PersonsApi.update_person"
      end
      # verify the required parameter 'patch_person' is set
      if @api_client.config.client_side_validation && patch_person.nil?
        fail ArgumentError, "Missing the required parameter 'patch_person' when calling PersonsApi.update_person"
      end
      # resource path
      local_var_path = '/persons/{person_id}'.sub('{' + 'person_id' + '}', CGI.escape(person_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_person)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsePerson'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.update_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#update_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a personal identifier
    # Update a personal identifier, e.g. SSN, for this customer
    # @param personal_id_id [String] UUID for a personal identifier.
    # @param patch_personal_id [PatchPersonalId] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [ResponsePersonalIdWCust]
    def update_personal_id(personal_id_id, patch_personal_id, opts = {})
      data, _status_code, _headers = update_personal_id_with_http_info(personal_id_id, patch_personal_id, opts)
      data
    end

    # Update a personal identifier
    # Update a personal identifier, e.g. SSN, for this customer
    # @param personal_id_id [String] UUID for a personal identifier.
    # @param patch_personal_id [PatchPersonalId] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @return [Array<(ResponsePersonalIdWCust, Integer, Hash)>] ResponsePersonalIdWCust data, response status code and response headers
    def update_personal_id_with_http_info(personal_id_id, patch_personal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonsApi.update_personal_id ...'
      end
      # verify the required parameter 'personal_id_id' is set
      if @api_client.config.client_side_validation && personal_id_id.nil?
        fail ArgumentError, "Missing the required parameter 'personal_id_id' when calling PersonsApi.update_personal_id"
      end
      # verify the required parameter 'patch_personal_id' is set
      if @api_client.config.client_side_validation && patch_personal_id.nil?
        fail ArgumentError, "Missing the required parameter 'patch_personal_id' when calling PersonsApi.update_personal_id"
      end
      # resource path
      local_var_path = '/persons/personal_ids/{personal_id_id}'.sub('{' + 'personal_id_id' + '}', CGI.escape(personal_id_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_personal_id)

      # return_type
      return_type = opts[:debug_return_type] || 'ResponsePersonalIdWCust'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonsApi.update_personal_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#update_personal_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
