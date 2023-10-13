=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::BusinessesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BusinessesApi' do
  before do
    # run before each test
    @api_instance = Synctera::BusinessesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BusinessesApi' do
    it 'should create an instance of BusinessesApi' do
      expect(@api_instance).to be_instance_of(Synctera::BusinessesApi)
    end
  end

  # unit tests for create_business
  # Create a business
  # Create a business who may act as a customer or a related business. You can then verify the identity of this customer and associate them with other people and accounts. 
  # @param business 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Business]
  describe 'create_business test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_business
  # Get business
  # Get business by ID.
  # @param business_id Business&#39;s unique identifier.
  # @param [Hash] opts the optional parameters
  # @return [Business]
  describe 'get_business test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_businesses
  # List business
  # Retrieves paginated list of businesses associated with the authorized requester.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status 
  # @option opts [Boolean] :is_customer If true, show only customers. If false, show non-customer parties.
  # @option opts [Array<String>] :sort_by Specifies the sort order for the returned businesses. 
  # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
  # @option opts [Array<String>] :id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [String] :phone_number 
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @option opts [String] :entity_name 
  # @return [BusinessList]
  describe 'list_businesses test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_business
  # Patch business
  # Update business by ID.
  # @param business_id Business&#39;s unique identifier.
  # @param patch_business 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Business]
  describe 'update_business test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end