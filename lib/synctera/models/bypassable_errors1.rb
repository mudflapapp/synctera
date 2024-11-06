=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.139.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module Synctera
  class BypassableErrors1
    ACCOUNT_CLOSED = "ACCOUNT_CLOSED".freeze
    ACCOUNT_OWNER_WATCHLIST = "ACCOUNT_OWNER_WATCHLIST".freeze
    BALANCE_VIOLATION = "BALANCE_VIOLATION".freeze
    IMPROPER_ACCOUNT_CUSTOMER_RELATIONSHIP = "IMPROPER_ACCOUNT_CUSTOMER_RELATIONSHIP".freeze
    IMPROPER_ACCOUNT_STATUS = "IMPROPER_ACCOUNT_STATUS".freeze
    IMPROPER_CUSTOMER_STATUS = "IMPROPER_CUSTOMER_STATUS".freeze
    IMPROPER_CUSTOMER_VERIFICATION_STATUS = "IMPROPER_CUSTOMER_VERIFICATION_STATUS".freeze
    IMPROPER_PARTNER_LIFECYCLE_STATUS = "IMPROPER_PARTNER_LIFECYCLE_STATUS".freeze
    IMPROPER_PARTNER_VERIFICATION_STATUS = "IMPROPER_PARTNER_VERIFICATION_STATUS".freeze
    INSUFFICIENT_FUNDS = "INSUFFICIENT_FUNDS".freeze
    SPEND_CONTROL_VIOLATION = "SPEND_CONTROL_VIOLATION".freeze
    SUSPECTED_FRAUD = "SUSPECTED_FRAUD".freeze

    def self.all_vars
      @all_vars ||= [ACCOUNT_CLOSED, ACCOUNT_OWNER_WATCHLIST, BALANCE_VIOLATION, IMPROPER_ACCOUNT_CUSTOMER_RELATIONSHIP, IMPROPER_ACCOUNT_STATUS, IMPROPER_CUSTOMER_STATUS, IMPROPER_CUSTOMER_VERIFICATION_STATUS, IMPROPER_PARTNER_LIFECYCLE_STATUS, IMPROPER_PARTNER_VERIFICATION_STATUS, INSUFFICIENT_FUNDS, SPEND_CONTROL_VIOLATION, SUSPECTED_FRAUD].freeze
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
      return value if BypassableErrors1.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #BypassableErrors1"
    end
  end
end
