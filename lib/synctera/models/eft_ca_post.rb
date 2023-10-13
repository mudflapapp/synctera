=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module Synctera
  # Properties for creating a transfer
  class EftCaPost
    # Transfer amount in cents
    attr_accessor :amount

    # The UUID of the Synctera customer resource that is the originator of the transfer. 
    attr_accessor :customer_id

    # Debit or credit sign
    attr_accessor :dc_sign

    # Additional information to be added to the transfer
    attr_accessor :source_data

    # The three digit transaction code that identifies the type of transaction. More information can be found here: https://www.payments.ca/sites/default/files/standard007eng.pdf. 
    attr_accessor :transaction_code

    # The UUID of the Synctera external account resource that is the destination of the transfer. This external account represents the account on the destination bank's platform. 
    attr_accessor :destination_account_id

    # The official name of the account owner of the destination account. 
    attr_accessor :destination_account_owner_name

    # The effective date of the transaction once it gets posted
    attr_accessor :effective_date

    # Send the same day (use only is_same_day without specific effective_date).
    attr_accessor :is_same_day

    # The UUID of the Synctera account resource originating the transfer. 
    attr_accessor :originating_account_id

    # The official name of the account owner of the originating account. 
    attr_accessor :originating_account_owner_name

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
        :'amount' => :'amount',
        :'customer_id' => :'customer_id',
        :'dc_sign' => :'dc_sign',
        :'source_data' => :'source_data',
        :'transaction_code' => :'transaction_code',
        :'destination_account_id' => :'destination_account_id',
        :'destination_account_owner_name' => :'destination_account_owner_name',
        :'effective_date' => :'effective_date',
        :'is_same_day' => :'is_same_day',
        :'originating_account_id' => :'originating_account_id',
        :'originating_account_owner_name' => :'originating_account_owner_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'customer_id' => :'String',
        :'dc_sign' => :'String',
        :'source_data' => :'Object',
        :'transaction_code' => :'String',
        :'destination_account_id' => :'String',
        :'destination_account_owner_name' => :'String',
        :'effective_date' => :'Date',
        :'is_same_day' => :'Boolean',
        :'originating_account_id' => :'String',
        :'originating_account_owner_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'EftCaBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::EftCaPost` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::EftCaPost`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      else
        self.customer_id = nil
      end

      if attributes.key?(:'dc_sign')
        self.dc_sign = attributes[:'dc_sign']
      else
        self.dc_sign = nil
      end

      if attributes.key?(:'source_data')
        self.source_data = attributes[:'source_data']
      end

      if attributes.key?(:'transaction_code')
        self.transaction_code = attributes[:'transaction_code']
      else
        self.transaction_code = nil
      end

      if attributes.key?(:'destination_account_id')
        self.destination_account_id = attributes[:'destination_account_id']
      else
        self.destination_account_id = nil
      end

      if attributes.key?(:'destination_account_owner_name')
        self.destination_account_owner_name = attributes[:'destination_account_owner_name']
      else
        self.destination_account_owner_name = nil
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      end

      if attributes.key?(:'is_same_day')
        self.is_same_day = attributes[:'is_same_day']
      end

      if attributes.key?(:'originating_account_id')
        self.originating_account_id = attributes[:'originating_account_id']
      else
        self.originating_account_id = nil
      end

      if attributes.key?(:'originating_account_owner_name')
        self.originating_account_owner_name = attributes[:'originating_account_owner_name']
      else
        self.originating_account_owner_name = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount < 1
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 1.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if @dc_sign.nil?
        invalid_properties.push('invalid value for "dc_sign", dc_sign cannot be nil.')
      end

      if @transaction_code.nil?
        invalid_properties.push('invalid value for "transaction_code", transaction_code cannot be nil.')
      end

      if @destination_account_id.nil?
        invalid_properties.push('invalid value for "destination_account_id", destination_account_id cannot be nil.')
      end

      if @destination_account_owner_name.nil?
        invalid_properties.push('invalid value for "destination_account_owner_name", destination_account_owner_name cannot be nil.')
      end

      if @originating_account_id.nil?
        invalid_properties.push('invalid value for "originating_account_id", originating_account_id cannot be nil.')
      end

      if @originating_account_owner_name.nil?
        invalid_properties.push('invalid value for "originating_account_owner_name", originating_account_owner_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @amount.nil?
      return false if @amount < 1
      return false if @customer_id.nil?
      return false if @dc_sign.nil?
      dc_sign_validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      return false unless dc_sign_validator.valid?(@dc_sign)
      return false if @transaction_code.nil?
      return false if @destination_account_id.nil?
      return false if @destination_account_owner_name.nil?
      return false if @originating_account_id.nil?
      return false if @originating_account_owner_name.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount < 1
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 1.'
      end

      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dc_sign Object to be assigned
    def dc_sign=(dc_sign)
      validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      unless validator.valid?(dc_sign)
        fail ArgumentError, "invalid value for \"dc_sign\", must be one of #{validator.allowable_values}."
      end
      @dc_sign = dc_sign
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_code Value to be assigned
    def transaction_code=(transaction_code)
      if transaction_code.nil?
        fail ArgumentError, 'transaction_code cannot be nil'
      end

      @transaction_code = transaction_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          customer_id == o.customer_id &&
          dc_sign == o.dc_sign &&
          source_data == o.source_data &&
          transaction_code == o.transaction_code &&
          destination_account_id == o.destination_account_id &&
          destination_account_owner_name == o.destination_account_owner_name &&
          effective_date == o.effective_date &&
          is_same_day == o.is_same_day &&
          originating_account_id == o.originating_account_id &&
          originating_account_owner_name == o.originating_account_owner_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, customer_id, dc_sign, source_data, transaction_code, destination_account_id, destination_account_owner_name, effective_date, is_same_day, originating_account_id, originating_account_owner_name].hash
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
