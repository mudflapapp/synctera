=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Synctera::InternalTransfer
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Synctera::InternalTransfer do
  let(:instance) { Synctera::InternalTransfer.new }

  describe 'test an instance of InternalTransfer' do
    it 'should create an instance of InternalTransfer' do
      expect(instance).to be_instance_of(Synctera::InternalTransfer)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "capture_mode"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IMMEDIATE", "MANUAL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.capture_mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "expires_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "final_customer_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "memo"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "originating_account_alias"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "originating_account_customer_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "originating_account_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "receiving_account_alias"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "receiving_account_customer_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "receiving_account_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "tenant"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCOUNT_TO_ACCOUNT", "ACCOUNT_TO_ACCOUNT_SWEEP", "ACH_CREDIT_SWEEP", "ACH_DEBIT_SWEEP", "ACH_FLOAT_TRANSFER", "ACH_INCOMING_CREDIT_SWEEP", "ACH_INCOMING_DEBIT_SWEEP", "ACH_INCOMING_RETURN_CREDIT_SWEEP", "ACH_INCOMING_RETURN_DEBIT_SWEEP", "ACH_OUTGOING_CREDIT_SWEEP", "ACH_OUTGOING_DEBIT_SWEEP", "ACH_OUTGOING_RETURN_CREDIT_SWEEP", "ACH_OUTGOING_RETURN_DEBIT_SWEEP", "ACH_SWEEP", "CARD_CHARGEBACK", "CARD_CHARGEBACK_WRITEOFF", "CARD_PROVISIONAL_CREDIT", "CASHBACK", "CASHBACK_SWEEP", "CREDIT_MEMO", "DOMESTIC_WIRE_INCOMING_RETURN_SWEEP", "DOMESTIC_WIRE_INCOMING_RETURN_SWEEP_REVERSAL", "DOMESTIC_WIRE_INCOMING_SWEEP", "DOMESTIC_WIRE_INCOMING_SWEEP_REVERSAL", "DOMESTIC_WIRE_OUTGOING_RETURN_SWEEP", "DOMESTIC_WIRE_OUTGOING_RETURN_SWEEP_REVERSAL", "DOMESTIC_WIRE_OUTGOING_SWEEP", "DOMESTIC_WIRE_OUTGOING_SWEEP_REVERSAL", "FEE", "FEE_SWEEP", "FORCE_PAYMENT", "INCOMING_WIRE", "INCOMING_WIRE_SWEEP", "INTEREST_CHARGED_SWEEP", "INTEREST_PAYOUT", "INTEREST_PAYOUT_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_SWEEP_REVERSAL", "INVOICE", "LOAN_DISBURSEMENT", "LOAN_FUNDING", "MANUAL_ADJUSTMENT", "MANUAL_ADJUSTMENT_REVERSAL", "MANUAL_ADJUSTMENT_SWEEP", "MANUAL_CARD_SWEEP", "MANUAL_CHECK_SWEEP", "MANUAL_WIRE_SWEEP", "MASTERCARD_GROSS_SWEEP", "MASTERCARD_GROSS_SWEEP_REVERSAL", "MASTERCARD_INTERCHANGE_SWEEP", "MASTERCARD_INTERCHANGE_SWEEP_REVERSAL", "MASTERCARD_NET_SWEEP", "MASTERCARD_NET_SWEEP_REVERSAL", "MOBILE_DEPOSIT_RETURN_SWEEP", "MOBILE_DEPOSIT_RETURN_SWEEP_REVERSAL", "MOBILE_DEPOSIT_SWEEP", "MOBILE_DEPOSIT_SWEEP_REVERSAL", "NETWORK_ADJUSTMENT_SWEEP", "NETWORK_CHARGEBACK_SWEEP", "OUTGOING_INTERNATIONAL_REMITTANCE", "OUTGOING_INTERNATIONAL_REMITTANCE_REVERSAL", "PROMOTIONAL_CREDIT", "PROMOTIONAL_CREDIT_REVERSAL", "PROMOTIONAL_CREDIT_SWEEP", "PULSE_GROSS_SWEEP", "PULSE_GROSS_SWEEP_REVERSAL", "PULSE_INTERCHANGE_SWEEP", "PULSE_INTERCHANGE_SWEEP_REVERSAL", "SECURITY_ACCOUNT_PAYMENT", "SIGN_UP_BONUS", "SUBSCRIPTION_FEE", "TRANSFER_FEE", "TRANSFER_FEE_REVERSAL", "WIRE_SETTLEMENT_CREDIT", "WIRE_SETTLEMENT_DEBIT"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
