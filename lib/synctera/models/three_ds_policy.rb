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
  class ThreeDsPolicy
    DECISION_GATEWAY = "DECISION_GATEWAY".freeze
    EXEMPT = "EXEMPT".freeze
    SMS_OTP = "SMS_OTP".freeze

    def self.all_vars
      @all_vars ||= [DECISION_GATEWAY, EXEMPT, SMS_OTP].freeze
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
      return value if ThreeDsPolicy.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ThreeDsPolicy"
    end
  end
end
