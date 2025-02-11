=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.145.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module Synctera
  class DisclosureType
    ACH_AUTHORIZATION = "ACH_AUTHORIZATION".freeze
    CARDHOLDER_AGREEMENT = "CARDHOLDER_AGREEMENT".freeze
    CARD_DISCLOSURE = "CARD_DISCLOSURE".freeze
    E_SIGN = "E_SIGN".freeze
    KYC_DATA_COLLECTION = "KYC_DATA_COLLECTION".freeze
    OWNER_CERTIFICATION = "OWNER_CERTIFICATION".freeze
    PAD_AUTHORIZATION = "PAD_AUTHORIZATION".freeze
    PRIVACY_NOTICE = "PRIVACY_NOTICE".freeze
    REG_CC = "REG_CC".freeze
    REG_DD = "REG_DD".freeze
    REG_E = "REG_E".freeze
    SC_ACCOUNT_AGREEMENT = "SC_ACCOUNT_AGREEMENT".freeze
    SC_AUTO_PAYMENT = "SC_AUTO_PAYMENT".freeze
    SC_SECURITY_AGREEMENT = "SC_SECURITY_AGREEMENT".freeze
    TERMS_AND_CONDITIONS = "TERMS_AND_CONDITIONS".freeze

    def self.all_vars
      @all_vars ||= [ACH_AUTHORIZATION, CARDHOLDER_AGREEMENT, CARD_DISCLOSURE, E_SIGN, KYC_DATA_COLLECTION, OWNER_CERTIFICATION, PAD_AUTHORIZATION, PRIVACY_NOTICE, REG_CC, REG_DD, REG_E, SC_ACCOUNT_AGREEMENT, SC_AUTO_PAYMENT, SC_SECURITY_AGREEMENT, TERMS_AND_CONDITIONS].freeze
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
      return value if DisclosureType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #DisclosureType"
    end
  end
end
