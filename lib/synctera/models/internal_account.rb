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
  class InternalAccount
    # Generated internal account number
    attr_accessor :account_number

    attr_accessor :account_type

    # A list of balances for internal account based on different type
    attr_accessor :balances

    # The ID of the bank account associated with this internal account. It will be auto-filled if the account type has only one matching bank account in the system. 
    attr_accessor :bank_account_id

    # Bank routing number
    attr_accessor :bank_routing

    # The date and time the resource was created.
    attr_accessor :creation_time

    # Account currency or account settlement currency. ISO 4217 alphabetic currency code.
    attr_accessor :currency

    # A user provided description for the current account
    attr_accessor :description

    # What type of general ledger account this internal account represents. 
    attr_accessor :gl_type

    # Generated ID for internal account
    attr_accessor :id

    # Is a system-controlled internal account. When this field is true, this internal account will be reserved exclusively for internal use by the Synctera platform and any internal transfers to or from this internal account will be declined.
    attr_accessor :is_system_acc

    # The date and time the resource was last updated.
    attr_accessor :last_updated_time

    attr_accessor :purpose

    attr_accessor :status

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
        :'account_number' => :'account_number',
        :'account_type' => :'account_type',
        :'balances' => :'balances',
        :'bank_account_id' => :'bank_account_id',
        :'bank_routing' => :'bank_routing',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'description' => :'description',
        :'gl_type' => :'gl_type',
        :'id' => :'id',
        :'is_system_acc' => :'is_system_acc',
        :'last_updated_time' => :'last_updated_time',
        :'purpose' => :'purpose',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_number' => :'String',
        :'account_type' => :'InternalAccountType',
        :'balances' => :'Array<Balance>',
        :'bank_account_id' => :'String',
        :'bank_routing' => :'String',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'description' => :'String',
        :'gl_type' => :'String',
        :'id' => :'String',
        :'is_system_acc' => :'Boolean',
        :'last_updated_time' => :'Time',
        :'purpose' => :'InternalAccountPurpose',
        :'status' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::InternalAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::InternalAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'balances')
        if (value = attributes[:'balances']).is_a?(Array)
          self.balances = value
        end
      end

      if attributes.key?(:'bank_account_id')
        self.bank_account_id = attributes[:'bank_account_id']
      end

      if attributes.key?(:'bank_routing')
        self.bank_routing = attributes[:'bank_routing']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'gl_type')
        self.gl_type = attributes[:'gl_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_system_acc')
        self.is_system_acc = attributes[:'is_system_acc']
      else
        self.is_system_acc = false
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@bank_routing.nil? && @bank_routing.to_s.length > 9
        invalid_properties.push('invalid value for "bank_routing", the character length must be smaller than or equal to 9.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@bank_routing.nil? && @bank_routing.to_s.length > 9
      return false if @currency.nil?
      return false if @currency !~ Regexp.new(/^[A-Z]{3}$/)
      gl_type_validator = EnumAttributeValidator.new('String', ["ASSET", "EXPENSE", "LIABILITY", "REVENUE"])
      return false unless gl_type_validator.valid?(@gl_type)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_routing Value to be assigned
    def bank_routing=(bank_routing)
      if bank_routing.nil?
        fail ArgumentError, 'bank_routing cannot be nil'
      end

      if bank_routing.to_s.length > 9
        fail ArgumentError, 'invalid value for "bank_routing", the character length must be smaller than or equal to 9.'
      end

      @bank_routing = bank_routing
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gl_type Object to be assigned
    def gl_type=(gl_type)
      validator = EnumAttributeValidator.new('String', ["ASSET", "EXPENSE", "LIABILITY", "REVENUE"])
      unless validator.valid?(gl_type)
        warn "invalid value for \"gl_type\", must be one of #{validator.allowable_values}."
      end
      @gl_type = gl_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE"])
      unless validator.valid?(status)
        warn "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_number == o.account_number &&
          account_type == o.account_type &&
          balances == o.balances &&
          bank_account_id == o.bank_account_id &&
          bank_routing == o.bank_routing &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          description == o.description &&
          gl_type == o.gl_type &&
          id == o.id &&
          is_system_acc == o.is_system_acc &&
          last_updated_time == o.last_updated_time &&
          purpose == o.purpose &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, account_type, balances, bank_account_id, bank_routing, creation_time, currency, description, gl_type, id, is_system_acc, last_updated_time, purpose, status].hash
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
