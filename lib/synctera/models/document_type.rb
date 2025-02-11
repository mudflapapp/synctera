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
  class DocumentType
    ADDRESS_VERIFICATION = "ADDRESS_VERIFICATION".freeze
    APPLICATION_DOCUMENTATION = "APPLICATION_DOCUMENTATION".freeze
    BILLING_DOCUMENT = "BILLING_DOCUMENT".freeze
    CHECK_IMAGE = "CHECK_IMAGE".freeze
    COMPANY_PROFILE_DOCUMENT = "COMPANY_PROFILE_DOCUMENT".freeze
    COMPLIANCE_REPORT = "COMPLIANCE_REPORT".freeze
    DATE_OF_BIRTH_VERIFICATION = "DATE_OF_BIRTH_VERIFICATION".freeze
    FINANCIAL_FILE = "FINANCIAL_FILE".freeze
    IDENTITY_DOCUMENTATION = "IDENTITY_DOCUMENTATION".freeze
    INCOME_DOCUMENTATION = "INCOME_DOCUMENTATION".freeze
    STATEMENT = "STATEMENT".freeze
    STATEMENT_DISCLOSURE = "STATEMENT_DISCLOSURE".freeze
    TAX_FORM = "TAX_FORM".freeze
    TERMS_OF_SERVICE = "TERMS_OF_SERVICE".freeze

    def self.all_vars
      @all_vars ||= [ADDRESS_VERIFICATION, APPLICATION_DOCUMENTATION, BILLING_DOCUMENT, CHECK_IMAGE, COMPANY_PROFILE_DOCUMENT, COMPLIANCE_REPORT, DATE_OF_BIRTH_VERIFICATION, FINANCIAL_FILE, IDENTITY_DOCUMENTATION, INCOME_DOCUMENTATION, STATEMENT, STATEMENT_DISCLOSURE, TAX_FORM, TERMS_OF_SERVICE].freeze
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
      return value if DocumentType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #DocumentType"
    end
  end
end
