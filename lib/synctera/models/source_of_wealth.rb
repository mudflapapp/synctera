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
  class SourceOfWealth
    INHERITANCE = "INHERITANCE".freeze
    INVESTMENT = "INVESTMENT".freeze
    OTHER = "OTHER".freeze
    PROPERTY_SALE = "PROPERTY_SALE".freeze
    RETIREMENT = "RETIREMENT".freeze
    SALARY = "SALARY".freeze

    def self.all_vars
      @all_vars ||= [INHERITANCE, INVESTMENT, OTHER, PROPERTY_SALE, RETIREMENT, SALARY].freeze
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
      return value if SourceOfWealth.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SourceOfWealth"
    end
  end
end
