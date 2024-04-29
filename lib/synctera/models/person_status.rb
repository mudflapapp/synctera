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
  class PersonStatus
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
      return value if PersonStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PersonStatus"
    end
  end
end
