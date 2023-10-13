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
  class Status2
    ACTIVE = "ACTIVE".freeze
    DECEASED = "DECEASED".freeze
    DENIED = "DENIED".freeze
    DORMANT = "DORMANT".freeze
    ESCHEAT = "ESCHEAT".freeze
    FROZEN = "FROZEN".freeze
    INACTIVE = "INACTIVE".freeze
    PROSPECT = "PROSPECT".freeze
    SANCTION = "SANCTION".freeze

    def self.all_vars
      @all_vars ||= [ACTIVE, DECEASED, DENIED, DORMANT, ESCHEAT, FROZEN, INACTIVE, PROSPECT, SANCTION].freeze
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
      return value if Status2.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Status2"
    end
  end
end