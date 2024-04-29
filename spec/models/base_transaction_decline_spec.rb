=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Synctera::BaseTransactionDecline
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Synctera::BaseTransactionDecline do
  let(:instance) { Synctera::BaseTransactionDecline.new }

  describe 'test an instance of BaseTransactionDecline' do
    it 'should create an instance of BaseTransactionDecline' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Synctera::BaseTransactionDecline)
    end
  end

  describe 'test attribute "decline_details"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACH_RETURN", "BALANCE_VIOLATION", "DISABLED_PAYMENT_TYPE", "DUPLICATE_TRANSACTION", "GATEWAY_DECLINED", "GATEWAY_ERROR", "INSUFFICIENT_FUNDS", "NETWORK_DECLINED", "OTHER", "SUSPECTED_FRAUD", "TRANSACTION_NOT_PERMITTED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.reason = value }.not_to raise_error
      # end
    end
  end

end
