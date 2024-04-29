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
  # Account representing a line of credit account.
  class AccountLineOfCredit
    # A flag to indicate whether ACH transactions are enabled.
    attr_accessor :is_ach_enabled

    # A flag to indicate whether EFT Canada transactions are enabled.
    attr_accessor :is_eft_ca_enabled

    # A flag to indicate whether P2P transactions are enabled.
    attr_accessor :is_p2p_enabled

    # A flag to indicate whether Synctera Pay transactions are enabled.
    attr_accessor :is_synctera_pay_enabled

    # A flag to indicate whether wire transactions are enabled.
    attr_accessor :is_wire_enabled

    attr_accessor :access_status

    # Account number
    attr_accessor :account_number

    # The response will contain the bank fintech ID (3 or 6 digits) plus the last 4 digits, with the digits in between replaced with * characters. Shadow mode account numbers will not be masked.
    attr_accessor :account_number_masked

    # Purpose of the account
    attr_accessor :account_purpose

    attr_accessor :account_type

    # The application ID for this account. 
    attr_accessor :application_id

    # A list of balances for account based on different type
    attr_accessor :balances

    # Bank routing number
    attr_accessor :bank_routing

    # Account creation timestamp in RFC3339 format
    attr_accessor :creation_time

    # Account currency or account settlement currency. ISO 4217 alphabetic currency code. Default USD
    attr_accessor :currency

    # A list of the customer IDs of the account holders.
    attr_accessor :customer_ids

    attr_accessor :customer_type

    # Exchange rate type
    attr_accessor :exchange_rate_type

    # International bank account number
    attr_accessor :iban

    # Account ID
    attr_accessor :id

    # Account is investment (variable balance) account or a multi-balance account pool. Default false
    attr_accessor :is_account_pool

    # A flag to indicate whether SAR generation is enabled.
    attr_accessor :is_sar_enabled

    # Timestamp of the last account modification in RFC3339 format
    attr_accessor :last_updated_time

    # User provided account metadata
    attr_accessor :metadata

    # User provided account nickname
    attr_accessor :nickname

    attr_accessor :status

    # SWIFT code
    attr_accessor :swift_code

    # The credit limit for this line of credit account in cents. Minimum is 0. 
    attr_accessor :credit_limit

    # The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days. 
    attr_accessor :grace_period

    # An interest account product that the current account associates with. The account product must have its calculation_method set to COMPOUNDED_DAILY. 
    attr_accessor :interest_product_id

    attr_accessor :minimum_payment

    # Add an optional note when creating or updating an account. A note is required when updating the status to or from SUSPENDED
    attr_accessor :note

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
        :'is_ach_enabled' => :'is_ach_enabled',
        :'is_eft_ca_enabled' => :'is_eft_ca_enabled',
        :'is_p2p_enabled' => :'is_p2p_enabled',
        :'is_synctera_pay_enabled' => :'is_synctera_pay_enabled',
        :'is_wire_enabled' => :'is_wire_enabled',
        :'access_status' => :'access_status',
        :'account_number' => :'account_number',
        :'account_number_masked' => :'account_number_masked',
        :'account_purpose' => :'account_purpose',
        :'account_type' => :'account_type',
        :'application_id' => :'application_id',
        :'balances' => :'balances',
        :'bank_routing' => :'bank_routing',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'customer_ids' => :'customer_ids',
        :'customer_type' => :'customer_type',
        :'exchange_rate_type' => :'exchange_rate_type',
        :'iban' => :'iban',
        :'id' => :'id',
        :'is_account_pool' => :'is_account_pool',
        :'is_sar_enabled' => :'is_sar_enabled',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'nickname' => :'nickname',
        :'status' => :'status',
        :'swift_code' => :'swift_code',
        :'credit_limit' => :'credit_limit',
        :'grace_period' => :'grace_period',
        :'interest_product_id' => :'interest_product_id',
        :'minimum_payment' => :'minimum_payment',
        :'note' => :'note'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_ach_enabled' => :'Boolean',
        :'is_eft_ca_enabled' => :'Boolean',
        :'is_p2p_enabled' => :'Boolean',
        :'is_synctera_pay_enabled' => :'Boolean',
        :'is_wire_enabled' => :'Boolean',
        :'access_status' => :'AccountAccessStatus',
        :'account_number' => :'String',
        :'account_number_masked' => :'String',
        :'account_purpose' => :'String',
        :'account_type' => :'AccountType',
        :'application_id' => :'String',
        :'balances' => :'Array<Balance>',
        :'bank_routing' => :'String',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'customer_ids' => :'Array<String>',
        :'customer_type' => :'CustomerType',
        :'exchange_rate_type' => :'String',
        :'iban' => :'String',
        :'id' => :'String',
        :'is_account_pool' => :'Boolean',
        :'is_sar_enabled' => :'Boolean',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Object',
        :'nickname' => :'String',
        :'status' => :'AccountStatus',
        :'swift_code' => :'String',
        :'credit_limit' => :'Integer',
        :'grace_period' => :'Integer',
        :'interest_product_id' => :'String',
        :'minimum_payment' => :'MinimumPaymentPartial',
        :'note' => :'String'
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
      :'AccountBase',
      :'RailsLoc'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::AccountLineOfCredit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::AccountLineOfCredit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_ach_enabled')
        self.is_ach_enabled = attributes[:'is_ach_enabled']
      end

      if attributes.key?(:'is_eft_ca_enabled')
        self.is_eft_ca_enabled = attributes[:'is_eft_ca_enabled']
      end

      if attributes.key?(:'is_p2p_enabled')
        self.is_p2p_enabled = attributes[:'is_p2p_enabled']
      end

      if attributes.key?(:'is_synctera_pay_enabled')
        self.is_synctera_pay_enabled = attributes[:'is_synctera_pay_enabled']
      end

      if attributes.key?(:'is_wire_enabled')
        self.is_wire_enabled = attributes[:'is_wire_enabled']
      end

      if attributes.key?(:'access_status')
        self.access_status = attributes[:'access_status']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'account_number_masked')
        self.account_number_masked = attributes[:'account_number_masked']
      end

      if attributes.key?(:'account_purpose')
        self.account_purpose = attributes[:'account_purpose']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'balances')
        if (value = attributes[:'balances']).is_a?(Array)
          self.balances = value
        end
      end

      if attributes.key?(:'bank_routing')
        self.bank_routing = attributes[:'bank_routing']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'customer_ids')
        if (value = attributes[:'customer_ids']).is_a?(Array)
          self.customer_ids = value
        end
      end

      if attributes.key?(:'customer_type')
        self.customer_type = attributes[:'customer_type']
      end

      if attributes.key?(:'exchange_rate_type')
        self.exchange_rate_type = attributes[:'exchange_rate_type']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_account_pool')
        self.is_account_pool = attributes[:'is_account_pool']
      end

      if attributes.key?(:'is_sar_enabled')
        self.is_sar_enabled = attributes[:'is_sar_enabled']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'swift_code')
        self.swift_code = attributes[:'swift_code']
      end

      if attributes.key?(:'credit_limit')
        self.credit_limit = attributes[:'credit_limit']
      end

      if attributes.key?(:'grace_period')
        self.grace_period = attributes[:'grace_period']
      end

      if attributes.key?(:'interest_product_id')
        self.interest_product_id = attributes[:'interest_product_id']
      end

      if attributes.key?(:'minimum_payment')
        self.minimum_payment = attributes[:'minimum_payment']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@account_number.nil? && @account_number.to_s.length > 50
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 50.')
      end

      if !@account_number_masked.nil? && @account_number_masked.to_s.length > 50
        invalid_properties.push('invalid value for "account_number_masked", the character length must be smaller than or equal to 50.')
      end

      if !@bank_routing.nil? && @bank_routing.to_s.length > 9
        invalid_properties.push('invalid value for "bank_routing", the character length must be smaller than or equal to 9.')
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if !@currency.nil? && @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if !@exchange_rate_type.nil? && @exchange_rate_type.to_s.length > 10
        invalid_properties.push('invalid value for "exchange_rate_type", the character length must be smaller than or equal to 10.')
      end

      if !@iban.nil? && @iban.to_s.length > 34
        invalid_properties.push('invalid value for "iban", the character length must be smaller than or equal to 34.')
      end

      if !@swift_code.nil? && @swift_code.to_s.length > 11
        invalid_properties.push('invalid value for "swift_code", the character length must be smaller than or equal to 11.')
      end

      if !@swift_code.nil? && @swift_code.to_s.length < 8
        invalid_properties.push('invalid value for "swift_code", the character length must be great than or equal to 8.')
      end

      if !@credit_limit.nil? && @credit_limit < 0
        invalid_properties.push('invalid value for "credit_limit", must be greater than or equal to 0.')
      end

      if !@grace_period.nil? && @grace_period > 28
        invalid_properties.push('invalid value for "grace_period", must be smaller than or equal to 28.')
      end

      if !@grace_period.nil? && @grace_period < 21
        invalid_properties.push('invalid value for "grace_period", must be greater than or equal to 21.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@account_number.nil? && @account_number.to_s.length > 50
      return false if !@account_number_masked.nil? && @account_number_masked.to_s.length > 50
      return false if !@bank_routing.nil? && @bank_routing.to_s.length > 9
      return false if !@currency.nil? && @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if !@exchange_rate_type.nil? && @exchange_rate_type.to_s.length > 10
      return false if !@iban.nil? && @iban.to_s.length > 34
      return false if !@swift_code.nil? && @swift_code.to_s.length > 11
      return false if !@swift_code.nil? && @swift_code.to_s.length < 8
      return false if !@credit_limit.nil? && @credit_limit < 0
      return false if !@grace_period.nil? && @grace_period > 28
      return false if !@grace_period.nil? && @grace_period < 21
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 50.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number_masked Value to be assigned
    def account_number_masked=(account_number_masked)
      if account_number_masked.nil?
        fail ArgumentError, 'account_number_masked cannot be nil'
      end

      if account_number_masked.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_number_masked", the character length must be smaller than or equal to 50.'
      end

      @account_number_masked = account_number_masked
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_routing Value to be assigned
    def bank_routing=(bank_routing)
      if bank_routing.nil?
        fail ArgumentError, 'bank_routing cannot be nil'
      end

      if bank_routing.to_s.length > 9
        fail ArgumentError, 'invalid value for "bank_routing", the character length must be smaller than or equal to 9.'
      end

      @bank_routing = bank_routing
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

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate_type Value to be assigned
    def exchange_rate_type=(exchange_rate_type)
      if exchange_rate_type.nil?
        fail ArgumentError, 'exchange_rate_type cannot be nil'
      end

      if exchange_rate_type.to_s.length > 10
        fail ArgumentError, 'invalid value for "exchange_rate_type", the character length must be smaller than or equal to 10.'
      end

      @exchange_rate_type = exchange_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] iban Value to be assigned
    def iban=(iban)
      if iban.nil?
        fail ArgumentError, 'iban cannot be nil'
      end

      if iban.to_s.length > 34
        fail ArgumentError, 'invalid value for "iban", the character length must be smaller than or equal to 34.'
      end

      @iban = iban
    end

    # Custom attribute writer method with validation
    # @param [Object] swift_code Value to be assigned
    def swift_code=(swift_code)
      if swift_code.nil?
        fail ArgumentError, 'swift_code cannot be nil'
      end

      if swift_code.to_s.length > 11
        fail ArgumentError, 'invalid value for "swift_code", the character length must be smaller than or equal to 11.'
      end

      if swift_code.to_s.length < 8
        fail ArgumentError, 'invalid value for "swift_code", the character length must be great than or equal to 8.'
      end

      @swift_code = swift_code
    end

    # Custom attribute writer method with validation
    # @param [Object] credit_limit Value to be assigned
    def credit_limit=(credit_limit)
      if credit_limit.nil?
        fail ArgumentError, 'credit_limit cannot be nil'
      end

      if credit_limit < 0
        fail ArgumentError, 'invalid value for "credit_limit", must be greater than or equal to 0.'
      end

      @credit_limit = credit_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] grace_period Value to be assigned
    def grace_period=(grace_period)
      if grace_period.nil?
        fail ArgumentError, 'grace_period cannot be nil'
      end

      if grace_period > 28
        fail ArgumentError, 'invalid value for "grace_period", must be smaller than or equal to 28.'
      end

      if grace_period < 21
        fail ArgumentError, 'invalid value for "grace_period", must be greater than or equal to 21.'
      end

      @grace_period = grace_period
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_ach_enabled == o.is_ach_enabled &&
          is_eft_ca_enabled == o.is_eft_ca_enabled &&
          is_p2p_enabled == o.is_p2p_enabled &&
          is_synctera_pay_enabled == o.is_synctera_pay_enabled &&
          is_wire_enabled == o.is_wire_enabled &&
          access_status == o.access_status &&
          account_number == o.account_number &&
          account_number_masked == o.account_number_masked &&
          account_purpose == o.account_purpose &&
          account_type == o.account_type &&
          application_id == o.application_id &&
          balances == o.balances &&
          bank_routing == o.bank_routing &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          customer_ids == o.customer_ids &&
          customer_type == o.customer_type &&
          exchange_rate_type == o.exchange_rate_type &&
          iban == o.iban &&
          id == o.id &&
          is_account_pool == o.is_account_pool &&
          is_sar_enabled == o.is_sar_enabled &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          nickname == o.nickname &&
          status == o.status &&
          swift_code == o.swift_code &&
          credit_limit == o.credit_limit &&
          grace_period == o.grace_period &&
          interest_product_id == o.interest_product_id &&
          minimum_payment == o.minimum_payment &&
          note == o.note
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_ach_enabled, is_eft_ca_enabled, is_p2p_enabled, is_synctera_pay_enabled, is_wire_enabled, access_status, account_number, account_number_masked, account_purpose, account_type, application_id, balances, bank_routing, creation_time, currency, customer_ids, customer_type, exchange_rate_type, iban, id, is_account_pool, is_sar_enabled, last_updated_time, metadata, nickname, status, swift_code, credit_limit, grace_period, interest_product_id, minimum_payment, note].hash
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
