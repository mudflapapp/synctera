=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Synctera::CustomersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomersApi' do
  before do
    # run before each test
    @api_instance = Synctera::CustomersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomersApi' do
    it 'should create an instance of CustomersApi' do
      expect(@api_instance).to be_instance_of(Synctera::CustomersApi)
    end
  end

  # unit tests for create_customer
  # Create a Customer
  # The customer object represents your customer&#39;s identity. You can then verify the identity of this customer and associate them with other people and accounts. Note that if no shipping_address attribute is provided in the request, the shipping_address will be set to a copy of the legal_address. 
  # @param customer_in_body Customer to create
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [CustomerInBody]
  describe 'create_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_customer_employment
  # Create employment record
  # Create a customer employment record.
  # @param customer_id The customer&#39;s unique identifier
  # @param employment Customer employment record to create.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [Employment]
  describe 'create_customer_employment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_customer_risk_rating
  # Create customer risk rating
  # Create customer risk rating
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @option opts [RiskRating] :risk_rating Create a customer risk rating. With a risk rating in request body, Synctera validates the data and saves it. With no request body, Synctera runs an automated risk analysis and saves the result. 
  # @return [RiskRating]
  describe 'create_customer_risk_rating test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_customer_employment
  # List customer employment records
  # Get a list of customer&#39;s current employment records. To see historic employment pass the &#x60;include_history&#x60; flag. 
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_history If true, include old (inactive) records as well.
  # @return [EmploymentList]
  describe 'get_all_customer_employment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_customer_risk_ratings
  # List customer risk ratings
  # Get list of customer risk ratings
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_history If true, include old (inactive) records as well.
  # @return [RiskRatingList]
  describe 'get_all_customer_risk_ratings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customer
  # Get Customer
  # Get Customer based on ID
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [CustomerInBody]
  describe 'get_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customer_risk_rating
  # Get customer risk rating
  # Get a customer risk rating
  # @param customer_id The customer&#39;s unique identifier
  # @param risk_rating_id Risk Rating ID
  # @param [Hash] opts the optional parameters
  # @return [RiskRating]
  describe 'get_customer_risk_rating test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_party_employment
  # Get customer employment record
  # Get a single record of customer employment
  # @param employment_id Unique ID for the employment record.
  # @param customer_id The customer&#39;s unique identifier
  # @param [Hash] opts the optional parameters
  # @return [Employment]
  describe 'get_party_employment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_customers
  # List Customers
  # Retrieves paginated list of Customers associated with the authorized requester
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :has_accounts Filter on resources that have an account(s) 
  # @option opts [String] :ssn_last_4 
  # @option opts [String] :last_name 
  # @option opts [String] :email 
  # @option opts [String] :first_name 
  # @option opts [String] :status 
  # @option opts [String] :phone_number 
  # @option opts [String] :page_token 
  # @option opts [Array<String>] :id Unique resource identifier
  # @option opts [Integer] :limit 
  # @option opts [Array<String>] :sort_by Specifies the sort order for the returned customers. 
  # @return [CustomerList]
  describe 'list_customers test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_customer
  # Patch Customer
  # Patch fields of customer based on ID Note that if:   * legal address is provided in the request, AND   * shipping_address is not provided in the request, AND   * the customer resource does not have shipping_address   then shipping_address will be set to a copy of the legal_address. 
  # @param customer_id The customer&#39;s unique identifier
  # @param patch_customer Customer to be patched
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  # @return [CustomerInBody]
  describe 'patch_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_customer
  # Update Customer
  # Update customer based on ID Note that if no shipping_address attribute is provided in the request, the shipping_address will be set to a copy of the legal_address. 
  # @param customer_id The customer&#39;s unique identifier
  # @param customer_in_body Customer to be updated
  # @param [Hash] opts the optional parameters
  # @return [CustomerInBody]
  describe 'update_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_party_employment
  # Update customer employment record
  # Update a single record of customer employment.
  # @param employment_id Unique ID for the employment record.
  # @param customer_id The customer&#39;s unique identifier
  # @param employment Customer employment to update.
  # @param [Hash] opts the optional parameters
  # @return [Employment]
  describe 'update_party_employment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
