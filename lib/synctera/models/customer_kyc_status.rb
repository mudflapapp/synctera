=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module Synctera
  class CustomerKycStatus
    ACCEPTED = "ACCEPTED".freeze
    PENDING = "PENDING".freeze
    PROVIDER_FAILURE = "PROVIDER_FAILURE".freeze
    PROVISIONAL = "PROVISIONAL".freeze
    REJECTED = "REJECTED".freeze
    REVIEW = "REVIEW".freeze
    UNVERIFIED = "UNVERIFIED".freeze

    def self.all_vars
      @all_vars ||= [ACCEPTED, PENDING, PROVIDER_FAILURE, PROVISIONAL, REJECTED, REVIEW, UNVERIFIED].freeze
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
      return value if CustomerKycStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CustomerKycStatus"
    end
  end
end
