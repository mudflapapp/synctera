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
  class SourceOfScore
    ACCOUNT_MANAGEMENT = "ACCOUNT_MANAGEMENT".freeze
    ACCOUNT_OPENING = "ACCOUNT_OPENING".freeze
    HARDSHIP = "HARDSHIP".freeze
    LINE_INCREASE_REQUEST = "LINE_INCREASE_REQUEST".freeze
    OTHER = "OTHER".freeze

    def self.all_vars
      @all_vars ||= [ACCOUNT_MANAGEMENT, ACCOUNT_OPENING, HARDSHIP, LINE_INCREASE_REQUEST, OTHER].freeze
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
      return value if SourceOfScore.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SourceOfScore"
    end
  end
end