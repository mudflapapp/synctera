=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::CashPickupsAlphaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CashPickupsAlphaApi' do
  before do
    # run before each test
    @api_instance = Synctera::CashPickupsAlphaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CashPickupsAlphaApi' do
    it 'should create an instance of CashPickupsAlphaApi' do
      expect(@api_instance).to be_instance_of(Synctera::CashPickupsAlphaApi)
    end
  end

  # unit tests for create_cash_pickup
  # Create a cash pickup
  # Create a cash pickup
  # @param cash_pickup_post_request cash pickup to create
  # @param [Hash] opts the optional parameters
  # @return [CashPickup]
  describe 'create_cash_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cash_pickup
  # Get a cash pickup
  # Get a cash pickup
  # @param cash_pickup_id The unique identifier of a cash pickup
  # @param [Hash] opts the optional parameters
  # @return [CashPickup]
  describe 'get_cash_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cash_pickups
  # List cash pickups
  # Get paginated list of cash pickups
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @return [CashPickupList]
  describe 'list_cash_pickups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_cash_pickup
  # Update a cash pickup
  # Update a cash pickup
  # @param cash_pickup_id The unique identifier of a cash pickup
  # @param cash_pickup_patch_request cash pickup to update
  # @param [Hash] opts the optional parameters
  # @return [CashPickup]
  describe 'patch_cash_pickup test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
