=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::ExternalAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExternalAccountsApi' do
  before do
    # run before each test
    @api_instance = Synctera::ExternalAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExternalAccountsApi' do
    it 'should create an instance of ExternalAccountsApi' do
      expect(@api_instance).to be_instance_of(Synctera::ExternalAccountsApi)
    end
  end

  # unit tests for add_external_accounts
  # Add an external account
  # Add an external account for a customer. The account will be created in an unverified state. 
  # @param add_accounts_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [ExternalAccount]
  describe 'add_external_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_vendor_external_accounts
  # Add external accounts through a vendor, such as Plaid.
  # Add external accounts for a customer through an existing access token. The token must be valid, and the information on the accounts returned by the vendor must correspond to the customer. A success response for this route may include failures if an account could not be added, so it&#39;s important that the caller checks the response body. 
  # @param add_vendor_accounts_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [AddVendorAccountsResponse]
  describe 'add_vendor_external_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_access_token
  # Create a permanent access token for an external account
  # @param external_account_access_token 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [ExternalAccountAccessToken]
  describe 'create_access_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_verification_link_token
  # Create a link token to verify an external account
  # @param external_account_link_token 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [ExternalAccountLinkToken]
  describe 'create_verification_link_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_external_account
  # Delete an external account
  # Deletes an external account, given an external account ID. If no accounts left, the access token to the financial institution will be removed 
  # @param external_account_id External Account ID
  # @param [Hash] opts the optional parameters
  # @return [DeleteResponse]
  describe 'delete_external_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for external_account_refresh_transactions
  # Sync external account transactions through a vendor, such as Plaid
  # Sync external accounts for a customer through an existing access token. The token must be valid. Accounts linked in the same auth session (having the same access token) will be synced together. 
  # @param external_account_id External Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :restricted Is External Account Restricted for Access
  # @option opts [Boolean] :force_vendor_refresh Force a vendor refresh of the external account. 
  # @return [ExternalAccountTransactionRefreshResponse]
  describe 'external_account_refresh_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_external_account
  # Get an external account
  # Returns an external account, given an external account ID. 
  # @param external_account_id External Account ID
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccount]
  describe 'get_external_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_external_account_balance
  # Get external account balances
  # Given an external account ID, return the account balances in real time.  The data returned by this endpoint is always fetched synchronously; it is not cached by Synctera. As a result, response latency is often high. 
  # @param external_account_id External Account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max_age Optional relative age of a balance in seconds. If the balance is older than the requested seconds it will fail. This field is optional for most financial institutions, but required for some, so you should probably send it. 
  # @return [ExternalAccountBalance]
  describe 'get_external_account_balance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_external_account_transactions
  # List transactions of a given external account
  # Returns a list of transactions on from the external account, given an external account ID. Maximum 500 transctions will be returned. 
  # @param start_date Date range filtering for transactions. Date is inclusive. Date must be in UTC.
  # @param external_account_id External Account ID
  # @param end_date Date range filtering for transactions. Date is exclusive. Date must be in UTC.
  # @param [Hash] opts the optional parameters
  # @return [ExternalAccountsTransactionList]
  describe 'get_external_account_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_external_accounts
  # List external accounts
  # Returns a list of all external accounts assigned to customers. 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :id External account ID(s). Multiple IDs can be provided as a comma-separated list. 
  # @option opts [Array<String>] :customer_id A list of customer unique identifiers, with a comma separating any values.
  # @option opts [Boolean] :include_history If true, include old (inactive) records as well.
  # @option opts [String] :page_token 
  # @option opts [Integer] :limit 
  # @option opts [Array<String>] :business_id A list of business unique identifiers, with a comma separating any values.
  # @return [ExternalAccountsList]
  describe 'list_external_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for sync_vendor_external_accounts
  # Sync external accounts through a vendor, such as Plaid.
  # Sync external accounts for a customer through an existing access token. The token must be valid, and the information on the accounts returned by the vendor must correspond to the customer. A success response for this route may include failures if an account could not be added and deletions if the account is removed by the end user, so it&#39;s important that the caller checks the response body. 
  # @param add_vendor_accounts_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [AddVendorAccountsResponse]
  describe 'sync_vendor_external_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_external_account
  # Patch an external account
  # Edits an unverified external account, given an external account ID. 
  # @param external_account_id External Account ID
  # @param patch_external_account External account to be updated
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [ExternalAccount]
  describe 'update_external_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
