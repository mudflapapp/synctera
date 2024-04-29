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
  class OriginalCreditSenderData
    attr_accessor :funding_source

    attr_accessor :sender_account_number

    attr_accessor :sender_account_type

    attr_accessor :sender_address

    attr_accessor :sender_city

    attr_accessor :sender_country

    attr_accessor :sender_name

    attr_accessor :sender_reference_number

    attr_accessor :sender_state

    attr_accessor :transaction_purpose

    attr_accessor :unique_transaction_reference_number

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
        :'funding_source' => :'funding_source',
        :'sender_account_number' => :'sender_account_number',
        :'sender_account_type' => :'sender_account_type',
        :'sender_address' => :'sender_address',
        :'sender_city' => :'sender_city',
        :'sender_country' => :'sender_country',
        :'sender_name' => :'sender_name',
        :'sender_reference_number' => :'sender_reference_number',
        :'sender_state' => :'sender_state',
        :'transaction_purpose' => :'transaction_purpose',
        :'unique_transaction_reference_number' => :'unique_transaction_reference_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'funding_source' => :'String',
        :'sender_account_number' => :'String',
        :'sender_account_type' => :'String',
        :'sender_address' => :'String',
        :'sender_city' => :'String',
        :'sender_country' => :'String',
        :'sender_name' => :'String',
        :'sender_reference_number' => :'String',
        :'sender_state' => :'String',
        :'transaction_purpose' => :'String',
        :'unique_transaction_reference_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::OriginalCreditSenderData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::OriginalCreditSenderData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'funding_source')
        self.funding_source = attributes[:'funding_source']
      else
        self.funding_source = nil
      end

      if attributes.key?(:'sender_account_number')
        self.sender_account_number = attributes[:'sender_account_number']
      end

      if attributes.key?(:'sender_account_type')
        self.sender_account_type = attributes[:'sender_account_type']
      end

      if attributes.key?(:'sender_address')
        self.sender_address = attributes[:'sender_address']
      end

      if attributes.key?(:'sender_city')
        self.sender_city = attributes[:'sender_city']
      end

      if attributes.key?(:'sender_country')
        self.sender_country = attributes[:'sender_country']
      end

      if attributes.key?(:'sender_name')
        self.sender_name = attributes[:'sender_name']
      end

      if attributes.key?(:'sender_reference_number')
        self.sender_reference_number = attributes[:'sender_reference_number']
      end

      if attributes.key?(:'sender_state')
        self.sender_state = attributes[:'sender_state']
      end

      if attributes.key?(:'transaction_purpose')
        self.transaction_purpose = attributes[:'transaction_purpose']
      end

      if attributes.key?(:'unique_transaction_reference_number')
        self.unique_transaction_reference_number = attributes[:'unique_transaction_reference_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @funding_source.nil?
        invalid_properties.push('invalid value for "funding_source", funding_source cannot be nil.')
      end

      if !@unique_transaction_reference_number.nil? && @unique_transaction_reference_number.to_s.length > 17
        invalid_properties.push('invalid value for "unique_transaction_reference_number", the character length must be smaller than or equal to 17.')
      end

      if !@unique_transaction_reference_number.nil? && @unique_transaction_reference_number.to_s.length < 1
        invalid_properties.push('invalid value for "unique_transaction_reference_number", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @funding_source.nil?
      funding_source_validator = EnumAttributeValidator.new('String', ["cash", "credit", "debit", "deposit_account", "mobile_money_payment", "non_visa_credit", "prepaid"])
      return false unless funding_source_validator.valid?(@funding_source)
      sender_account_type_validator = EnumAttributeValidator.new('String', ["bank_account_number_and_identification_code", "card_account", "email", "iban", "other", "phone_number", "rtn_bank_account", "social_network_id", "wallet_id"])
      return false unless sender_account_type_validator.valid?(@sender_account_type)
      transaction_purpose_validator = EnumAttributeValidator.new('String', ["crypto_currency", "education", "emergency_need", "family_support", "gifts", "labor_transfers", "lending", "medical_treatment", "other", "salary", "savings", "travel"])
      return false unless transaction_purpose_validator.valid?(@transaction_purpose)
      return false if !@unique_transaction_reference_number.nil? && @unique_transaction_reference_number.to_s.length > 17
      return false if !@unique_transaction_reference_number.nil? && @unique_transaction_reference_number.to_s.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_source Object to be assigned
    def funding_source=(funding_source)
      validator = EnumAttributeValidator.new('String', ["cash", "credit", "debit", "deposit_account", "mobile_money_payment", "non_visa_credit", "prepaid"])
      unless validator.valid?(funding_source)
        fail ArgumentError, "invalid value for \"funding_source\", must be one of #{validator.allowable_values}."
      end
      @funding_source = funding_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sender_account_type Object to be assigned
    def sender_account_type=(sender_account_type)
      validator = EnumAttributeValidator.new('String', ["bank_account_number_and_identification_code", "card_account", "email", "iban", "other", "phone_number", "rtn_bank_account", "social_network_id", "wallet_id"])
      unless validator.valid?(sender_account_type)
        fail ArgumentError, "invalid value for \"sender_account_type\", must be one of #{validator.allowable_values}."
      end
      @sender_account_type = sender_account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_purpose Object to be assigned
    def transaction_purpose=(transaction_purpose)
      validator = EnumAttributeValidator.new('String', ["crypto_currency", "education", "emergency_need", "family_support", "gifts", "labor_transfers", "lending", "medical_treatment", "other", "salary", "savings", "travel"])
      unless validator.valid?(transaction_purpose)
        fail ArgumentError, "invalid value for \"transaction_purpose\", must be one of #{validator.allowable_values}."
      end
      @transaction_purpose = transaction_purpose
    end

    # Custom attribute writer method with validation
    # @param [Object] unique_transaction_reference_number Value to be assigned
    def unique_transaction_reference_number=(unique_transaction_reference_number)
      if unique_transaction_reference_number.nil?
        fail ArgumentError, 'unique_transaction_reference_number cannot be nil'
      end

      if unique_transaction_reference_number.to_s.length > 17
        fail ArgumentError, 'invalid value for "unique_transaction_reference_number", the character length must be smaller than or equal to 17.'
      end

      if unique_transaction_reference_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "unique_transaction_reference_number", the character length must be great than or equal to 1.'
      end

      @unique_transaction_reference_number = unique_transaction_reference_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          funding_source == o.funding_source &&
          sender_account_number == o.sender_account_number &&
          sender_account_type == o.sender_account_type &&
          sender_address == o.sender_address &&
          sender_city == o.sender_city &&
          sender_country == o.sender_country &&
          sender_name == o.sender_name &&
          sender_reference_number == o.sender_reference_number &&
          sender_state == o.sender_state &&
          transaction_purpose == o.transaction_purpose &&
          unique_transaction_reference_number == o.unique_transaction_reference_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [funding_source, sender_account_number, sender_account_type, sender_address, sender_city, sender_country, sender_name, sender_reference_number, sender_state, transaction_purpose, unique_transaction_reference_number].hash
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
