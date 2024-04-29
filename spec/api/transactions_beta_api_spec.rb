=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::TransactionsBetaApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsBetaApi' do
  before do
    # run before each test
    @api_instance = Synctera::TransactionsBetaApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsBetaApi' do
    it 'should create an instance of TransactionsBetaApi' do
      expect(@api_instance).to be_instance_of(Synctera::TransactionsBetaApi)
    end
  end

  # unit tests for get_transaction_by_id
  # Get a transaction by ID
  # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get a transaction by its uuid 
  # @param id Transaction ID
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :show_partial_clearings Include a transaction for each clearing of an authorization.
  # @return [Transaction1]
  describe 'get_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_transactions
  # List Transactions
  # &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of transactions matching the provided filters 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :posted_amount Only return transactions equal to the given &#x60;posted_amount&#x60;
  # @option opts [Boolean] :include_child_transactions Include transactions from sub-accounts when listing transactions for a given account
  # @option opts [Integer] :amount Only return transactions equal to the given &#x60;amount&#x60;
  # @option opts [Date] :posted_date Only return transactions matching the given &#x60;posted_date&#x60;
  # @option opts [Integer] :amount_lt Only return transactions with &#x60;amount&#x60; less than &#x60;amount_lt&#x60;
  # @option opts [Array<TransactionTypes>] :type Only return transactions matching the given type
  # @option opts [Integer] :posted_amount_gte Only return transactions with &#x60;posted_amount&#x60; greater than or equal to &#x60;posted_amount_gte&#x60;
  # @option opts [Integer] :posted_amount_lt Only return transactions with &#x60;posted_amount&#x60; less than &#x60;posted_amount_lt&#x60;
  # @option opts [Integer] :posted_amount_lte Only return transactions with &#x60;posted_amount&#x60; less than or equal to &#x60;posted_amount_lte&#x60;
  # @option opts [Array<TransactionStatuses>] :status Only return transactions with the given status or statuses
  # @option opts [String] :internal_account_id Only return transactions matching the given &#x60;internal_account_id&#x60;
  # @option opts [String] :account_id Account ID
  # @option opts [Integer] :pending_amount_lte Only return transactions with &#x60;pending_amount&#x60; less than or equal to &#x60;pending_amount_lte&#x60;
  # @option opts [Integer] :amount_gte Only return transactions with &#x60;amount&#x60; greater than or equal to &#x60;amount_gte&#x60;
  # @option opts [Boolean] :show_partial_clearings Include a transaction for each clearing of an authorization.
  # @option opts [String] :group_id Only return transactions matching the given &#x60;group_id&#x60;
  # @option opts [Integer] :pending_amount_gte Only return transactions with &#x60;pending_amount&#x60; greater than or equal to &#x60;pending_amount_gte&#x60;
  # @option opts [Boolean] :exclude_jit_transactions Hide \&quot;JIT funding\&quot; transactions from results
  # @option opts [String] :page_token 
  # @option opts [String] :card_id Card ID
  # @option opts [Integer] :pending_amount Only return transactions equal to the given &#x60;pending_amount&#x60;
  # @option opts [String] :account_source Determines whether to return only transactions against customer accounts (&#x60;CUSTOMER&#x60;) vs internal accounts (&#x60;INTERNAL&#x60;). The default is to return all transactions if no &#x60;account_source&#x60; is specified.
  # @option opts [Date] :posted_date_from Only return transactions later than the given &#x60;posted_date&#x60;
  # @option opts [Integer] :posted_amount_gt only return transactions with &#x60;posted_amount&#x60; greater than &#x60;posted_amount_gt&#x60;
  # @option opts [Integer] :pending_amount_gt only return transactions with &#x60;pending_amount&#x60; greater than &#x60;pending_amount_gt&#x60;
  # @option opts [Integer] :limit 
  # @option opts [Integer] :amount_gt Only return transactions with &#x60;amount&#x60; greater than &#x60;amount_gt&#x60;
  # @option opts [Date] :posted_date_to Only return transactions up to the given &#x60;posted_date&#x60;
  # @option opts [Integer] :amount_lte Only return transactions with &#x60;amount&#x60; less than or equal to &#x60;amount_lte&#x60;
  # @option opts [Array<AllTransactionSubtypes>] :subtype Only return transactions matching the given subtype
  # @option opts [Integer] :pending_amount_lt Only return transactions with &#x60;pending_amount&#x60; less than &#x60;pending_amount_lt&#x60;
  # @return [PaginatedTransactions]
  describe 'list_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end