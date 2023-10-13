=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::WiresApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WiresApi' do
  before do
    # run before each test
    @api_instance = Synctera::WiresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WiresApi' do
    it 'should create an instance of WiresApi' do
      expect(@api_instance).to be_instance_of(Synctera::WiresApi)
    end
  end

  # unit tests for cancel_wire
  # Cancel an outgoing wire
  # Cancel an outgoing tranfer
  # @param wire_id The unique identifier of a wire transfer.
  # @param update_transfer wire to update
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Wire]
  describe 'cancel_wire test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_wire
  # Send a wire
  # Create an outgoing wire transfer
  # @param wire_request Wire transfer request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Wire]
  describe 'create_wire test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_wire
  # Get a wire by id
  # Get a wire by id
  # @param wire_id The unique identifier of a wire transfer.
  # @param [Hash] opts the optional parameters
  # @return [Wire]
  describe 'get_wire test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_wires
  # List wires
  # Get paginated list of wires
  # @param [Hash] opts the optional parameters
  # @option opts [String] :originating_account_id The unique identifier of the originating account.
  # @option opts [String] :customer_id The unique identifier of a customer.
  # @option opts [String] :status 
  # @option opts [String] :receiving_account_id The unique identifier of the receiving account.
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @return [WireList]
  describe 'list_wires test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end