=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Synctera
  class AccountClosureReason
    BANK_REQUEST_FRAUD = "BANK_REQUEST_FRAUD".freeze
    BANK_REQUEST_INACTIVITY = "BANK_REQUEST_INACTIVITY".freeze
    BANK_REQUEST_REDEEMED_OR_REINSTATED_REPOSSESSION = "BANK_REQUEST_REDEEMED_OR_REINSTATED_REPOSSESSION".freeze
    BANK_REQUEST_REGULATORY_REASONS = "BANK_REQUEST_REGULATORY_REASONS".freeze
    CUSTOMER_REQUEST_CREDIT_CARD_LOST_OR_STOLEN = "CUSTOMER_REQUEST_CREDIT_CARD_LOST_OR_STOLEN".freeze
    CUSTOMER_REQUEST_REFINANCE = "CUSTOMER_REQUEST_REFINANCE".freeze
    CUSTOMER_REQUEST_TRANSFER = "CUSTOMER_REQUEST_TRANSFER".freeze
    CUSTOMER_REQUEST_VOLUNTARILY_SURRENDERED = "CUSTOMER_REQUEST_VOLUNTARILY_SURRENDERED".freeze
    PROGRAM_SHUT_DOWN_BANK = "PROGRAM_SHUT_DOWN_BANK".freeze
    PROGRAM_SHUT_DOWN_FINTECH = "PROGRAM_SHUT_DOWN_FINTECH".freeze

    def self.all_vars
      @all_vars ||= [BANK_REQUEST_FRAUD, BANK_REQUEST_INACTIVITY, BANK_REQUEST_REDEEMED_OR_REINSTATED_REPOSSESSION, BANK_REQUEST_REGULATORY_REASONS, CUSTOMER_REQUEST_CREDIT_CARD_LOST_OR_STOLEN, CUSTOMER_REQUEST_REFINANCE, CUSTOMER_REQUEST_TRANSFER, CUSTOMER_REQUEST_VOLUNTARILY_SURRENDERED, PROGRAM_SHUT_DOWN_BANK, PROGRAM_SHUT_DOWN_FINTECH].freeze
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
      return value if AccountClosureReason.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AccountClosureReason"
    end
  end
end