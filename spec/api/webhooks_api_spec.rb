=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::WebhooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @api_instance = Synctera::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@api_instance).to be_instance_of(Synctera::WebhooksApi)
    end
  end

  # unit tests for create_secret
  # Create a secret
  # Create a webhook secret. The secret will be used to verify all subsequent webhook request signature.
  # @param [Hash] opts the optional parameters
  # @return [CreateSecret201Response]
  describe 'create_secret test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_webhook
  # Create a webhook
  # Create a webhook
  # @param webhook Webhook to create
  # @param [Hash] opts the optional parameters
  # @return [Webhook]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_webhook
  # Delete a webhook
  # Delete a webhook
  # @param webhook_id Webhook ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteResponse]
  describe 'delete_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_event
  # Get webhook event
  # Get webhook event by ID
  # @param event_id Webhook event ID
  # @param webhook_id Webhook ID
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'get_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhook
  # Get a webhook
  # Get a webhook
  # @param webhook_id Webhook ID
  # @param [Hash] opts the optional parameters
  # @return [Webhook]
  describe 'get_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_events
  # List webhook events
  # List webhook events. This response will not associate with the event response history.
  # @param webhook_id Webhook ID
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :start_time Start time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
  # @option opts [Date] :end_date End date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. end_date is alias of end_time and is deprecated. Please use end_time instead.
  # @option opts [Time] :end_time End time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @option opts [Date] :start_date Start date of date range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.. start_date is alias of start_time and is deprecated. Please use start_time instead.
  # @return [EventList]
  describe 'list_events test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_webhooks
  # List webhooks
  # List all webhooks
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token 
  # @option opts [Boolean] :is_enabled_only 
  # @option opts [Integer] :limit 
  # @return [WebhookList]
  describe 'list_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for replace_secret
  # Replace an existing secret
  # Replace an existing webhook secret immediately or as part of rotation. This new secret will be used to verify all subsequent webhook request signature.
  # @param replace_secret_request 
  # @param [Hash] opts the optional parameters
  # @return [ReplaceSecret200Response]
  describe 'replace_secret test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for resend_event
  # Resend an event
  # Resend a webhook event
  # @param event_id Webhook event ID
  # @param webhook_id Webhook ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :delay Delay the event triggering in seconds. Events are checked once a minute, so a short delay may not result in an immedidate resend.
  # @return [Event]
  describe 'resend_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_secret
  # Revoke the secret
  # Revoke the existing webhook secret. If this is called at the rolling secret time, then both old and new secrets will be revoked
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :old_secret_only 
  # @return [nil]
  describe 'revoke_secret test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for trigger_event
  # Trigger an event
  # Trigger an specific event for webhook testing purpose
  # @param trigger_event_request Provide an event type to trigger
  # @param [Hash] opts the optional parameters
  # @return [EventTrigger]
  describe 'trigger_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_webhook
  # Update a webhook
  # Update a webhook
  # @param webhook_id Webhook ID
  # @param webhook Webhook to update
  # @param [Hash] opts the optional parameters
  # @return [Webhook]
  describe 'update_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
