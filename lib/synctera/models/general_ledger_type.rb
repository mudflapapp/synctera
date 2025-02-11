=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module Synctera
  class GeneralLedgerType
    ACH_SETTLEMENT = "ACH_SETTLEMENT".freeze
    ACH_SUSPENSE = "ACH_SUSPENSE".freeze
    ALLOCATED_SUSPENSE = "ALLOCATED_SUSPENSE".freeze
    BANK_DRAFT = "BANK_DRAFT".freeze
    BILLING_EXPENSE = "BILLING_EXPENSE".freeze
    BILLING_REVENUE = "BILLING_REVENUE".freeze
    CARD_AFT_PREFUNDING = "CARD_AFT_PREFUNDING".freeze
    CARD_OCT_SETTLEMENT = "CARD_OCT_SETTLEMENT".freeze
    CARD_SETTLEMENT = "CARD_SETTLEMENT".freeze
    CASH_SETTLEMENT = "CASH_SETTLEMENT".freeze
    CASH_SUSPENSE = "CASH_SUSPENSE".freeze
    CHECK_SETTLEMENT = "CHECK_SETTLEMENT".freeze
    DISPUTE_WRITE_OFF_PNL = "DISPUTE_WRITE_OFF_PNL".freeze
    EFT_CA_SETTLEMENT = "EFT_CA_SETTLEMENT".freeze
    EFT_CA_SUSPENSE = "EFT_CA_SUSPENSE".freeze
    EXTERNAL_CARD_AFT_SETTLEMENT = "EXTERNAL_CARD_AFT_SETTLEMENT".freeze
    EXTERNAL_CARD_OCT_SETTLEMENT = "EXTERNAL_CARD_OCT_SETTLEMENT".freeze
    FEDNOW_SETTLEMENT = "FEDNOW_SETTLEMENT".freeze
    FEES = "FEES".freeze
    FRAUD_LOSSES = "FRAUD_LOSSES".freeze
    FUNDING_ACCOUNTS = "FUNDING_ACCOUNTS".freeze
    GENERAL_PNL = "GENERAL_PNL".freeze
    INTEREST_PAYOUT = "INTEREST_PAYOUT".freeze
    INTERNATIONAL_WIRE_SETTLEMENT = "INTERNATIONAL_WIRE_SETTLEMENT".freeze
    LOC_INTEREST_INCOME = "LOC_INTEREST_INCOME".freeze
    LOC_INVESTOR_PORTFOLIO = "LOC_INVESTOR_PORTFOLIO".freeze
    LOC_REPURCHASE = "LOC_REPURCHASE".freeze
    MONEY_IN_AND_OUT = "MONEY_IN_AND_OUT".freeze
    NEGATIVE_BALANCE = "NEGATIVE_BALANCE".freeze
    NETWORK_ADJUSTMENT = "NETWORK_ADJUSTMENT".freeze
    NETWORK_CHARGEBACK = "NETWORK_CHARGEBACK".freeze
    NEW_FUNDING_ACCOUNT = "NEW_FUNDING_ACCOUNT".freeze
    PROVISIONAL_CREDIT_PNL = "PROVISIONAL_CREDIT_PNL".freeze
    RESERVE = "RESERVE".freeze
    REWARDS = "REWARDS".freeze
    SYNCTERA_PAY_SUSPENSE = "SYNCTERA_PAY_SUSPENSE".freeze
    USC_INTEREST_INCOME = "USC_INTEREST_INCOME".freeze
    USC_INVESTOR_PORTFOLIO = "USC_INVESTOR_PORTFOLIO".freeze
    USC_REPURCHASE = "USC_REPURCHASE".freeze
    WIRE_SETTLEMENT = "WIRE_SETTLEMENT".freeze
    WIRE_SUSPENSE = "WIRE_SUSPENSE".freeze
    WRITE_OFF = "WRITE_OFF".freeze

    def self.all_vars
      @all_vars ||= [ACH_SETTLEMENT, ACH_SUSPENSE, ALLOCATED_SUSPENSE, BANK_DRAFT, BILLING_EXPENSE, BILLING_REVENUE, CARD_AFT_PREFUNDING, CARD_OCT_SETTLEMENT, CARD_SETTLEMENT, CASH_SETTLEMENT, CASH_SUSPENSE, CHECK_SETTLEMENT, DISPUTE_WRITE_OFF_PNL, EFT_CA_SETTLEMENT, EFT_CA_SUSPENSE, EXTERNAL_CARD_AFT_SETTLEMENT, EXTERNAL_CARD_OCT_SETTLEMENT, FEDNOW_SETTLEMENT, FEES, FRAUD_LOSSES, FUNDING_ACCOUNTS, GENERAL_PNL, INTEREST_PAYOUT, INTERNATIONAL_WIRE_SETTLEMENT, LOC_INTEREST_INCOME, LOC_INVESTOR_PORTFOLIO, LOC_REPURCHASE, MONEY_IN_AND_OUT, NEGATIVE_BALANCE, NETWORK_ADJUSTMENT, NETWORK_CHARGEBACK, NEW_FUNDING_ACCOUNT, PROVISIONAL_CREDIT_PNL, RESERVE, REWARDS, SYNCTERA_PAY_SUSPENSE, USC_INTEREST_INCOME, USC_INVESTOR_PORTFOLIO, USC_REPURCHASE, WIRE_SETTLEMENT, WIRE_SUSPENSE, WRITE_OFF].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if GeneralLedgerType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #GeneralLedgerType"
    end
  end
end
