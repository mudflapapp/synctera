=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::PaymentSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentSchedulesApi' do
  before do
    # run before each test
    @api_instance = Synctera::PaymentSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentSchedulesApi' do
    it 'should create an instance of PaymentSchedulesApi' do
      expect(@api_instance).to be_instance_of(Synctera::PaymentSchedulesApi)
    end
  end

  # unit tests for create_payment_schedule
  # Create a payment schedule
  # Create a payment schedule
  # @param payment_schedule payment schedule to create
  # @param [Hash] opts the optional parameters
  # @return [PaymentSchedule]
  describe 'create_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_payment_schedules
  # List payment schedules
  # Get paginated list of payment schedules
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
  # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
  # @return [PaymentScheduleList]
  describe 'list_payment_schedules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_payments
  # List payments
  # Get paginated list of payments
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :account_id Originating account IDs. Multiple IDs can be provided as a comma-separated list.
  # @option opts [Array<String>] :id IDs. Multiple IDs can be provided as a comma-separated list.
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :schedule_id Payment schedule IDs. Multiple IDs can be provided as a comma-separated list.
  # @option opts [Integer] :limit 
  # @option opts [Array<String>] :customer_id The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
  # @return [PaymentList]
  describe 'list_payments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_payment_schedule
  # Update a payment schedule
  # Update a payment schedule
  # @param payment_schedule_id Payment schedule ID
  # @param patch_payment_schedule payment schedule to update
  # @param [Hash] opts the optional parameters
  # @return [PaymentSchedule]
  describe 'patch_payment_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end