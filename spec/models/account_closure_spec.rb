=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Synctera::AccountClosure
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Synctera::AccountClosure do
  let(:instance) { Synctera::AccountClosure.new }

  describe 'test an instance of AccountClosure' do
    it 'should create an instance of AccountClosure' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Synctera::AccountClosure)
    end
  end

  describe 'test attribute "case_ids"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "destination_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "payment_method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACH", "EXTERNAL", "INTERNAL_TRANSFER_TO_CUSTOMER_ACCOUNT", "INTERNAL_TRANSFER_TO_INTERNAL_ACCOUNT"])
      # validator.allowable_values.each do |value|
      #   expect { instance.payment_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reason_details"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "validation_responses"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
