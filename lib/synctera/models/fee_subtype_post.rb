=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class FeeSubtypePost
    ACH_INCOMING_TRANSFER = "ACH_INCOMING_TRANSFER".freeze
    ACH_OUTGOING_TRANSFER = "ACH_OUTGOING_TRANSFER".freeze
    APPLICATION = "APPLICATION".freeze
    ATM_BALANCE_INQUIRY = "ATM_BALANCE_INQUIRY".freeze
    ATM_WITHDRAWAL = "ATM_WITHDRAWAL".freeze
    BALANCE_TRANSFER = "BALANCE_TRANSFER".freeze
    BILL_PAY = "BILL_PAY".freeze
    CARD_DELIVERY = "CARD_DELIVERY".freeze
    CARD_REPLACEMENT = "CARD_REPLACEMENT".freeze
    CASH_ADVANCE = "CASH_ADVANCE".freeze
    CASH_DEPOSIT = "CASH_DEPOSIT".freeze
    CROSS_BORDER_TRANSACTION = "CROSS_BORDER_TRANSACTION".freeze
    EFT_TRANSFER = "EFT_TRANSFER".freeze
    FOREIGN_ATM = "FOREIGN_ATM".freeze
    FOREIGN_TRANSACTION = "FOREIGN_TRANSACTION".freeze
    INACTIVITY = "INACTIVITY".freeze
    LATE_PAYMENT = "LATE_PAYMENT".freeze
    MAINTENANCE = "MAINTENANCE".freeze
    MISCELLANEOUS = "MISCELLANEOUS".freeze
    ORIGINATION = "ORIGINATION".freeze
    OVERDRAFT = "OVERDRAFT".freeze
    OVER_THE_LIMIT = "OVER_THE_LIMIT".freeze
    RETURNED_ITEM = "RETURNED_ITEM".freeze
    RETURNED_PAYMENT = "RETURNED_PAYMENT".freeze
    STOP_PAYMENT = "STOP_PAYMENT".freeze
    SUBSCRIPTION = "SUBSCRIPTION".freeze
    WIRE_TRANSFER = "WIRE_TRANSFER".freeze

    def self.all_vars
      @all_vars ||= [ACH_INCOMING_TRANSFER, ACH_OUTGOING_TRANSFER, APPLICATION, ATM_BALANCE_INQUIRY, ATM_WITHDRAWAL, BALANCE_TRANSFER, BILL_PAY, CARD_DELIVERY, CARD_REPLACEMENT, CASH_ADVANCE, CASH_DEPOSIT, CROSS_BORDER_TRANSACTION, EFT_TRANSFER, FOREIGN_ATM, FOREIGN_TRANSACTION, INACTIVITY, LATE_PAYMENT, MAINTENANCE, MISCELLANEOUS, ORIGINATION, OVERDRAFT, OVER_THE_LIMIT, RETURNED_ITEM, RETURNED_PAYMENT, STOP_PAYMENT, SUBSCRIPTION, WIRE_TRANSFER].freeze
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
      return value if FeeSubtypePost.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FeeSubtypePost"
    end
  end
end
