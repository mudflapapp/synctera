=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::DisclosuresDeprecatedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DisclosuresDeprecatedApi' do
  before do
    # run before each test
    @api_instance = Synctera::DisclosuresDeprecatedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DisclosuresDeprecatedApi' do
    it 'should create an instance of DisclosuresDeprecatedApi' do
      expect(@api_instance).to be_instance_of(Synctera::DisclosuresDeprecatedApi)
    end
  end

  # unit tests for create_disclosure1
  # Create a Disclosure
  # Disclosures to be made to customers 
  # @param customer_id The customer&#39;s unique identifier
  # @param disclosure1 Disclosure to create
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Disclosure1]
  describe 'create_disclosure1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_disclosures1
  # List Disclosures
  # Retrieves paginated list of disclosures associated with the authorized requester
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @return [DisclosureResponse]
  describe 'list_disclosures1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end