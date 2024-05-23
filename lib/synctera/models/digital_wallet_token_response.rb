=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.111.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class DigitalWalletTokenResponse
    attr_accessor :approved_time

    # Card ID of the Digital wallet Token
    attr_accessor :card_id

    # The user’s Android device ID; the device’s unique identifier.
    attr_accessor :device_id

    # Type of the device where the Digital Wallet Token is used in
    attr_accessor :device_type

    # Digital Wallet Token ID
    attr_accessor :id

    attr_accessor :last_modified_time

    # Raw data from processor.
    attr_accessor :processor_data

    # The time that the token was removed from a wallet. Tokens make remain active after being removed from a wallet.
    attr_accessor :removed_from_wallet_time

    attr_accessor :requested_time

    attr_accessor :state

    # Unique identifier of the digital wallet token within the card network.
    attr_accessor :token_reference_id

    # Type of the Digital Wallet. Can be one of APPLE_PAY, ANDROID_PAY, SAMSUNG_PAY or something else when cards are added on file to a merchant.
    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'approved_time' => :'approved_time',
        :'card_id' => :'card_id',
        :'device_id' => :'device_id',
        :'device_type' => :'device_type',
        :'id' => :'id',
        :'last_modified_time' => :'last_modified_time',
        :'processor_data' => :'processor_data',
        :'removed_from_wallet_time' => :'removed_from_wallet_time',
        :'requested_time' => :'requested_time',
        :'state' => :'state',
        :'token_reference_id' => :'token_reference_id',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'approved_time' => :'Time',
        :'card_id' => :'String',
        :'device_id' => :'String',
        :'device_type' => :'String',
        :'id' => :'String',
        :'last_modified_time' => :'Time',
        :'processor_data' => :'Object',
        :'removed_from_wallet_time' => :'Time',
        :'requested_time' => :'Time',
        :'state' => :'DigitalWalletTokenState',
        :'token_reference_id' => :'String',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::DigitalWalletTokenResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::DigitalWalletTokenResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'approved_time')
        self.approved_time = attributes[:'approved_time']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.key?(:'processor_data')
        self.processor_data = attributes[:'processor_data']
      end

      if attributes.key?(:'removed_from_wallet_time')
        self.removed_from_wallet_time = attributes[:'removed_from_wallet_time']
      end

      if attributes.key?(:'requested_time')
        self.requested_time = attributes[:'requested_time']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'token_reference_id')
        self.token_reference_id = attributes[:'token_reference_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@device_id.nil? && @device_id.to_s.length > 124
        invalid_properties.push('invalid value for "device_id", the character length must be smaller than or equal to 124.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@device_id.nil? && @device_id.to_s.length > 124
      device_type_validator = EnumAttributeValidator.new('String', ["APPLIANCE", "GAMING_DEVICE", "LAPTOP", "MOBILE_PHONE", "MOBILE_PHONE_OR_TABLET", "TABLET", "UNKNOWN", "VEHICLE", "WATCH"])
      return false unless device_type_validator.valid?(@device_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] device_id Value to be assigned
    def device_id=(device_id)
      if device_id.nil?
        fail ArgumentError, 'device_id cannot be nil'
      end

      if device_id.to_s.length > 124
        fail ArgumentError, 'invalid value for "device_id", the character length must be smaller than or equal to 124.'
      end

      @device_id = device_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_type Object to be assigned
    def device_type=(device_type)
      validator = EnumAttributeValidator.new('String', ["APPLIANCE", "GAMING_DEVICE", "LAPTOP", "MOBILE_PHONE", "MOBILE_PHONE_OR_TABLET", "TABLET", "UNKNOWN", "VEHICLE", "WATCH"])
      unless validator.valid?(device_type)
        fail ArgumentError, "invalid value for \"device_type\", must be one of #{validator.allowable_values}."
      end
      @device_type = device_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          approved_time == o.approved_time &&
          card_id == o.card_id &&
          device_id == o.device_id &&
          device_type == o.device_type &&
          id == o.id &&
          last_modified_time == o.last_modified_time &&
          processor_data == o.processor_data &&
          removed_from_wallet_time == o.removed_from_wallet_time &&
          requested_time == o.requested_time &&
          state == o.state &&
          token_reference_id == o.token_reference_id &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [approved_time, card_id, device_id, device_type, id, last_modified_time, processor_data, removed_from_wallet_time, requested_time, state, token_reference_id, type].hash
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
