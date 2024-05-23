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
  class AccountSummary
    # Account number
    attr_accessor :account_number

    # Account Status
    attr_accessor :account_status

    # The type of the account. In lead mode, this always takes the value of the template. If not specified in shadow mode, CHECKING will be assumed. 
    attr_accessor :account_type

    attr_accessor :balance_ceiling

    attr_accessor :balance_floor

    # Account creation time
    attr_accessor :creation_time

    # Account currency or account settlement currency. ISO 4217 alphabetic currency code. Default USD
    attr_accessor :currency

    # Customer type
    attr_accessor :customer_type

    attr_accessor :financial_institution

    # The unique identifier of the account the statement belongs to
    attr_accessor :id

    # Account last modification time
    attr_accessor :last_updated_time

    # User provided account nickname
    attr_accessor :nickname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_number' => :'account_number',
        :'account_status' => :'account_status',
        :'account_type' => :'account_type',
        :'balance_ceiling' => :'balance_ceiling',
        :'balance_floor' => :'balance_floor',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'customer_type' => :'customer_type',
        :'financial_institution' => :'financial_institution',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'nickname' => :'nickname'
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
        :'account_status' => :'String',
        :'account_type' => :'String',
        :'balance_ceiling' => :'AccountSummaryBalanceCeiling',
        :'balance_floor' => :'AccountSummaryBalanceFloor',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'customer_type' => :'String',
        :'financial_institution' => :'FinancialInstitution',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'nickname' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::AccountSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::AccountSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'account_status')
        self.account_status = attributes[:'account_status']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'balance_ceiling')
        self.balance_ceiling = attributes[:'balance_ceiling']
      end

      if attributes.key?(:'balance_floor')
        self.balance_floor = attributes[:'balance_floor']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'customer_type')
        self.customer_type = attributes[:'customer_type']
      end

      if attributes.key?(:'financial_institution')
        self.financial_institution = attributes[:'financial_institution']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@currency.nil? && @currency !~ Regexp.new(/^[A-Z]{3}$/)
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
          account_number == o.account_number &&
          account_status == o.account_status &&
          account_type == o.account_type &&
          balance_ceiling == o.balance_ceiling &&
          balance_floor == o.balance_floor &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          customer_type == o.customer_type &&
          financial_institution == o.financial_institution &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          nickname == o.nickname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, account_status, account_type, balance_ceiling, balance_floor, creation_time, currency, customer_type, financial_institution, id, last_updated_time, nickname].hash
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
