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
  class ExternalAccountTransaction
    # Transaction amount. Number in cents. E.g. 1000 represents $10.00
    attr_accessor :amount

    # Date that the transaction is authorized. ISO 8601 format ( YYYY-MM-DD ).
    attr_accessor :authorized_date

    # Category of the transaction
    attr_accessor :category

    # Check number of the transaction. This field will be null if not a check transaction.
    attr_accessor :check_number

    # ISO 4217 alphabetic currency code
    attr_accessor :currency

    # For pending transactions, this represents the date of the transaction occurred; for posted transactions, this represents the date of the transaction posted. ISO 8601 format ( YYYY-MM-DD ). 
    attr_accessor :date

    # Indicates the transaction is pending or unsettled if true.
    attr_accessor :is_pending

    # Merchant name of the transaction
    attr_accessor :merchant_name

    # channel used to make a payment
    attr_accessor :payment_channel

    # Transfer type of the transaction, e.g. ACH
    attr_accessor :payment_method

    # case-sensitive transaction ID
    attr_accessor :transaction_id

    # type of the transaction
    attr_accessor :transaction_type

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
        :'authorized_date' => :'authorized_date',
        :'category' => :'category',
        :'check_number' => :'check_number',
        :'currency' => :'currency',
        :'date' => :'date',
        :'is_pending' => :'is_pending',
        :'merchant_name' => :'merchant_name',
        :'payment_channel' => :'payment_channel',
        :'payment_method' => :'payment_method',
        :'transaction_id' => :'transaction_id',
        :'transaction_type' => :'transaction_type'
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
        :'authorized_date' => :'Date',
        :'category' => :'Array<String>',
        :'check_number' => :'String',
        :'currency' => :'String',
        :'date' => :'Date',
        :'is_pending' => :'Boolean',
        :'merchant_name' => :'String',
        :'payment_channel' => :'String',
        :'payment_method' => :'String',
        :'transaction_id' => :'String',
        :'transaction_type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'authorized_date',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::ExternalAccountTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::ExternalAccountTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'authorized_date')
        self.authorized_date = attributes[:'authorized_date']
      end

      if attributes.key?(:'category')
        if (value = attributes[:'category']).is_a?(Array)
          self.category = value
        end
      end

      if attributes.key?(:'check_number')
        self.check_number = attributes[:'check_number']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'is_pending')
        self.is_pending = attributes[:'is_pending']
      end

      if attributes.key?(:'merchant_name')
        self.merchant_name = attributes[:'merchant_name']
      end

      if attributes.key?(:'payment_channel')
        self.payment_channel = attributes[:'payment_channel']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
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
      payment_channel_validator = EnumAttributeValidator.new('String', ["IN_STORE", "ONLINE", "OTHER"])
      return false unless payment_channel_validator.valid?(@payment_channel)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_channel Object to be assigned
    def payment_channel=(payment_channel)
      validator = EnumAttributeValidator.new('String', ["IN_STORE", "ONLINE", "OTHER"])
      unless validator.valid?(payment_channel)
        fail ArgumentError, "invalid value for \"payment_channel\", must be one of #{validator.allowable_values}."
      end
      @payment_channel = payment_channel
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          authorized_date == o.authorized_date &&
          category == o.category &&
          check_number == o.check_number &&
          currency == o.currency &&
          date == o.date &&
          is_pending == o.is_pending &&
          merchant_name == o.merchant_name &&
          payment_channel == o.payment_channel &&
          payment_method == o.payment_method &&
          transaction_id == o.transaction_id &&
          transaction_type == o.transaction_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, authorized_date, category, check_number, currency, date, is_pending, merchant_name, payment_channel, payment_method, transaction_id, transaction_type].hash
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
