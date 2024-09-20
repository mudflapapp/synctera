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
  class TemplateFieldsGenericResponse
    attr_accessor :account_type

    # The number of days past the billing period to initiate an auto payment. Only applicable for accounts with type `CHARGE_SECURED`, where the account holder has opted in for auto payment functionality. This value must be lower than or equal the `grace_period` setting on the account. If this value is 0, the auto payment will happen on the same day as the statement is generated. Auto payment only occurs if regular payments are not received on time. 
    attr_accessor :auto_payment_period

    attr_accessor :balance_ceiling

    attr_accessor :balance_floor

    # The bank account ID for this account. This is a unique identifier for the bank side account that this Synctera account belongs to. This field can be auto filled if only one bank account of the appropriate type exist for the tenant of concern. 
    attr_accessor :bank_account_id

    # Bank country of the account
    attr_accessor :bank_country

    attr_accessor :billing_period

    # Account currency. ISO 4217 alphabetic currency code
    attr_accessor :currency

    # A list of fee account products that the current account associates with.
    attr_accessor :fee_product_ids

    # The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days. 
    attr_accessor :grace_period

    # An interest account product that the current account associates with.
    attr_accessor :interest_product_id

    # Enable ACH transaction on ledger.
    attr_accessor :is_ach_enabled

    # Enable card transaction on ledger.
    attr_accessor :is_card_enabled

    # A flag to indicate whether EFT Canada transactions are enabled.
    attr_accessor :is_eft_ca_enabled

    # Enable external card transaction on ledger.
    attr_accessor :is_external_card_enabled

    # Enable P2P transaction on ledger.
    attr_accessor :is_p2p_enabled

    # Enable SAR report.
    attr_accessor :is_sar_enabled

    # Enable Synctera Pay transaction on ledger.
    attr_accessor :is_synctera_pay_enabled

    # Enable wire transaction on ledger.
    attr_accessor :is_wire_enabled

    attr_accessor :minimum_payment

    # This field is unused and will be removed in a future API version. 
    attr_accessor :overdraft_limit

    # List of spend control IDs to control spending for the account
    attr_accessor :spend_control_ids

    attr_accessor :spending_limits

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
        :'account_type' => :'account_type',
        :'auto_payment_period' => :'auto_payment_period',
        :'balance_ceiling' => :'balance_ceiling',
        :'balance_floor' => :'balance_floor',
        :'bank_account_id' => :'bank_account_id',
        :'bank_country' => :'bank_country',
        :'billing_period' => :'billing_period',
        :'currency' => :'currency',
        :'fee_product_ids' => :'fee_product_ids',
        :'grace_period' => :'grace_period',
        :'interest_product_id' => :'interest_product_id',
        :'is_ach_enabled' => :'is_ach_enabled',
        :'is_card_enabled' => :'is_card_enabled',
        :'is_eft_ca_enabled' => :'is_eft_ca_enabled',
        :'is_external_card_enabled' => :'is_external_card_enabled',
        :'is_p2p_enabled' => :'is_p2p_enabled',
        :'is_sar_enabled' => :'is_sar_enabled',
        :'is_synctera_pay_enabled' => :'is_synctera_pay_enabled',
        :'is_wire_enabled' => :'is_wire_enabled',
        :'minimum_payment' => :'minimum_payment',
        :'overdraft_limit' => :'overdraft_limit',
        :'spend_control_ids' => :'spend_control_ids',
        :'spending_limits' => :'spending_limits'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_type' => :'AccountType',
        :'auto_payment_period' => :'Integer',
        :'balance_ceiling' => :'BalanceCeiling',
        :'balance_floor' => :'BalanceFloor',
        :'bank_account_id' => :'String',
        :'bank_country' => :'String',
        :'billing_period' => :'BillingPeriod',
        :'currency' => :'String',
        :'fee_product_ids' => :'Array<String>',
        :'grace_period' => :'Integer',
        :'interest_product_id' => :'String',
        :'is_ach_enabled' => :'Boolean',
        :'is_card_enabled' => :'Boolean',
        :'is_eft_ca_enabled' => :'Boolean',
        :'is_external_card_enabled' => :'Boolean',
        :'is_p2p_enabled' => :'Boolean',
        :'is_sar_enabled' => :'Boolean',
        :'is_synctera_pay_enabled' => :'Boolean',
        :'is_wire_enabled' => :'Boolean',
        :'minimum_payment' => :'MinimumPayment',
        :'overdraft_limit' => :'Integer',
        :'spend_control_ids' => :'Array<String>',
        :'spending_limits' => :'SpendingLimits'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::TemplateFieldsGenericResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::TemplateFieldsGenericResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      else
        self.account_type = nil
      end

      if attributes.key?(:'auto_payment_period')
        self.auto_payment_period = attributes[:'auto_payment_period']
      end

      if attributes.key?(:'balance_ceiling')
        self.balance_ceiling = attributes[:'balance_ceiling']
      end

      if attributes.key?(:'balance_floor')
        self.balance_floor = attributes[:'balance_floor']
      end

      if attributes.key?(:'bank_account_id')
        self.bank_account_id = attributes[:'bank_account_id']
      end

      if attributes.key?(:'bank_country')
        self.bank_country = attributes[:'bank_country']
      else
        self.bank_country = nil
      end

      if attributes.key?(:'billing_period')
        self.billing_period = attributes[:'billing_period']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'fee_product_ids')
        if (value = attributes[:'fee_product_ids']).is_a?(Array)
          self.fee_product_ids = value
        end
      end

      if attributes.key?(:'grace_period')
        self.grace_period = attributes[:'grace_period']
      else
        self.grace_period = 21
      end

      if attributes.key?(:'interest_product_id')
        self.interest_product_id = attributes[:'interest_product_id']
      end

      if attributes.key?(:'is_ach_enabled')
        self.is_ach_enabled = attributes[:'is_ach_enabled']
      else
        self.is_ach_enabled = false
      end

      if attributes.key?(:'is_card_enabled')
        self.is_card_enabled = attributes[:'is_card_enabled']
      else
        self.is_card_enabled = false
      end

      if attributes.key?(:'is_eft_ca_enabled')
        self.is_eft_ca_enabled = attributes[:'is_eft_ca_enabled']
      end

      if attributes.key?(:'is_external_card_enabled')
        self.is_external_card_enabled = attributes[:'is_external_card_enabled']
      else
        self.is_external_card_enabled = false
      end

      if attributes.key?(:'is_p2p_enabled')
        self.is_p2p_enabled = attributes[:'is_p2p_enabled']
      else
        self.is_p2p_enabled = false
      end

      if attributes.key?(:'is_sar_enabled')
        self.is_sar_enabled = attributes[:'is_sar_enabled']
      else
        self.is_sar_enabled = false
      end

      if attributes.key?(:'is_synctera_pay_enabled')
        self.is_synctera_pay_enabled = attributes[:'is_synctera_pay_enabled']
      else
        self.is_synctera_pay_enabled = false
      end

      if attributes.key?(:'is_wire_enabled')
        self.is_wire_enabled = attributes[:'is_wire_enabled']
      else
        self.is_wire_enabled = false
      end

      if attributes.key?(:'minimum_payment')
        self.minimum_payment = attributes[:'minimum_payment']
      end

      if attributes.key?(:'overdraft_limit')
        self.overdraft_limit = attributes[:'overdraft_limit']
      end

      if attributes.key?(:'spend_control_ids')
        if (value = attributes[:'spend_control_ids']).is_a?(Array)
          self.spend_control_ids = value
        end
      end

      if attributes.key?(:'spending_limits')
        self.spending_limits = attributes[:'spending_limits']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_type.nil?
        invalid_properties.push('invalid value for "account_type", account_type cannot be nil.')
      end

      if !@auto_payment_period.nil? && @auto_payment_period > 28
        invalid_properties.push('invalid value for "auto_payment_period", must be smaller than or equal to 28.')
      end

      if !@auto_payment_period.nil? && @auto_payment_period < 0
        invalid_properties.push('invalid value for "auto_payment_period", must be greater than or equal to 0.')
      end

      if @bank_country.nil?
        invalid_properties.push('invalid value for "bank_country", bank_country cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Z]{2,3}$/)
      if @bank_country !~ pattern
        invalid_properties.push("invalid value for \"bank_country\", must conform to the pattern #{pattern}.")
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if !@grace_period.nil? && @grace_period > 28
        invalid_properties.push('invalid value for "grace_period", must be smaller than or equal to 28.')
      end

      if !@grace_period.nil? && @grace_period < 21
        invalid_properties.push('invalid value for "grace_period", must be greater than or equal to 21.')
      end

      if !@overdraft_limit.nil? && @overdraft_limit < 0
        invalid_properties.push('invalid value for "overdraft_limit", must be greater than or equal to 0.')
      end

      if !@spend_control_ids.nil? && @spend_control_ids.length > 10
        invalid_properties.push('invalid value for "spend_control_ids", number of items must be less than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_type.nil?
      return false if !@auto_payment_period.nil? && @auto_payment_period > 28
      return false if !@auto_payment_period.nil? && @auto_payment_period < 0
      return false if @bank_country.nil?
      return false if @bank_country !~ Regexp.new(/^[A-Z]{2,3}$/)
      return false if @currency.nil?
      return false if @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if !@grace_period.nil? && @grace_period > 28
      return false if !@grace_period.nil? && @grace_period < 21
      return false if !@overdraft_limit.nil? && @overdraft_limit < 0
      return false if !@spend_control_ids.nil? && @spend_control_ids.length > 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] auto_payment_period Value to be assigned
    def auto_payment_period=(auto_payment_period)
      if auto_payment_period.nil?
        fail ArgumentError, 'auto_payment_period cannot be nil'
      end

      if auto_payment_period > 28
        fail ArgumentError, 'invalid value for "auto_payment_period", must be smaller than or equal to 28.'
      end

      if auto_payment_period < 0
        fail ArgumentError, 'invalid value for "auto_payment_period", must be greater than or equal to 0.'
      end

      @auto_payment_period = auto_payment_period
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_country Value to be assigned
    def bank_country=(bank_country)
      if bank_country.nil?
        fail ArgumentError, 'bank_country cannot be nil'
      end

      pattern = Regexp.new(/^[A-Z]{2,3}$/)
      if bank_country !~ pattern
        fail ArgumentError, "invalid value for \"bank_country\", must conform to the pattern #{pattern}."
      end

      @bank_country = bank_country
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

    # Custom attribute writer method with validation
    # @param [Object] overdraft_limit Value to be assigned
    def overdraft_limit=(overdraft_limit)
      if overdraft_limit.nil?
        fail ArgumentError, 'overdraft_limit cannot be nil'
      end

      if overdraft_limit < 0
        fail ArgumentError, 'invalid value for "overdraft_limit", must be greater than or equal to 0.'
      end

      @overdraft_limit = overdraft_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] spend_control_ids Value to be assigned
    def spend_control_ids=(spend_control_ids)
      if spend_control_ids.nil?
        fail ArgumentError, 'spend_control_ids cannot be nil'
      end

      if spend_control_ids.length > 10
        fail ArgumentError, 'invalid value for "spend_control_ids", number of items must be less than or equal to 10.'
      end

      @spend_control_ids = spend_control_ids
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_type == o.account_type &&
          auto_payment_period == o.auto_payment_period &&
          balance_ceiling == o.balance_ceiling &&
          balance_floor == o.balance_floor &&
          bank_account_id == o.bank_account_id &&
          bank_country == o.bank_country &&
          billing_period == o.billing_period &&
          currency == o.currency &&
          fee_product_ids == o.fee_product_ids &&
          grace_period == o.grace_period &&
          interest_product_id == o.interest_product_id &&
          is_ach_enabled == o.is_ach_enabled &&
          is_card_enabled == o.is_card_enabled &&
          is_eft_ca_enabled == o.is_eft_ca_enabled &&
          is_external_card_enabled == o.is_external_card_enabled &&
          is_p2p_enabled == o.is_p2p_enabled &&
          is_sar_enabled == o.is_sar_enabled &&
          is_synctera_pay_enabled == o.is_synctera_pay_enabled &&
          is_wire_enabled == o.is_wire_enabled &&
          minimum_payment == o.minimum_payment &&
          overdraft_limit == o.overdraft_limit &&
          spend_control_ids == o.spend_control_ids &&
          spending_limits == o.spending_limits
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_type, auto_payment_period, balance_ceiling, balance_floor, bank_account_id, bank_country, billing_period, currency, fee_product_ids, grace_period, interest_product_id, is_ach_enabled, is_card_enabled, is_eft_ca_enabled, is_external_card_enabled, is_p2p_enabled, is_sar_enabled, is_synctera_pay_enabled, is_wire_enabled, minimum_payment, overdraft_limit, spend_control_ids, spending_limits].hash
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
