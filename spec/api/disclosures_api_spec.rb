=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::DisclosuresApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DisclosuresApi' do
  before do
    # run before each test
    @api_instance = Synctera::DisclosuresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DisclosuresApi' do
    it 'should create an instance of DisclosuresApi' do
      expect(@api_instance).to be_instance_of(Synctera::DisclosuresApi)
    end
  end

  # unit tests for create_disclosure
  # Create disclosure record
  # Record the fact that a regulatory document was disclosed to a customer.
  # @param disclosure Disclosure to create.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Disclosure]
  describe 'create_disclosure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_disclosure
  # Get disclosure
  # Get disclosure by ID.
  # @param disclosure_id The unique identifier for the disclosure.
  # @param [Hash] opts the optional parameters
  # @return [Disclosure]
  describe 'get_disclosure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_disclosures
  # List disclosures
  # Retrieves paginated list of disclosures associated with the authorized requester.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :id Unique resource identifier
  # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :acknowledging_person_id Return only disclosures that have the specified acknowledging_person_id. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Integer] :limit 
  # @return [DisclosureList]
  describe 'list_disclosures test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
