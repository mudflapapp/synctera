=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::DigitalWalletTokensApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DigitalWalletTokensApi' do
  before do
    # run before each test
    @api_instance = Synctera::DigitalWalletTokensApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DigitalWalletTokensApi' do
    it 'should create an instance of DigitalWalletTokensApi' do
      expect(@api_instance).to be_instance_of(Synctera::DigitalWalletTokensApi)
    end
  end

  # unit tests for create_digital_wallet_apple
  # Create digital wallet token provision request for Apple Pay
  # @param card_id 
  # @param apple_digital_wallet_provision_request Request to provision digital wallet card data to pass to Apple Pay digital wallet.  &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [AppleDigitalWalletProvisionResponse]
  describe 'create_digital_wallet_apple test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_digital_wallet_google
  # Create digital wallet token provision request for Google Pay
  # @param card_id 
  # @param google_digital_wallet_provision_request Request to provision digital wallet card data to pass to Google Pay digital wallet. &lt;br&gt;Cannot be used outside of production.&lt;/br&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [GoogleDigitalWalletProvisionResponse]
  describe 'create_digital_wallet_google test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_digital_wallet_token
  # Get Digital Wallet Token
  # Get the details about the digital wallet token of a card &lt;br&gt;NB: Digital wallet tokens cannot be created outside of production&lt;/br&gt; 
  # @param digital_wallet_token_id 
  # @param [Hash] opts the optional parameters
  # @return [DigitalWalletTokenResponse]
  describe 'get_digital_wallet_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_digital_wallet_tokens
  # List Digital Wallet Tokens
  # List Digital Wallet Tokens &lt;br&gt;NB: Digital wallet tokens cannot be created outside of production&lt;/br&gt; 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @option opts [DigitalWalletTokenState] :token_state The status of the Digital Wallet Token
  # @option opts [String] :card_id 
  # @return [TokenListResponse]
  describe 'list_digital_wallet_tokens test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_digital_wallet_token_status
  # Update Digital Wallet Token&#39;s life cycle status
  # The status of a digital wallet token can be updated as, ACTIVE to SUSPENDED, SUSPENDED to ACTIVE, ACTIVE to TERMINATED or SUSPENDED to TERMINATED. 
  # @param digital_wallet_token_id 
  # @param digital_wallet_token_edit_request Update Digital wallet token status
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [DigitalWalletTokenResponse]
  describe 'update_digital_wallet_token_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
