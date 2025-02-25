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
  class PostedTransactionData
    # an unstructured json blob representing additional transaction information supplied by the integrator.
    attr_accessor :external_data

    # Whether or not the hold was forced (spending controls ignored)
    attr_accessor :force_post

    # The uuid of the hold (pending transaction) that this transaction originated from, if any.
    attr_accessor :hold_id

    # The set of accounting entries associated with this transaction. For example, a debit to a customer account will have a corresponding credit in a general ledger account.
    attr_accessor :lines

    # A short note to the recipient
    attr_accessor :memo

    attr_accessor :metadata

    # The \"original\" transaction that this transaction is related to. This is only populated in the case of reversed transactions.
    attr_accessor :original_trx

    # The \"parent\" transaction that this transaction is related to. This is only populated in the case of scheduled transactions.
    attr_accessor :parent_trx

    # Information received by the transaction risk/fraud service related to this transaction
    attr_accessor :risk_info

    # An unstructured JSON blob representing additional transaction information specific to each payment rail.
    attr_accessor :user_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'external_data' => :'external_data',
        :'force_post' => :'force_post',
        :'hold_id' => :'hold_id',
        :'lines' => :'lines',
        :'memo' => :'memo',
        :'metadata' => :'metadata',
        :'original_trx' => :'original_trx',
        :'parent_trx' => :'parent_trx',
        :'risk_info' => :'risk_info',
        :'user_data' => :'user_data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'external_data' => :'Object',
        :'force_post' => :'Boolean',
        :'hold_id' => :'String',
        :'lines' => :'Array<TransactionLine1>',
        :'memo' => :'String',
        :'metadata' => :'Object',
        :'original_trx' => :'String',
        :'parent_trx' => :'String',
        :'risk_info' => :'Object',
        :'user_data' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_data',
        :'metadata',
        :'risk_info',
        :'user_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PostedTransactionData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PostedTransactionData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'external_data')
        self.external_data = attributes[:'external_data']
      end

      if attributes.key?(:'force_post')
        self.force_post = attributes[:'force_post']
      else
        self.force_post = nil
      end

      if attributes.key?(:'hold_id')
        self.hold_id = attributes[:'hold_id']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      else
        self.lines = nil
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      else
        self.memo = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      else
        self.metadata = nil
      end

      if attributes.key?(:'original_trx')
        self.original_trx = attributes[:'original_trx']
      end

      if attributes.key?(:'parent_trx')
        self.parent_trx = attributes[:'parent_trx']
      end

      if attributes.key?(:'risk_info')
        self.risk_info = attributes[:'risk_info']
      end

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @force_post.nil?
        invalid_properties.push('invalid value for "force_post", force_post cannot be nil.')
      end

      if @lines.nil?
        invalid_properties.push('invalid value for "lines", lines cannot be nil.')
      end

      if @memo.nil?
        invalid_properties.push('invalid value for "memo", memo cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @force_post.nil?
      return false if @lines.nil?
      return false if @memo.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          external_data == o.external_data &&
          force_post == o.force_post &&
          hold_id == o.hold_id &&
          lines == o.lines &&
          memo == o.memo &&
          metadata == o.metadata &&
          original_trx == o.original_trx &&
          parent_trx == o.parent_trx &&
          risk_info == o.risk_info &&
          user_data == o.user_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [external_data, force_post, hold_id, lines, memo, metadata, original_trx, parent_trx, risk_info, user_data].hash
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
