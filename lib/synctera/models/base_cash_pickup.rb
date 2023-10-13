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
  class BaseCashPickup
    attr_accessor :account_id

    # The amount (in cents) of the transaction
    attr_accessor :amount

    attr_accessor :business_id

    attr_accessor :creation_time

    attr_accessor :currency

    attr_accessor :employee_customer_id

    attr_accessor :id

    attr_accessor :last_updated_time

    attr_accessor :metadata

    # the date when the money was actually picked up
    attr_accessor :pickup_time

    attr_accessor :posted_amount

    # The date the transaction was posted. This is the date any money is considered to be added or removed from an account.
    attr_accessor :posted_date

    # An external ID provided by the partner. This is not guaranteed to be globally unique.
    attr_accessor :reference_id

    # the date when the money was expected to be picked up
    attr_accessor :scheduled_pickup_date

    attr_accessor :transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'amount' => :'amount',
        :'business_id' => :'business_id',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'employee_customer_id' => :'employee_customer_id',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'pickup_time' => :'pickup_time',
        :'posted_amount' => :'posted_amount',
        :'posted_date' => :'posted_date',
        :'reference_id' => :'reference_id',
        :'scheduled_pickup_date' => :'scheduled_pickup_date',
        :'transaction_id' => :'transaction_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'amount' => :'Integer',
        :'business_id' => :'String',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'employee_customer_id' => :'String',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Hash<String, String>',
        :'pickup_time' => :'Time',
        :'posted_amount' => :'Integer',
        :'posted_date' => :'Date',
        :'reference_id' => :'String',
        :'scheduled_pickup_date' => :'Date',
        :'transaction_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::BaseCashPickup` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::BaseCashPickup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      else
        self.account_id = nil
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'employee_customer_id')
        self.employee_customer_id = attributes[:'employee_customer_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'pickup_time')
        self.pickup_time = attributes[:'pickup_time']
      end

      if attributes.key?(:'posted_amount')
        self.posted_amount = attributes[:'posted_amount']
      end

      if attributes.key?(:'posted_date')
        self.posted_date = attributes[:'posted_date']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      else
        self.reference_id = nil
      end

      if attributes.key?(:'scheduled_pickup_date')
        self.scheduled_pickup_date = attributes[:'scheduled_pickup_date']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if !@currency.nil? && @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if @reference_id.nil?
        invalid_properties.push('invalid value for "reference_id", reference_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_id.nil?
      return false if @amount.nil?
      return false if !@currency.nil? && @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if @reference_id.nil?
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          amount == o.amount &&
          business_id == o.business_id &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          employee_customer_id == o.employee_customer_id &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          pickup_time == o.pickup_time &&
          posted_amount == o.posted_amount &&
          posted_date == o.posted_date &&
          reference_id == o.reference_id &&
          scheduled_pickup_date == o.scheduled_pickup_date &&
          transaction_id == o.transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, amount, business_id, creation_time, currency, employee_customer_id, id, last_updated_time, metadata, pickup_time, posted_amount, posted_date, reference_id, scheduled_pickup_date, transaction_id].hash
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
