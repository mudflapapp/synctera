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
  # The config of a Batch Payment Template. This is used the match the Batch Payment Template to a batch transfer. 
  class BatchPaymentTemplateConfig
    # The ID of the external account that will be to match the batch transfer the appropriate template. 
    attr_accessor :external_account_id

    # The maximum amount that a single transaction can be for the batch transfer. 
    attr_accessor :max_individual_transaction_amount

    # The maximum amount that the total transactions can be for the batch transfer. 
    attr_accessor :max_total_transaction_amount

    # The maximum number of transactions that can be in the batch transfer. 
    attr_accessor :max_transaction_count

    # The minimum amount that a single transaction can be for the batch transfer. 
    attr_accessor :min_individual_transaction_amount

    # The minimum amount that the total transactions can be for the batch transfer. 
    attr_accessor :min_total_transaction_amount

    # The minimum number of transactions that can be in the batch transfer. 
    attr_accessor :min_transaction_count

    # The ID of the settlement account that will be to match the batch transfer the appropriate template. 
    attr_accessor :settlement_account_id

    # The customer ID of the settlement account. 
    attr_accessor :settlement_customer_id

    # The transaction subtypes that will be to match the batch transfer the appropriate template. 
    attr_accessor :subtypes

    # The transaction type that will be to match the batch transfer the appropriate template. 
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'external_account_id' => :'external_account_id',
        :'max_individual_transaction_amount' => :'max_individual_transaction_amount',
        :'max_total_transaction_amount' => :'max_total_transaction_amount',
        :'max_transaction_count' => :'max_transaction_count',
        :'min_individual_transaction_amount' => :'min_individual_transaction_amount',
        :'min_total_transaction_amount' => :'min_total_transaction_amount',
        :'min_transaction_count' => :'min_transaction_count',
        :'settlement_account_id' => :'settlement_account_id',
        :'settlement_customer_id' => :'settlement_customer_id',
        :'subtypes' => :'subtypes',
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
        :'external_account_id' => :'String',
        :'max_individual_transaction_amount' => :'Integer',
        :'max_total_transaction_amount' => :'Integer',
        :'max_transaction_count' => :'Integer',
        :'min_individual_transaction_amount' => :'Integer',
        :'min_total_transaction_amount' => :'Integer',
        :'min_transaction_count' => :'Integer',
        :'settlement_account_id' => :'String',
        :'settlement_customer_id' => :'String',
        :'subtypes' => :'Array<String>',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::BatchPaymentTemplateConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::BatchPaymentTemplateConfig`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_account_id')
        self.external_account_id = attributes[:'external_account_id']
      else
        self.external_account_id = nil
      end

      if attributes.key?(:'max_individual_transaction_amount')
        self.max_individual_transaction_amount = attributes[:'max_individual_transaction_amount']
      end

      if attributes.key?(:'max_total_transaction_amount')
        self.max_total_transaction_amount = attributes[:'max_total_transaction_amount']
      end

      if attributes.key?(:'max_transaction_count')
        self.max_transaction_count = attributes[:'max_transaction_count']
      end

      if attributes.key?(:'min_individual_transaction_amount')
        self.min_individual_transaction_amount = attributes[:'min_individual_transaction_amount']
      end

      if attributes.key?(:'min_total_transaction_amount')
        self.min_total_transaction_amount = attributes[:'min_total_transaction_amount']
      end

      if attributes.key?(:'min_transaction_count')
        self.min_transaction_count = attributes[:'min_transaction_count']
      end

      if attributes.key?(:'settlement_account_id')
        self.settlement_account_id = attributes[:'settlement_account_id']
      else
        self.settlement_account_id = nil
      end

      if attributes.key?(:'settlement_customer_id')
        self.settlement_customer_id = attributes[:'settlement_customer_id']
      else
        self.settlement_customer_id = nil
      end

      if attributes.key?(:'subtypes')
        if (value = attributes[:'subtypes']).is_a?(Array)
          self.subtypes = value
        end
      else
        self.subtypes = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @external_account_id.nil?
        invalid_properties.push('invalid value for "external_account_id", external_account_id cannot be nil.')
      end

      if @settlement_account_id.nil?
        invalid_properties.push('invalid value for "settlement_account_id", settlement_account_id cannot be nil.')
      end

      if @settlement_customer_id.nil?
        invalid_properties.push('invalid value for "settlement_customer_id", settlement_customer_id cannot be nil.')
      end

      if @subtypes.nil?
        invalid_properties.push('invalid value for "subtypes", subtypes cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @external_account_id.nil?
      return false if @settlement_account_id.nil?
      return false if @settlement_customer_id.nil?
      return false if @subtypes.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_account_id == o.external_account_id &&
          max_individual_transaction_amount == o.max_individual_transaction_amount &&
          max_total_transaction_amount == o.max_total_transaction_amount &&
          max_transaction_count == o.max_transaction_count &&
          min_individual_transaction_amount == o.min_individual_transaction_amount &&
          min_total_transaction_amount == o.min_total_transaction_amount &&
          min_transaction_count == o.min_transaction_count &&
          settlement_account_id == o.settlement_account_id &&
          settlement_customer_id == o.settlement_customer_id &&
          subtypes == o.subtypes &&
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
      [external_account_id, max_individual_transaction_amount, max_total_transaction_amount, max_transaction_count, min_individual_transaction_amount, min_total_transaction_amount, min_transaction_count, settlement_account_id, settlement_customer_id, subtypes, type].hash
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