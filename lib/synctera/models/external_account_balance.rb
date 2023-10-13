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
  class ExternalAccountBalance
    # The amount of funds available to be withdrawn from the account, as determined by the financial institution.  This is an integer in the minor currency unit (e.g. cents): 1025 means $10.25. 
    attr_accessor :available

    attr_accessor :creation_time

    # ISO 4217 alphabetic currency code
    attr_accessor :currency

    # For a `DEPOSITORY` account, this is the total amount of funds in the account.  For a `CREDIT` account, this is the amount owing. If negative, the lender owes the account holder.  This is an integer in the minor currency unit (e.g. cents): -2500 means $25.00 owed to the account holder. 
    attr_accessor :current

    # The last time Synctera has fetched this balance from a vendor
    attr_accessor :last_updated_time

    # Vendor timestamp of when the balance was last updated on the vendor side
    attr_accessor :last_updated_time_vendor

    # For `DEPOSITORY` accounts, this is the pre-arranged overdraft limit, commonly used in Europe. In North America this is typically not set for depository accounts.  For `CREDIT` accounts, this is the credit limit on the account.  This is an integer in the minor currency unit (e.g. cents): 10000 means $100.00 
    attr_accessor :limit

    # The last time Synctera has fetched transactions from a vendor
    attr_accessor :transactions_last_updated_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'available' => :'available',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'current' => :'current',
        :'last_updated_time' => :'last_updated_time',
        :'last_updated_time_vendor' => :'last_updated_time_vendor',
        :'limit' => :'limit',
        :'transactions_last_updated_time' => :'transactions_last_updated_time'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'available' => :'Integer',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'current' => :'Integer',
        :'last_updated_time' => :'Time',
        :'last_updated_time_vendor' => :'Time',
        :'limit' => :'Integer',
        :'transactions_last_updated_time' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'available',
        :'current',
        :'limit',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::ExternalAccountBalance` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::ExternalAccountBalance`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'available')
        self.available = attributes[:'available']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'current')
        self.current = attributes[:'current']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'last_updated_time_vendor')
        self.last_updated_time_vendor = attributes[:'last_updated_time_vendor']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'transactions_last_updated_time')
        self.transactions_last_updated_time = attributes[:'transactions_last_updated_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@available.nil? && @available < 0
        invalid_properties.push('invalid value for "available", must be greater than or equal to 0.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if !@current.nil? && @current < 0
        invalid_properties.push('invalid value for "current", must be greater than or equal to 0.')
      end

      if !@limit.nil? && @limit < 0
        invalid_properties.push('invalid value for "limit", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@available.nil? && @available < 0
      return false if @currency.nil?
      return false if !@current.nil? && @current < 0
      return false if !@limit.nil? && @limit < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] available Value to be assigned
    def available=(available)
      if !available.nil? && available < 0
        fail ArgumentError, 'invalid value for "available", must be greater than or equal to 0.'
      end

      @available = available
    end

    # Custom attribute writer method with validation
    # @param [Object] current Value to be assigned
    def current=(current)
      if !current.nil? && current < 0
        fail ArgumentError, 'invalid value for "current", must be greater than or equal to 0.'
      end

      @current = current
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      if !limit.nil? && limit < 0
        fail ArgumentError, 'invalid value for "limit", must be greater than or equal to 0.'
      end

      @limit = limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          available == o.available &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          current == o.current &&
          last_updated_time == o.last_updated_time &&
          last_updated_time_vendor == o.last_updated_time_vendor &&
          limit == o.limit &&
          transactions_last_updated_time == o.transactions_last_updated_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [available, creation_time, currency, current, last_updated_time, last_updated_time_vendor, limit, transactions_last_updated_time].hash
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
