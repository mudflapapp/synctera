=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::MonitoringApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MonitoringApi' do
  before do
    # run before each test
    @api_instance = Synctera::MonitoringApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MonitoringApi' do
    it 'should create an instance of MonitoringApi' do
      expect(@api_instance).to be_instance_of(Synctera::MonitoringApi)
    end
  end

  # unit tests for create_subscription
  # Subscribe a customer or business to monitoring
  # This endpoint is rarely needed. Since August 2022, watchlist monitoring is automatically enabled for all businesses and customers who are verified (KYC/KYB) through Synctera&#39;s platform. 
  # @param monitoring_subscription The monitoring subscription.
  # @param [Hash] opts the optional parameters
  # @return [MonitoringSubscription]
  describe 'create_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscription
  # Delete monitoring subscription
  # @param subscription_id Unique identifier for monitoring subscription.
  # @param [Hash] opts the optional parameters
  # @return [DeleteResponse]
  describe 'delete_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_alert
  # Retrieve a monitoring alert
  # @param alert_id Unique identifier for this monitoring alert.
  # @param [Hash] opts the optional parameters
  # @return [MonitoringAlert]
  describe 'get_alert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscription
  # Retrieve monitoring subscription
  # @param subscription_id Unique identifier for monitoring subscription.
  # @param [Hash] opts the optional parameters
  # @return [MonitoringSubscription]
  describe 'get_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_alerts
  # List monitoring alerts
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Integer] :limit 
  # @return [MonitoringAlertList]
  describe 'list_alerts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_subscriptions
  # List monitoring subscriptions
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :business_id Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :id Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :person_id Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Integer] :limit 
  # @return [MonitoringSubscriptionList]
  describe 'list_subscriptions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_alert
  # Update a monitoring alert
  # @param alert_id Unique identifier for this monitoring alert.
  # @param monitoring_alert Monitoring alert to update.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_alert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
