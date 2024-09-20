=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.136.0

Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module Synctera
  class InternalTransfer
    # The amount (in cents) to transfer from originating account to receiving account.
    attr_accessor :amount

    # Controls when the transfer will take effect. A value of `IMMEDIATE` (the default) means that the transfer will be completed immediately. A value of `MANUAL` means that the transaction will remain in a \"pending\" state until explicitly completed or cancelled (or the auth expires).
    attr_accessor :capture_mode

    # ISO 4217 alphabetic currency code of the transfer amount
    attr_accessor :currency

    # When `capture_mode` is `MANUAL`, this field describes when the pending transaction should expire.
    attr_accessor :expires_at

    # The customer id of the international customer that receives the final remittance transfer (required for remittance payments).
    attr_accessor :final_customer_id

    # A short note to the recipient
    attr_accessor :memo

    # Arbitrary key-value metadata to associate with the transaction
    attr_accessor :metadata

    # An alias representing a GL account to debit. This is alternative to specifying by account id
    attr_accessor :originating_account_alias

    # The customer id of the owner of the originating account.
    attr_accessor :originating_account_customer_id

    # The UUID of the account being debited
    attr_accessor :originating_account_id

    # An alias representing a GL account to credit. This is an alternative to specifying by account id
    attr_accessor :receiving_account_alias

    # The customer id of the owner of the receiving account.
    attr_accessor :receiving_account_customer_id

    # The UUID of the account being credited
    attr_accessor :receiving_account_id

    # Network reference id
    attr_accessor :reference_id

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # The desired transaction type to use for this transfer
    attr_accessor :type

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
        :'capture_mode' => :'capture_mode',
        :'currency' => :'currency',
        :'expires_at' => :'expires_at',
        :'final_customer_id' => :'final_customer_id',
        :'memo' => :'memo',
        :'metadata' => :'metadata',
        :'originating_account_alias' => :'originating_account_alias',
        :'originating_account_customer_id' => :'originating_account_customer_id',
        :'originating_account_id' => :'originating_account_id',
        :'receiving_account_alias' => :'receiving_account_alias',
        :'receiving_account_customer_id' => :'receiving_account_customer_id',
        :'receiving_account_id' => :'receiving_account_id',
        :'reference_id' => :'reference_id',
        :'tenant' => :'tenant',
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
        :'amount' => :'Integer',
        :'capture_mode' => :'String',
        :'currency' => :'String',
        :'expires_at' => :'Time',
        :'final_customer_id' => :'String',
        :'memo' => :'String',
        :'metadata' => :'Object',
        :'originating_account_alias' => :'String',
        :'originating_account_customer_id' => :'String',
        :'originating_account_id' => :'String',
        :'receiving_account_alias' => :'String',
        :'receiving_account_customer_id' => :'String',
        :'receiving_account_id' => :'String',
        :'reference_id' => :'String',
        :'tenant' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::InternalTransfer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::InternalTransfer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'capture_mode')
        self.capture_mode = attributes[:'capture_mode']
      else
        self.capture_mode = 'IMMEDIATE'
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'final_customer_id')
        self.final_customer_id = attributes[:'final_customer_id']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'originating_account_alias')
        self.originating_account_alias = attributes[:'originating_account_alias']
      end

      if attributes.key?(:'originating_account_customer_id')
        self.originating_account_customer_id = attributes[:'originating_account_customer_id']
      end

      if attributes.key?(:'originating_account_id')
        self.originating_account_id = attributes[:'originating_account_id']
      end

      if attributes.key?(:'receiving_account_alias')
        self.receiving_account_alias = attributes[:'receiving_account_alias']
      end

      if attributes.key?(:'receiving_account_customer_id')
        self.receiving_account_customer_id = attributes[:'receiving_account_customer_id']
      end

      if attributes.key?(:'receiving_account_id')
        self.receiving_account_id = attributes[:'receiving_account_id']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
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
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount < 1
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 1.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
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
      return false if @amount.nil?
      return false if @amount < 1
      capture_mode_validator = EnumAttributeValidator.new('String', ["IMMEDIATE", "MANUAL"])
      return false unless capture_mode_validator.valid?(@capture_mode)
      return false if @currency.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["ACCOUNT_BALANCE_ADJUSTMENT", "ACCOUNT_TO_ACCOUNT", "ACCOUNT_TO_ACCOUNT_SWEEP", "ACH_CREDIT_SWEEP", "ACH_DEBIT_SWEEP", "ACH_FLOAT_TRANSFER", "ACH_INCOMING_CREDIT_SWEEP", "ACH_INCOMING_DEBIT_SWEEP", "ACH_INCOMING_RETURN_CREDIT_SWEEP", "ACH_INCOMING_RETURN_DEBIT_SWEEP", "ACH_OUTGOING_CREDIT_SWEEP", "ACH_OUTGOING_DEBIT_SWEEP", "ACH_OUTGOING_RETURN_CREDIT_SWEEP", "ACH_OUTGOING_RETURN_DEBIT_SWEEP", "ACH_SWEEP", "BULK_DOMESTIC_WIRE_OUTGOING_SWEEP", "BULK_EFT_CA_OUTGOING_CREDIT_SWEEP", "BULK_EFT_CA_OUTGOING_DEBIT_SWEEP", "CARD_CHARGEBACK", "CARD_CHARGEBACK_CASE1", "CARD_CHARGEBACK_CASE1_REVERSAL", "CARD_CHARGEBACK_CASE2", "CARD_CHARGEBACK_CASE2_REVERSAL", "CARD_CHARGEBACK_CASE3", "CARD_CHARGEBACK_CASE3_REVERSAL", "CARD_CHARGEBACK_WRITEOFF", "CARD_PROVISIONAL_CREDIT", "CARD_PROVISIONAL_CREDIT_REVERSAL", "CASHBACK", "CASHBACK_SWEEP", "CREDIT_MEMO", "DOMESTIC_WIRE_INCOMING_RETURN_SWEEP", "DOMESTIC_WIRE_INCOMING_SWEEP", "DOMESTIC_WIRE_OUTGOING_RETURN_SWEEP", "DOMESTIC_WIRE_OUTGOING_SWEEP", "EFT_CA_INCOMING_CREDIT_RETURN_SWEEP", "EFT_CA_INCOMING_CREDIT_SWEEP", "EFT_CA_INCOMING_DEBIT_RETURN_SWEEP", "EFT_CA_INCOMING_DEBIT_SWEEP", "EFT_CA_OUTGOING_CREDIT_RETURN_SWEEP", "EFT_CA_OUTGOING_CREDIT_SWEEP", "EFT_CA_OUTGOING_DEBIT_RETURN_SWEEP", "EFT_CA_OUTGOING_DEBIT_SWEEP", "ETRANSFER_SWEEP", "FEE", "FEE_SWEEP", "FORCE_PAYMENT", "INCOMING_WIRE", "INCOMING_WIRE_SWEEP", "INTEREST_CHARGED_SWEEP", "INTEREST_PAYOUT", "INTEREST_PAYOUT_SWEEP", "INTERNATIONAL_WIRE_INCOMING_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_RETURN_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_SWEEP", "INVOICE", "LOAN_DISBURSEMENT", "LOAN_FUNDING", "MANUAL_ADJUSTMENT", "MANUAL_ADJUSTMENT_REVERSAL", "MANUAL_ADJUSTMENT_SWEEP", "MANUAL_AFT_SWEEP", "MANUAL_CARD_SWEEP", "MANUAL_CASH_DEPOSIT_SWEEP", "MANUAL_CASH_ORDER_SWEEP", "MANUAL_CHECK_SWEEP", "MANUAL_OCT_SWEEP", "MANUAL_WIRE_SWEEP", "MASTERCARD_GROSS_SWEEP", "MASTERCARD_INTERCHANGE_SWEEP", "MASTERCARD_NET_SWEEP", "MOBILE_DEPOSIT_RETURN_SWEEP", "MOBILE_DEPOSIT_SWEEP", "NEGATIVE_BALANCE_RESERVE", "NEGATIVE_BALANCE_WRITEOFF", "NETWORK_ADJUSTMENT_SWEEP", "NETWORK_CHARGEBACK_SWEEP", "OUTGOING_INTERNATIONAL_REMITTANCE", "OUTGOING_INTERNATIONAL_REMITTANCE_REVERSAL", "PROMOTIONAL_CREDIT", "PROMOTIONAL_CREDIT_REVERSAL", "PROMOTIONAL_CREDIT_SWEEP", "PULSE_GROSS_SWEEP", "PULSE_INTERCHANGE_SWEEP", "SECURITY_ACCOUNT_PAYMENT", "SIGN_UP_BONUS", "SUBSCRIPTION_FEE", "TRANSFER_FEE", "TRANSFER_FEE_REVERSAL", "VISA_GROSS_SWEEP", "VISA_INTERCHANGE_SWEEP", "VISA_NET_SWEEP", "WIRE_SETTLEMENT_CREDIT", "WIRE_SETTLEMENT_DEBIT"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount < 1
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 1.'
      end

      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_mode Object to be assigned
    def capture_mode=(capture_mode)
      validator = EnumAttributeValidator.new('String', ["IMMEDIATE", "MANUAL"])
      unless validator.valid?(capture_mode)
        fail ArgumentError, "invalid value for \"capture_mode\", must be one of #{validator.allowable_values}."
      end
      @capture_mode = capture_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ACCOUNT_BALANCE_ADJUSTMENT", "ACCOUNT_TO_ACCOUNT", "ACCOUNT_TO_ACCOUNT_SWEEP", "ACH_CREDIT_SWEEP", "ACH_DEBIT_SWEEP", "ACH_FLOAT_TRANSFER", "ACH_INCOMING_CREDIT_SWEEP", "ACH_INCOMING_DEBIT_SWEEP", "ACH_INCOMING_RETURN_CREDIT_SWEEP", "ACH_INCOMING_RETURN_DEBIT_SWEEP", "ACH_OUTGOING_CREDIT_SWEEP", "ACH_OUTGOING_DEBIT_SWEEP", "ACH_OUTGOING_RETURN_CREDIT_SWEEP", "ACH_OUTGOING_RETURN_DEBIT_SWEEP", "ACH_SWEEP", "BULK_DOMESTIC_WIRE_OUTGOING_SWEEP", "BULK_EFT_CA_OUTGOING_CREDIT_SWEEP", "BULK_EFT_CA_OUTGOING_DEBIT_SWEEP", "CARD_CHARGEBACK", "CARD_CHARGEBACK_CASE1", "CARD_CHARGEBACK_CASE1_REVERSAL", "CARD_CHARGEBACK_CASE2", "CARD_CHARGEBACK_CASE2_REVERSAL", "CARD_CHARGEBACK_CASE3", "CARD_CHARGEBACK_CASE3_REVERSAL", "CARD_CHARGEBACK_WRITEOFF", "CARD_PROVISIONAL_CREDIT", "CARD_PROVISIONAL_CREDIT_REVERSAL", "CASHBACK", "CASHBACK_SWEEP", "CREDIT_MEMO", "DOMESTIC_WIRE_INCOMING_RETURN_SWEEP", "DOMESTIC_WIRE_INCOMING_SWEEP", "DOMESTIC_WIRE_OUTGOING_RETURN_SWEEP", "DOMESTIC_WIRE_OUTGOING_SWEEP", "EFT_CA_INCOMING_CREDIT_RETURN_SWEEP", "EFT_CA_INCOMING_CREDIT_SWEEP", "EFT_CA_INCOMING_DEBIT_RETURN_SWEEP", "EFT_CA_INCOMING_DEBIT_SWEEP", "EFT_CA_OUTGOING_CREDIT_RETURN_SWEEP", "EFT_CA_OUTGOING_CREDIT_SWEEP", "EFT_CA_OUTGOING_DEBIT_RETURN_SWEEP", "EFT_CA_OUTGOING_DEBIT_SWEEP", "ETRANSFER_SWEEP", "FEE", "FEE_SWEEP", "FORCE_PAYMENT", "INCOMING_WIRE", "INCOMING_WIRE_SWEEP", "INTEREST_CHARGED_SWEEP", "INTEREST_PAYOUT", "INTEREST_PAYOUT_SWEEP", "INTERNATIONAL_WIRE_INCOMING_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_RETURN_SWEEP", "INTERNATIONAL_WIRE_OUTGOING_SWEEP", "INVOICE", "LOAN_DISBURSEMENT", "LOAN_FUNDING", "MANUAL_ADJUSTMENT", "MANUAL_ADJUSTMENT_REVERSAL", "MANUAL_ADJUSTMENT_SWEEP", "MANUAL_AFT_SWEEP", "MANUAL_CARD_SWEEP", "MANUAL_CASH_DEPOSIT_SWEEP", "MANUAL_CASH_ORDER_SWEEP", "MANUAL_CHECK_SWEEP", "MANUAL_OCT_SWEEP", "MANUAL_WIRE_SWEEP", "MASTERCARD_GROSS_SWEEP", "MASTERCARD_INTERCHANGE_SWEEP", "MASTERCARD_NET_SWEEP", "MOBILE_DEPOSIT_RETURN_SWEEP", "MOBILE_DEPOSIT_SWEEP", "NEGATIVE_BALANCE_RESERVE", "NEGATIVE_BALANCE_WRITEOFF", "NETWORK_ADJUSTMENT_SWEEP", "NETWORK_CHARGEBACK_SWEEP", "OUTGOING_INTERNATIONAL_REMITTANCE", "OUTGOING_INTERNATIONAL_REMITTANCE_REVERSAL", "PROMOTIONAL_CREDIT", "PROMOTIONAL_CREDIT_REVERSAL", "PROMOTIONAL_CREDIT_SWEEP", "PULSE_GROSS_SWEEP", "PULSE_INTERCHANGE_SWEEP", "SECURITY_ACCOUNT_PAYMENT", "SIGN_UP_BONUS", "SUBSCRIPTION_FEE", "TRANSFER_FEE", "TRANSFER_FEE_REVERSAL", "VISA_GROSS_SWEEP", "VISA_INTERCHANGE_SWEEP", "VISA_NET_SWEEP", "WIRE_SETTLEMENT_CREDIT", "WIRE_SETTLEMENT_DEBIT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          capture_mode == o.capture_mode &&
          currency == o.currency &&
          expires_at == o.expires_at &&
          final_customer_id == o.final_customer_id &&
          memo == o.memo &&
          metadata == o.metadata &&
          originating_account_alias == o.originating_account_alias &&
          originating_account_customer_id == o.originating_account_customer_id &&
          originating_account_id == o.originating_account_id &&
          receiving_account_alias == o.receiving_account_alias &&
          receiving_account_customer_id == o.receiving_account_customer_id &&
          receiving_account_id == o.receiving_account_id &&
          reference_id == o.reference_id &&
          tenant == o.tenant &&
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
      [amount, capture_mode, currency, expires_at, final_customer_id, memo, metadata, originating_account_alias, originating_account_customer_id, originating_account_id, receiving_account_alias, receiving_account_customer_id, receiving_account_id, reference_id, tenant, type].hash
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
