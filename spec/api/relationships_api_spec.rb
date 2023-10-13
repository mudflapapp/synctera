=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::RelationshipsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RelationshipsApi' do
  before do
    # run before each test
    @api_instance = Synctera::RelationshipsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RelationshipsApi' do
    it 'should create an instance of RelationshipsApi' do
      expect(@api_instance).to be_instance_of(Synctera::RelationshipsApi)
    end
  end

  # unit tests for create_relationship
  # Create a relationship
  # Create a party relationship.
  # @param relationship_in Party relationship to create.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [RelationshipIn]
  describe 'create_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_relationship
  # Delete relationship
  # Delete party relationship by ID.
  # @param relationship_id Relationship ID.
  # @param [Hash] opts the optional parameters
  # @return [DeleteResponse]
  describe 'delete_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_relationship
  # Get relationship
  # Get relationship by ID.
  # @param relationship_id Relationship ID.
  # @param [Hash] opts the optional parameters
  # @return [RelationshipIn]
  describe 'get_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_relationships
  # List relationships
  # Retrieves paginated list of relationships viewable by the authorized requester.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :to_business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :from_person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :relationship_type The relationship type, any of the following.  All direct businesses customers need at least one beneficial owner or controlling person. * &#x60;BENEFICIAL_OWNER_OF&#x60; – a person who directly or indirectly owns a portion of the business. * &#x60;MANAGING_PERSON_OF&#x60; – a person who is an officer, director, or controlling person of an organization. * &#x60;OWNER_OF&#x60; – a business with ownership of another business. 
  # @option opts [Array<String>] :from_business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :id Unique resource identifier
  # @option opts [Integer] :limit 
  # @return [RelationshipsList]
  describe 'list_relationships test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_relationship
  # Update relationship
  # Update relationship by ID.
  # @param relationship_id Relationship ID.
  # @param patch_relationship_in 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [PatchRelationshipIn]
  describe 'update_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end