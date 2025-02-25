=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Synctera
  class NotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a note
    # Create a note
    # @param note_create [NoteCreate] note to create
    # @param [Hash] opts the optional parameters
    # @return [NoteResponse]
    def create_note(note_create, opts = {})
      data, _status_code, _headers = create_note_with_http_info(note_create, opts)
      data
    end

    # Create a note
    # Create a note
    # @param note_create [NoteCreate] note to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteResponse, Integer, Hash)>] NoteResponse data, response status code and response headers
    def create_note_with_http_info(note_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.create_note ...'
      end
      # verify the required parameter 'note_create' is set
      if @api_client.config.client_side_validation && note_create.nil?
        fail ArgumentError, "Missing the required parameter 'note_create' when calling NotesApi.create_note"
      end
      # resource path
      local_var_path = '/notes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_create)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NotesApi.create_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#create_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List notes
    # Get paginated list of notes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :author_user_id 
    # @option opts [Array<String>] :related_resource_id Only return notes that have a related resource with the specified ID.
    # @option opts [Array<String>] :id Return the note with the specified id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [RelatedResourceType2] :related_resource_type Only return notes that have a related resource with the specified type.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :tenant 
    # @return [NoteList]
    def list_notes(opts = {})
      data, _status_code, _headers = list_notes_with_http_info(opts)
      data
    end

    # List notes
    # Get paginated list of notes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :author_user_id 
    # @option opts [Array<String>] :related_resource_id Only return notes that have a related resource with the specified ID.
    # @option opts [Array<String>] :id Return the note with the specified id. Multiple IDs can be provided as a comma-separated list. 
    # @option opts [RelatedResourceType2] :related_resource_type Only return notes that have a related resource with the specified type.
    # @option opts [String] :page_token 
    # @option opts [Integer] :limit  (default to 100)
    # @option opts [String] :tenant 
    # @return [Array<(NoteList, Integer, Hash)>] NoteList data, response status code and response headers
    def list_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.list_notes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling NotesApi.list_notes, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/notes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'author_user_id'] = opts[:'author_user_id'] if !opts[:'author_user_id'].nil?
      query_params[:'related_resource_id'] = @api_client.build_collection_param(opts[:'related_resource_id'], :csv) if !opts[:'related_resource_id'].nil?
      query_params[:'id'] = @api_client.build_collection_param(opts[:'id'], :csv) if !opts[:'id'].nil?
      query_params[:'related_resource_type'] = opts[:'related_resource_type'] if !opts[:'related_resource_type'].nil?
      query_params[:'page_token'] = opts[:'page_token'] if !opts[:'page_token'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'tenant'] = opts[:'tenant'] if !opts[:'tenant'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NoteList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NotesApi.list_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#list_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Note
    # Update a Note by ID.
    # @param note_id [String] The unique identifier of a note
    # @param patch_note [PatchNote] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [RelatedResourceType2] :related_resource_type Only return notes that have a related resource with the specified type.
    # @return [NoteResponse]
    def patch_note(note_id, patch_note, opts = {})
      data, _status_code, _headers = patch_note_with_http_info(note_id, patch_note, opts)
      data
    end

    # Patch Note
    # Update a Note by ID.
    # @param note_id [String] The unique identifier of a note
    # @param patch_note [PatchNote] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
    # @option opts [RelatedResourceType2] :related_resource_type Only return notes that have a related resource with the specified type.
    # @return [Array<(NoteResponse, Integer, Hash)>] NoteResponse data, response status code and response headers
    def patch_note_with_http_info(note_id, patch_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotesApi.patch_note ...'
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling NotesApi.patch_note"
      end
      # verify the required parameter 'patch_note' is set
      if @api_client.config.client_side_validation && patch_note.nil?
        fail ArgumentError, "Missing the required parameter 'patch_note' when calling NotesApi.patch_note"
      end
      # resource path
      local_var_path = '/notes/{note_id}'.sub('{' + 'note_id' + '}', CGI.escape(note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'related_resource_type'] = opts[:'related_resource_type'] if !opts[:'related_resource_type'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patch_note)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"NotesApi.patch_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#patch_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
