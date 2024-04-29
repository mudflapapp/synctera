=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class AddVendorAccountsErrorReason
    ACCOUNT_NOT_FOUND = "ACCOUNT_NOT_FOUND".freeze
    DUPLICATE_ACCOUNT = "DUPLICATE_ACCOUNT".freeze
    FAILED_VERIFICATION = "FAILED_VERIFICATION".freeze
    PROVIDER_ERROR = "PROVIDER_ERROR".freeze
    UNSUPPORTED_ACCOUNT_TYPE = "UNSUPPORTED_ACCOUNT_TYPE".freeze

    def self.all_vars
      @all_vars ||= [ACCOUNT_NOT_FOUND, DUPLICATE_ACCOUNT, FAILED_VERIFICATION, PROVIDER_ERROR, UNSUPPORTED_ACCOUNT_TYPE].freeze
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
      return value if AddVendorAccountsErrorReason.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AddVendorAccountsErrorReason"
    end
  end
end
