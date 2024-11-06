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
  class RelatedResourceType1
    ACCOUNT = "ACCOUNT".freeze
    BUSINESS = "BUSINESS".freeze
    CUSTOMER = "CUSTOMER".freeze
    TRANSACTION = "TRANSACTION".freeze

    def self.all_vars
      @all_vars ||= [ACCOUNT, BUSINESS, CUSTOMER, TRANSACTION].freeze
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
      return value if RelatedResourceType1.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #RelatedResourceType1"
    end
  end
end
