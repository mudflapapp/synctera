=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::WireTransactionSimulationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WireTransactionSimulationsApi' do
  before do
    # run before each test
    @api_instance = Synctera::WireTransactionSimulationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WireTransactionSimulationsApi' do
    it 'should create an instance of WireTransactionSimulationsApi' do
      expect(@api_instance).to be_instance_of(Synctera::WireTransactionSimulationsApi)
    end
  end

  # unit tests for wire_return_simulation
  # Simulate receiving Wire transfer return
  # Use to simulate receiving a Wire transfer return in test environments. Creates an incoming Wire file with a single return entry based on a previously created outgoing transaction. The file gets automatically processed.
  # @param wire_return_simulation_request Incoming Wire return simulation request
  # @param [Hash] opts the optional parameters
  # @return [WireSimulationResponse]
  describe 'wire_return_simulation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wire_transaction_simulation
  # Simulate receiving Wire transaction
  # Use to simulate receiving Wire transaction in test environments. Creates an incoming Wire file, which gets automatically processed.
  # @param wire_transaction_simulation_request Incoming Wire simulation request
  # @param [Hash] opts the optional parameters
  # @return [WireSimulationResponse]
  describe 'wire_transaction_simulation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
