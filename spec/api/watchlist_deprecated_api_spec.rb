=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::WatchlistDeprecatedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WatchlistDeprecatedApi' do
  before do
    # run before each test
    @api_instance = Synctera::WatchlistDeprecatedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WatchlistDeprecatedApi' do
    it 'should create an instance of WatchlistDeprecatedApi' do
      expect(@api_instance).to be_instance_of(Synctera::WatchlistDeprecatedApi)
    end
  end

  # unit tests for get_watchlist_alert
  # Retrieve watchlist monitoring alert
  # @param alert_id Unique identifier for this watchlist alert.
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [WatchlistAlert]
  describe 'get_watchlist_alert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_watchlist_subscription
  # Retrieve watchlist monitoring subscription
  # @param subscription_id Watchlist monitoring subscription ID
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [WatchlistSubscription]
  describe 'get_watchlist_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_watchlist_alerts
  # List watchlist monitoring alerts for a customer
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [WatchlistAlertList]
  describe 'list_watchlist_alerts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_watchlist_subscriptions
  # List watchlist monitoring subscriptions for a customer
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [WatchlistSubscriptionList]
  describe 'list_watchlist_subscriptions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for suppress_watchlist_entity_alert
  # Suppress entity alert
  # @param customer_id The customer&#39;s unique identifier
  # @param watchlist_suppress A watchlist suppression object
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [nil]
  describe 'suppress_watchlist_entity_alert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_watchlist_alert
  # Update watchlist alert
  # @param alert_id Unique identifier for this watchlist alert.
  # @param customer_id The customer&#39;s unique identifier
  # @param watchlist_alert A watchlist body
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_watchlist_alert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_watchlist_subscription
  # Update watchlist monitoring subscription
  # @param subscription_id Watchlist monitoring subscription ID
  # @param customer_id The customer&#39;s unique identifier
  # @param watchlist_subscription Watchlist monitoring subscription to be updated. The only field that matters is &#x60;status&#x60;; all other fields are ignored. 
  # @param [Hash] opts the optional parameters
  # @return [WatchlistSubscription]
  describe 'update_watchlist_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for watchlist_subscribe
  # Subscribe a customer to watchlist monitoring
  # @param customer_id The customer&#39;s unique identifier
  # @param watchlist_subscription A watchlist subscription
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [WatchlistSubscription]
  describe 'watchlist_subscribe test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
