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
  module DebitCardRequestDetails
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'PhysicalDebitCardIssuanceRequest',
          :'VirtualDebitCardIssuanceRequest'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'form'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'PHYSICAL' => :'PhysicalDebitCardIssuanceRequest',
          :'VIRTUAL' => :'VirtualDebitCardIssuanceRequest'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        Synctera.const_get(klass).build_from_hash(data)
      end
    end
  end

end
