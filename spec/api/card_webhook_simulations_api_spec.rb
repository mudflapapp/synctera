=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::CardWebhookSimulationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardWebhookSimulationsApi' do
  before do
    # run before each test
    @api_instance = Synctera::CardWebhookSimulationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardWebhookSimulationsApi' do
    it 'should create an instance of CardWebhookSimulationsApi' do
      expect(@api_instance).to be_instance_of(Synctera::CardWebhookSimulationsApi)
    end
  end

  # unit tests for simulate_card_fulfillment_event
  # Simulate Card Fulfillment Event
  # This endpoint is for testing environment only to trigger a simulated change in card fulfillment status event 
  # @param card_id 
  # @param simulate_card_fulfillment Desired simulated fulfillment status change value
  # @param [Hash] opts the optional parameters
  # @return [SimulateCardFulfillment]
  describe 'simulate_card_fulfillment_event test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
