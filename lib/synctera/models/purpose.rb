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
  class Purpose
    ACCOUNT_CLOSURE = "ACCOUNT_CLOSURE".freeze
    ACCOUNT_OPENING = "ACCOUNT_OPENING".freeze
    APR_INCREASE = "APR_INCREASE".freeze
    LINE_DECREASE = "LINE_DECREASE".freeze
    OTHER = "OTHER".freeze

    def self.all_vars
      @all_vars ||= [ACCOUNT_CLOSURE, ACCOUNT_OPENING, APR_INCREASE, LINE_DECREASE, OTHER].freeze
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
      return value if Purpose.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Purpose"
    end
  end
end