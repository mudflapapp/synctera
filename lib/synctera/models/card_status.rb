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
  class CardStatus
    ACTIVE = "ACTIVE".freeze
    IMAGE_PENDING = "IMAGE_PENDING".freeze
    IMAGE_REJECTED = "IMAGE_REJECTED".freeze
    PENDING = "PENDING".freeze
    REJECTED = "REJECTED".freeze
    SUSPENDED = "SUSPENDED".freeze
    TERMINATED = "TERMINATED".freeze
    UNACTIVATED = "UNACTIVATED".freeze

    def self.all_vars
      @all_vars ||= [ACTIVE, IMAGE_PENDING, IMAGE_REJECTED, PENDING, REJECTED, SUSPENDED, TERMINATED, UNACTIVATED].freeze
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
      return value if CardStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CardStatus"
    end
  end
end
