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
  # Transaction metadata specific to transactions with type `WIRE`
  class WireTransactionData
    # The name of the beneficiary (recipient) of the wire transfer.
    attr_accessor :beneficiary_name

    # The file name the wire was sent in or received from
    attr_accessor :file_name

    # The Synctera Wire payment UUID
    attr_accessor :id

    # The UUID of the account that the wire payment is being sent from
    attr_accessor :originating_account_id

    # The name of the originator of the wire transfer.
    attr_accessor :originator_name

    # The UUID if the account that is receiving the wire
    attr_accessor :receiving_account_id

    # The message to the recipient
    attr_accessor :recipient_message

    # The wire Sender Reference Number for the transfer
    attr_accessor :wire_reference_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'beneficiary_name' => :'beneficiary_name',
        :'file_name' => :'file_name',
        :'id' => :'id',
        :'originating_account_id' => :'originating_account_id',
        :'originator_name' => :'originator_name',
        :'receiving_account_id' => :'receiving_account_id',
        :'recipient_message' => :'recipient_message',
        :'wire_reference_number' => :'wire_reference_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'beneficiary_name' => :'String',
        :'file_name' => :'String',
        :'id' => :'String',
        :'originating_account_id' => :'String',
        :'originator_name' => :'String',
        :'receiving_account_id' => :'String',
        :'recipient_message' => :'String',
        :'wire_reference_number' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::WireTransactionData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::WireTransactionData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'beneficiary_name')
        self.beneficiary_name = attributes[:'beneficiary_name']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'originating_account_id')
        self.originating_account_id = attributes[:'originating_account_id']
      end

      if attributes.key?(:'originator_name')
        self.originator_name = attributes[:'originator_name']
      end

      if attributes.key?(:'receiving_account_id')
        self.receiving_account_id = attributes[:'receiving_account_id']
      end

      if attributes.key?(:'recipient_message')
        self.recipient_message = attributes[:'recipient_message']
      end

      if attributes.key?(:'wire_reference_number')
        self.wire_reference_number = attributes[:'wire_reference_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          beneficiary_name == o.beneficiary_name &&
          file_name == o.file_name &&
          id == o.id &&
          originating_account_id == o.originating_account_id &&
          originator_name == o.originator_name &&
          receiving_account_id == o.receiving_account_id &&
          recipient_message == o.recipient_message &&
          wire_reference_number == o.wire_reference_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [beneficiary_name, file_name, id, originating_account_id, originator_name, receiving_account_id, recipient_message, wire_reference_number].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Synctera.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end