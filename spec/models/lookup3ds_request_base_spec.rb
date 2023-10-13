=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Synctera::Lookup3dsRequestBase
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Synctera::Lookup3dsRequestBase do
  let(:instance) { Synctera::Lookup3dsRequestBase.new }

  describe 'test an instance of Lookup3dsRequestBase' do
    it 'should create an instance of Lookup3dsRequestBase' do
      expect(instance).to be_instance_of(Synctera::Lookup3dsRequestBase)
    end
  end
  describe 'test attribute "authentication_indicator"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["INSTALLMENT", "PAYMENT", "RECURRING"])
      # validator.allowable_values.each do |value|
      #   expect { instance.authentication_indicator = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "device_channel"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BROWSER", "SDK"])
      # validator.allowable_values.each do |value|
      #   expect { instance.device_channel = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "transaction_mode"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["COMPUTER_DEVICE", "MOBILE_DEVICE", "TABLET_DEVICE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.transaction_mode = value }.not_to raise_error
      # end
    end
  end

end
