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
  class EventTypeExplicit
    ADVERSE_ACTION_CREATED = "ADVERSE_ACTION.CREATED".freeze
    APPLICATION_CREATED = "APPLICATION.CREATED".freeze
    APPLICATION_UPDATED = "APPLICATION.UPDATED".freeze
    CARD_CREATED = "CARD.CREATED".freeze
    CARD_DIGITALWALLETTOKEN_CREATED = "CARD.DIGITALWALLETTOKEN.CREATED".freeze
    CARD_DIGITALWALLETTOKEN_UPDATED = "CARD.DIGITALWALLETTOKEN.UPDATED".freeze
    CARD_IMAGE_CREATED = "CARD.IMAGE.CREATED".freeze
    CARD_IMAGE_UPDATED = "CARD.IMAGE.UPDATED".freeze
    CARD_UPDATED = "CARD.UPDATED".freeze
    DISPUTE_CREATED = "DISPUTE.CREATED".freeze
    DISPUTE_UPDATED = "DISPUTE.UPDATED".freeze
    EXTERNAL_CARD_CREATED = "EXTERNAL_CARD.CREATED".freeze
    EXTERNAL_CARD_DELETED = "EXTERNAL_CARD.DELETED".freeze
    EXTERNAL_CARD_UPDATED = "EXTERNAL_CARD.UPDATED".freeze
    EXTERNAL_CARD_TRANSFER_CREATED = "EXTERNAL_CARD_TRANSFER.CREATED".freeze
    EXTERNAL_CARD_TRANSFER_UPDATED = "EXTERNAL_CARD_TRANSFER.UPDATED".freeze
    INTERNAL_TRANSFER_SUCCEEDED = "INTERNAL_TRANSFER.SUCCEEDED".freeze
    STATEMENT_CREATED = "STATEMENT.CREATED".freeze
    TRANSACTION_CREATED = "TRANSACTION.CREATED".freeze
    TRANSACTION_UPDATED = "TRANSACTION.UPDATED".freeze

    def self.all_vars
      @all_vars ||= [ADVERSE_ACTION_CREATED, APPLICATION_CREATED, APPLICATION_UPDATED, CARD_CREATED, CARD_DIGITALWALLETTOKEN_CREATED, CARD_DIGITALWALLETTOKEN_UPDATED, CARD_IMAGE_CREATED, CARD_IMAGE_UPDATED, CARD_UPDATED, DISPUTE_CREATED, DISPUTE_UPDATED, EXTERNAL_CARD_CREATED, EXTERNAL_CARD_DELETED, EXTERNAL_CARD_UPDATED, EXTERNAL_CARD_TRANSFER_CREATED, EXTERNAL_CARD_TRANSFER_UPDATED, INTERNAL_TRANSFER_SUCCEEDED, STATEMENT_CREATED, TRANSACTION_CREATED, TRANSACTION_UPDATED].freeze
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
      return value if EventTypeExplicit.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #EventTypeExplicit"
    end
  end
end
