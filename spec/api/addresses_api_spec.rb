=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::AddressesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AddressesApi' do
  before do
    # run before each test
    @api_instance = Synctera::AddressesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressesApi' do
    it 'should create an instance of AddressesApi' do
      expect(@api_instance).to be_instance_of(Synctera::AddressesApi)
    end
  end

  # unit tests for create_address
  # Create a address
  # Create a address.
  # @param address_post Address to create
  # @param [Hash] opts the optional parameters
  # @return [AddressResponse]
  describe 'create_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_address
  # Get address information by id
  # Get address information by its unique identifier
  # @param address_id ID of the address
  # @param [Hash] opts the optional parameters
  # @return [AddressResponse]
  describe 'get_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_addresses
  # List Addresses
  # @param [Hash] opts the optional parameters
  # @option opts [String] :country Country code. 
  # @option opts [String] :business_id The unique identifier for business
  # @option opts [String] :customer_id The unique identifier for customer
  # @option opts [String] :page_token 
  # @option opts [Boolean] :is_active 
  # @option opts [Integer] :limit 
  # @option opts [String] :address_type Specifies the address type. 
  # @return [AddressesList]
  describe 'list_addresses test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_address
  # Update address information by id
  # Update address 
  # @param address_id ID of the address
  # @param body Address patch details
  # @param [Hash] opts the optional parameters
  # @return [AddressResponse]
  describe 'update_address test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end