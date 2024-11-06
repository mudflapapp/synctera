=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.139.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module Synctera
  # Deposit using remote deposit capture
  class Deposit
    # The ID of the account
    attr_accessor :account_id

    # ID of the uploaded image of the back of the check
    attr_accessor :back_image_id

    # Unique ID for the business. Exactly one of `business_id` or `person_id` must be set. 
    attr_accessor :business_id

    # Amount on check in ISO 4217 minor currency units
    attr_accessor :check_amount

    # ISO 4217 currency code for the deposit amount
    attr_accessor :deposit_currency

    # ID of the uploaded image of the front of the check
    attr_accessor :front_image_id

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # Unique ID for the person. Exactly one of `person_id` or `business_id` must be set. 
    attr_accessor :person_id

    attr_accessor :creation_time

    # Date the deposit was captured, in RFC 3339 format
    attr_accessor :date_captured

    # Date the deposit was processed, in RFC 3339 format
    attr_accessor :date_processed

    # Amount deposited in ISO 4217 minor currency units
    attr_accessor :deposit_amount

    # Remote Check Deposit ID
    attr_accessor :id

    attr_accessor :last_updated_time

    # Account number of the issuer of the check, included if OCR is successful
    attr_accessor :ocr_account_number

    # The unique check number for this check in the checkbook, included if OCR is successful and there is a check number on the check
    attr_accessor :ocr_check_number

    # Routing number of the issuing bank, included if OCR is successful
    attr_accessor :ocr_routing_number

    # The status of the deposit
    attr_accessor :status

    # The ID of the transaction associated with this deposit
    attr_accessor :transaction_id

    attr_accessor :vendor_info

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
        :'back_image_id' => :'back_image_id',
        :'business_id' => :'business_id',
        :'check_amount' => :'check_amount',
        :'deposit_currency' => :'deposit_currency',
        :'front_image_id' => :'front_image_id',
        :'metadata' => :'metadata',
        :'person_id' => :'person_id',
        :'creation_time' => :'creation_time',
        :'date_captured' => :'date_captured',
        :'date_processed' => :'date_processed',
        :'deposit_amount' => :'deposit_amount',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'ocr_account_number' => :'ocr_account_number',
        :'ocr_check_number' => :'ocr_check_number',
        :'ocr_routing_number' => :'ocr_routing_number',
        :'status' => :'status',
        :'transaction_id' => :'transaction_id',
        :'vendor_info' => :'vendor_info'
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
        :'back_image_id' => :'String',
        :'business_id' => :'String',
        :'check_amount' => :'Integer',
        :'deposit_currency' => :'String',
        :'front_image_id' => :'String',
        :'metadata' => :'Object',
        :'person_id' => :'String',
        :'creation_time' => :'Time',
        :'date_captured' => :'Time',
        :'date_processed' => :'Time',
        :'deposit_amount' => :'Integer',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'ocr_account_number' => :'String',
        :'ocr_check_number' => :'String',
        :'ocr_routing_number' => :'String',
        :'status' => :'String',
        :'transaction_id' => :'String',
        :'vendor_info' => :'VendorInfo'
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
      :'DepositRequest'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Deposit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Deposit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'back_image_id')
        self.back_image_id = attributes[:'back_image_id']
      end

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'check_amount')
        self.check_amount = attributes[:'check_amount']
      end

      if attributes.key?(:'deposit_currency')
        self.deposit_currency = attributes[:'deposit_currency']
      end

      if attributes.key?(:'front_image_id')
        self.front_image_id = attributes[:'front_image_id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'person_id')
        self.person_id = attributes[:'person_id']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'date_captured')
        self.date_captured = attributes[:'date_captured']
      end

      if attributes.key?(:'date_processed')
        self.date_processed = attributes[:'date_processed']
      end

      if attributes.key?(:'deposit_amount')
        self.deposit_amount = attributes[:'deposit_amount']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'ocr_account_number')
        self.ocr_account_number = attributes[:'ocr_account_number']
      end

      if attributes.key?(:'ocr_check_number')
        self.ocr_check_number = attributes[:'ocr_check_number']
      end

      if attributes.key?(:'ocr_routing_number')
        self.ocr_routing_number = attributes[:'ocr_routing_number']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'vendor_info')
        self.vendor_info = attributes[:'vendor_info']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@check_amount.nil? && @check_amount < 1
        invalid_properties.push('invalid value for "check_amount", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@check_amount.nil? && @check_amount < 1
      status_validator = EnumAttributeValidator.new('String', ["FAILED", "PENDING", "REJECTED", "RETURNED", "SUBMITTED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] check_amount Value to be assigned
    def check_amount=(check_amount)
      if check_amount.nil?
        fail ArgumentError, 'check_amount cannot be nil'
      end

      if check_amount < 1
        fail ArgumentError, 'invalid value for "check_amount", must be greater than or equal to 1.'
      end

      @check_amount = check_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["FAILED", "PENDING", "REJECTED", "RETURNED", "SUBMITTED"])
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
          back_image_id == o.back_image_id &&
          business_id == o.business_id &&
          check_amount == o.check_amount &&
          deposit_currency == o.deposit_currency &&
          front_image_id == o.front_image_id &&
          metadata == o.metadata &&
          person_id == o.person_id &&
          creation_time == o.creation_time &&
          date_captured == o.date_captured &&
          date_processed == o.date_processed &&
          deposit_amount == o.deposit_amount &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          ocr_account_number == o.ocr_account_number &&
          ocr_check_number == o.ocr_check_number &&
          ocr_routing_number == o.ocr_routing_number &&
          status == o.status &&
          transaction_id == o.transaction_id &&
          vendor_info == o.vendor_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, back_image_id, business_id, check_amount, deposit_currency, front_image_id, metadata, person_id, creation_time, date_captured, date_processed, deposit_amount, id, last_updated_time, ocr_account_number, ocr_check_number, ocr_routing_number, status, transaction_id, vendor_info].hash
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
