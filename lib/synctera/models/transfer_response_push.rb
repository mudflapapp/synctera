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
  class TransferResponsePush
    # The ID of the account to which the card will be linked
    attr_accessor :account_id

    # Amount of the transfer in cents
    attr_accessor :amount

    # ISO-3166-1 Alpha-2 country code
    attr_accessor :country_code

    attr_accessor :created_time

    # ISO 4217  Alpha-3 currency code
    attr_accessor :currency

    # The ID of the customer to whom the card belongs
    attr_accessor :customer_id

    # The ID of the external card from/to which the transfer was initiated/received
    attr_accessor :external_card_id

    # The ID of the transfer
    attr_accessor :id

    attr_accessor :last_modified_time

    attr_accessor :merchant

    # If available, a human readable string indicating why a transfer was declined downstream of our system
    attr_accessor :network_decline_details

    # The reason for the status, e.g. INSUFFICIENT_FUNDS, SUSPECTED_FRAUD, NETWORK_DECLINED
    attr_accessor :reason

    # The status of the transfer
    attr_accessor :status

    # The transaction ID
    attr_accessor :transaction_id

    attr_accessor :type

    # For person-to-person PUSH transactions, this is the `customer_id` of the sender who must have privileges to access funds in the originating account in order to send funds to the recipient cardholder
    attr_accessor :originating_customer_id

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
        :'account_id' => :'account_id',
        :'amount' => :'amount',
        :'country_code' => :'country_code',
        :'created_time' => :'created_time',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'external_card_id' => :'external_card_id',
        :'id' => :'id',
        :'last_modified_time' => :'last_modified_time',
        :'merchant' => :'merchant',
        :'network_decline_details' => :'network_decline_details',
        :'reason' => :'reason',
        :'status' => :'status',
        :'transaction_id' => :'transaction_id',
        :'type' => :'type',
        :'originating_customer_id' => :'originating_customer_id'
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
        :'country_code' => :'String',
        :'created_time' => :'Time',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'external_card_id' => :'String',
        :'id' => :'String',
        :'last_modified_time' => :'Time',
        :'merchant' => :'Merchant',
        :'network_decline_details' => :'String',
        :'reason' => :'String',
        :'status' => :'String',
        :'transaction_id' => :'String',
        :'type' => :'TransferType',
        :'originating_customer_id' => :'String'
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
      :'TransferResponseBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::TransferResponsePush` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::TransferResponsePush`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'created_time')
        self.created_time = attributes[:'created_time']
      else
        self.created_time = nil
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

      if attributes.key?(:'external_card_id')
        self.external_card_id = attributes[:'external_card_id']
      else
        self.external_card_id = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      else
        self.last_modified_time = nil
      end

      if attributes.key?(:'merchant')
        self.merchant = attributes[:'merchant']
      else
        self.merchant = nil
      end

      if attributes.key?(:'network_decline_details')
        self.network_decline_details = attributes[:'network_decline_details']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'originating_customer_id')
        self.originating_customer_id = attributes[:'originating_customer_id']
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

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      if @created_time.nil?
        invalid_properties.push('invalid value for "created_time", created_time cannot be nil.')
      end

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

      if @external_card_id.nil?
        invalid_properties.push('invalid value for "external_card_id", external_card_id cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_modified_time.nil?
        invalid_properties.push('invalid value for "last_modified_time", last_modified_time cannot be nil.')
      end

      if @merchant.nil?
        invalid_properties.push('invalid value for "merchant", merchant cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
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
      return false if @account_id.nil?
      return false if @amount.nil?
      return false if @country_code.nil?
      return false if @created_time.nil?
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if @customer_id.nil?
      return false if @external_card_id.nil?
      return false if @id.nil?
      return false if @last_modified_time.nil?
      return false if @merchant.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["CANCELED", "DECLINED", "PENDING", "SUCCEEDED", "UNKNOWN"])
      return false unless status_validator.valid?(@status)
      return false if @type.nil?
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["CANCELED", "DECLINED", "PENDING", "SUCCEEDED", "UNKNOWN"])
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
          account_id == o.account_id &&
          amount == o.amount &&
          country_code == o.country_code &&
          created_time == o.created_time &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          external_card_id == o.external_card_id &&
          id == o.id &&
          last_modified_time == o.last_modified_time &&
          merchant == o.merchant &&
          network_decline_details == o.network_decline_details &&
          reason == o.reason &&
          status == o.status &&
          transaction_id == o.transaction_id &&
          type == o.type &&
          originating_customer_id == o.originating_customer_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, amount, country_code, created_time, currency, customer_id, external_card_id, id, last_modified_time, merchant, network_decline_details, reason, status, transaction_id, type, originating_customer_id].hash
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
