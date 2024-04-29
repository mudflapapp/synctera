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
  class ExternalCardResponse
    attr_accessor :creation_time

    # ISO 4217  Alpha-3 currency code
    attr_accessor :currency

    # The unique identifier of a customer
    attr_accessor :customer_id

    attr_accessor :expiration_month

    attr_accessor :expiration_year

    # External card ID
    attr_accessor :id

    # The last 4 digits of the card PAN
    attr_accessor :last_four

    attr_accessor :last_updated_time

    # The cardholder name
    attr_accessor :name

    attr_accessor :status

    # The id of the tenant containing the resource. 
    attr_accessor :tenant

    attr_accessor :verifications

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
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'expiration_month' => :'expiration_month',
        :'expiration_year' => :'expiration_year',
        :'id' => :'id',
        :'last_four' => :'last_four',
        :'last_updated_time' => :'last_updated_time',
        :'name' => :'name',
        :'status' => :'status',
        :'tenant' => :'tenant',
        :'verifications' => :'verifications'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'id' => :'String',
        :'last_four' => :'String',
        :'last_updated_time' => :'Time',
        :'name' => :'String',
        :'status' => :'ExternalCardStatus',
        :'tenant' => :'String',
        :'verifications' => :'ExternalCardVerifications'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::ExternalCardResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::ExternalCardResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      else
        self.customer_id = nil
      end

      if attributes.key?(:'expiration_month')
        self.expiration_month = attributes[:'expiration_month']
      else
        self.expiration_month = nil
      end

      if attributes.key?(:'expiration_year')
        self.expiration_year = attributes[:'expiration_year']
      else
        self.expiration_year = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'last_four')
        self.last_four = attributes[:'last_four']
      else
        self.last_four = nil
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      else
        self.tenant = nil
      end

      if attributes.key?(:'verifications')
        self.verifications = attributes[:'verifications']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if @expiration_month.nil?
        invalid_properties.push('invalid value for "expiration_month", expiration_month cannot be nil.')
      end

      if @expiration_year.nil?
        invalid_properties.push('invalid value for "expiration_year", expiration_year cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_four.nil?
        invalid_properties.push('invalid value for "last_four", last_four cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @tenant.nil?
        invalid_properties.push('invalid value for "tenant", tenant cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if @customer_id.nil?
      return false if @expiration_month.nil?
      return false if @expiration_year.nil?
      return false if @id.nil?
      return false if @last_four.nil?
      return false if @name.nil?
      return false if @status.nil?
      return false if @tenant.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      if currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      if currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency", the character length must be great than or equal to 3.'
      end

      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          id == o.id &&
          last_four == o.last_four &&
          last_updated_time == o.last_updated_time &&
          name == o.name &&
          status == o.status &&
          tenant == o.tenant &&
          verifications == o.verifications
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [creation_time, currency, customer_id, expiration_month, expiration_year, id, last_four, last_updated_time, name, status, tenant, verifications].hash
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
