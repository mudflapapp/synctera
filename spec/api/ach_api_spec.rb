=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::ACHApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ACHApi' do
  before do
    # run before each test
    @api_instance = Synctera::ACHApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ACHApi' do
    it 'should create an instance of ACHApi' do
      expect(@api_instance).to be_instance_of(Synctera::ACHApi)
    end
  end

  # unit tests for add_transaction_out
  # Send an ACH
  # Send an ACH 
  # @param outgoing_ach_request Send ACH request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [OutgoingAch]
  describe 'add_transaction_out test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_transaction_out
  # Get a sent ACH transaction
  # Get a single sent ACH transaction
  # @param transaction_id Transaction ID in the ledger
  # @param [Hash] opts the optional parameters
  # @return [OutgoingAch]
  describe 'get_transaction_out test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_transactions_out
  # List sent ACH transactions
  # List sent ACH transactions
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @return [OutgoingAchList]
  describe 'list_transactions_out test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_transaction_out
  # Update a sent ACH transaction
  # Update a sent ACH transaction (either status or funds availability)
  # @param transaction_id Transaction ID in the ledger
  # @param outgoing_ach_patch Update sent ach transaction
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [OutgoingAch]
  describe 'patch_transaction_out test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end