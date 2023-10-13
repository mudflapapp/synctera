=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module Synctera
  class VerificationType1
    DOCUMENT_VERIFICATION = "DOCUMENT_VERIFICATION".freeze
    IDENTITY = "IDENTITY".freeze
    LICENSE = "LICENSE".freeze
    MANUAL_REVIEW = "MANUAL_REVIEW".freeze
    RELATED_ENTITIES = "RELATED_ENTITIES".freeze
    WATCHLIST = "WATCHLIST".freeze

    def self.all_vars
      @all_vars ||= [DOCUMENT_VERIFICATION, IDENTITY, LICENSE, MANUAL_REVIEW, RELATED_ENTITIES, WATCHLIST].freeze
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
      return value if VerificationType1.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #VerificationType1"
    end
  end
end
