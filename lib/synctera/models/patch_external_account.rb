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
  class PatchExternalAccount
    attr_accessor :account_identifiers

    # The names of the account owners.
    attr_accessor :account_owner_names

    # The currency of the account in ISO 4217 format
    attr_accessor :currency

    # A user-meaningful name for the account
    attr_accessor :nickname

    attr_accessor :routing_identifiers

    # The type of the account
    attr_accessor :type

    attr_accessor :verification

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
        :'account_identifiers' => :'account_identifiers',
        :'account_owner_names' => :'account_owner_names',
        :'currency' => :'currency',
        :'nickname' => :'nickname',
        :'routing_identifiers' => :'routing_identifiers',
        :'type' => :'type',
        :'verification' => :'verification'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_identifiers' => :'PatchAccountsRequestAccountIdentifiers',
        :'account_owner_names' => :'Array<String>',
        :'currency' => :'String',
        :'nickname' => :'String',
        :'routing_identifiers' => :'PatchAccountsRequestRoutingIdentifiers',
        :'type' => :'String',
        :'verification' => :'AccountVerification'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'verification'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PatchExternalAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PatchExternalAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_identifiers')
        self.account_identifiers = attributes[:'account_identifiers']
      end

      if attributes.key?(:'account_owner_names')
        if (value = attributes[:'account_owner_names']).is_a?(Array)
          self.account_owner_names = value
        end
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.key?(:'routing_identifiers')
        self.routing_identifiers = attributes[:'routing_identifiers']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'verification')
        self.verification = attributes[:'verification']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[A-Z]{3}$/)
      if !@currency.nil? && @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if !@nickname.nil? && @nickname.to_s.length < 1
        invalid_properties.push('invalid value for "nickname", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@currency.nil? && @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if !@nickname.nil? && @nickname.to_s.length < 1
      type_validator = EnumAttributeValidator.new('String', ["CHECKING", "SAVINGS"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if currency !~ pattern
        fail ArgumentError, "invalid value for \"currency\", must conform to the pattern #{pattern}."
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] nickname Value to be assigned
    def nickname=(nickname)
      if nickname.nil?
        fail ArgumentError, 'nickname cannot be nil'
      end

      if nickname.to_s.length < 1
        fail ArgumentError, 'invalid value for "nickname", the character length must be great than or equal to 1.'
      end

      @nickname = nickname
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["CHECKING", "SAVINGS"])
      unless validator.valid?(type)
        warn "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_identifiers == o.account_identifiers &&
          account_owner_names == o.account_owner_names &&
          currency == o.currency &&
          nickname == o.nickname &&
          routing_identifiers == o.routing_identifiers &&
          type == o.type &&
          verification == o.verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_identifiers, account_owner_names, currency, nickname, routing_identifiers, type, verification].hash
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
