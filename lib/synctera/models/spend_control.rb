=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class SpendControl
    # If set, create a case for transactions that do not conform to the spend control
    attr_accessor :action_case

    # If set, decline transactions that do not conform to the spend control
    attr_accessor :action_decline

    # Monetary limit for the spend control in the smallest currency unit (eg cents)
    attr_accessor :amount_limit

    # The timestamp representing when the spend control was created
    attr_accessor :creation_time

    attr_accessor :direction

    # Spend Control ID
    attr_accessor :id

    # Indicates if spend control is active
    attr_accessor :is_active

    # The timestamp representing when the spend control was last modified
    attr_accessor :last_modified_time

    # merchant category codes for spend control
    attr_accessor :merchant_category_codes

    # Name assigned to spend control
    attr_accessor :name

    # A list of payment sub-types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all sub-types.
    attr_accessor :payment_sub_types

    # A list of payment types to which a spend control will apply, if set. If not set or the array is empty, then the spend control will apply to all types of payments.
    attr_accessor :payment_types

    attr_accessor :time_range

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
        :'action_case' => :'action_case',
        :'action_decline' => :'action_decline',
        :'amount_limit' => :'amount_limit',
        :'creation_time' => :'creation_time',
        :'direction' => :'direction',
        :'id' => :'id',
        :'is_active' => :'is_active',
        :'last_modified_time' => :'last_modified_time',
        :'merchant_category_codes' => :'merchant_category_codes',
        :'name' => :'name',
        :'payment_sub_types' => :'payment_sub_types',
        :'payment_types' => :'payment_types',
        :'time_range' => :'time_range'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_case' => :'Boolean',
        :'action_decline' => :'Boolean',
        :'amount_limit' => :'Integer',
        :'creation_time' => :'Time',
        :'direction' => :'SpendControlDirection',
        :'id' => :'String',
        :'is_active' => :'Boolean',
        :'last_modified_time' => :'Time',
        :'merchant_category_codes' => :'Array<String>',
        :'name' => :'String',
        :'payment_sub_types' => :'Array<PaymentSubType>',
        :'payment_types' => :'Array<PaymentType>',
        :'time_range' => :'SpendControlTimeRange'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::SpendControl` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::SpendControl`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action_case')
        self.action_case = attributes[:'action_case']
      else
        self.action_case = nil
      end

      if attributes.key?(:'action_decline')
        self.action_decline = attributes[:'action_decline']
      else
        self.action_decline = nil
      end

      if attributes.key?(:'amount_limit')
        self.amount_limit = attributes[:'amount_limit']
      else
        self.amount_limit = nil
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      else
        self.is_active = nil
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.key?(:'merchant_category_codes')
        if (value = attributes[:'merchant_category_codes']).is_a?(Array)
          self.merchant_category_codes = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'payment_sub_types')
        if (value = attributes[:'payment_sub_types']).is_a?(Array)
          self.payment_sub_types = value
        end
      end

      if attributes.key?(:'payment_types')
        if (value = attributes[:'payment_types']).is_a?(Array)
          self.payment_types = value
        end
      end

      if attributes.key?(:'time_range')
        self.time_range = attributes[:'time_range']
      else
        self.time_range = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @action_case.nil?
        invalid_properties.push('invalid value for "action_case", action_case cannot be nil.')
      end

      if @action_decline.nil?
        invalid_properties.push('invalid value for "action_decline", action_decline cannot be nil.')
      end

      if @amount_limit.nil?
        invalid_properties.push('invalid value for "amount_limit", amount_limit cannot be nil.')
      end

      if @amount_limit < 0
        invalid_properties.push('invalid value for "amount_limit", must be greater than or equal to 0.')
      end

      if @is_active.nil?
        invalid_properties.push('invalid value for "is_active", is_active cannot be nil.')
      end

      if !@merchant_category_codes.nil? && @merchant_category_codes.length > 10
        invalid_properties.push('invalid value for "merchant_category_codes", number of items must be less than or equal to 10.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @time_range.nil?
        invalid_properties.push('invalid value for "time_range", time_range cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @action_case.nil?
      return false if @action_decline.nil?
      return false if @amount_limit.nil?
      return false if @amount_limit < 0
      return false if @is_active.nil?
      return false if !@merchant_category_codes.nil? && @merchant_category_codes.length > 10
      return false if @name.nil?
      return false if @time_range.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount_limit Value to be assigned
    def amount_limit=(amount_limit)
      if amount_limit.nil?
        fail ArgumentError, 'amount_limit cannot be nil'
      end

      if amount_limit < 0
        fail ArgumentError, 'invalid value for "amount_limit", must be greater than or equal to 0.'
      end

      @amount_limit = amount_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_category_codes Value to be assigned
    def merchant_category_codes=(merchant_category_codes)
      if merchant_category_codes.nil?
        fail ArgumentError, 'merchant_category_codes cannot be nil'
      end

      if merchant_category_codes.length > 10
        fail ArgumentError, 'invalid value for "merchant_category_codes", number of items must be less than or equal to 10.'
      end

      @merchant_category_codes = merchant_category_codes
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_case == o.action_case &&
          action_decline == o.action_decline &&
          amount_limit == o.amount_limit &&
          creation_time == o.creation_time &&
          direction == o.direction &&
          id == o.id &&
          is_active == o.is_active &&
          last_modified_time == o.last_modified_time &&
          merchant_category_codes == o.merchant_category_codes &&
          name == o.name &&
          payment_sub_types == o.payment_sub_types &&
          payment_types == o.payment_types &&
          time_range == o.time_range
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_case, action_decline, amount_limit, creation_time, direction, id, is_active, last_modified_time, merchant_category_codes, name, payment_sub_types, payment_types, time_range].hash
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
