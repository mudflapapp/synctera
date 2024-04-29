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
  class RewardTransaction
    # The account uuid associated with the transaction. `account_id` and `internal_account_id` are mutually exclusive
    attr_accessor :account_id

    # The total amount of the transaction including both pending and already posted amounts. The value is represented as the smallest denomination of the applicable currency.
    attr_accessor :amount

    # The exact time the transaction was recorded in the ledger
    attr_accessor :creation_time

    # ISO 4217 alphabetic currency code of the transfer amount
    attr_accessor :currency

    # The uuid of the customer that initiated the transaction (if any) 
    attr_accessor :customer_id

    # The `dc_sign` represents the direction money was moved. A value of `DEBIT` is money moving out of an account, a value of `CREDIT` is money moving into an account
    attr_accessor :dc_sign

    attr_accessor :decline

    # A human-friendly description of the transaction, provided by the integrator
    attr_accessor :description

    # The effective date of the transaction. This usually aligns with network settlement date, which differs between transaction types. The effective date is also used to determine effective daily balances for the purposes of interest calculation.
    attr_accessor :effective_date

    attr_accessor :enhanced_transaction

    # Determines whether or not a transaction or auth was \"forced\" or not. A forced transaction skips any account balance checks
    attr_accessor :force_post

    attr_accessor :fraud_risk

    # The group id of the transaction. Every transaction in the ledger is one entry in a double-entry system and the primary and offset transactions share the same `group_id`
    attr_accessor :group_id

    # The date and time any pending amount is expected to be released back to the account.
    attr_accessor :hold_expiration_time

    # The unique identifier of the transaction
    attr_accessor :id

    # The internal account uuid associated with the transaction. `account_id` and `internal_account_id` are mutually exclusive
    attr_accessor :internal_account_id

    # The date and time the transaction was last modified
    attr_accessor :last_updated_time

    # an unstructured json blob representing additional transaction information supplied by the integrator.
    attr_accessor :metadata

    # Determines whether or not the funds on hold were the result of a partial auth or not. If `true` the `pending_amount` of the transaction will be less than the requested amount. This is primarily used for certain types of card transactions.
    attr_accessor :partial_hold

    # The amount amount of the transaction currently authorized or on hold
    attr_accessor :pending_amount

    # The amount of the transaction that has been fully posted to the account
    attr_accessor :posted_amount

    # The date the transaction was posted (based on the bank calendar and end-of-day). For transaction with multiple postings, this is the date of the earliest posting. This will be omitted for transactions with a `posted_amount` of `0`.
    attr_accessor :posted_date

    # An external ID provided by the payment network to represent this transaction. This is not guaranteed to be globally unique. This will always be omitted for internal transfers.
    attr_accessor :reference_id

    attr_accessor :status

    # A human-friendly description of the transaction, provided by the Synctera platform
    attr_accessor :system_description

    # The time the transaction occurred. In most cases this will be roughly identical to creation_time, but it can differ in some situations if the payment doesn't appear in the ledger in real-time.
    attr_accessor :transaction_time

    attr_accessor :type

    attr_accessor :reward_transaction

    attr_accessor :subtype

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
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'dc_sign' => :'dc_sign',
        :'decline' => :'decline',
        :'description' => :'description',
        :'effective_date' => :'effective_date',
        :'enhanced_transaction' => :'enhanced_transaction',
        :'force_post' => :'force_post',
        :'fraud_risk' => :'fraud_risk',
        :'group_id' => :'group_id',
        :'hold_expiration_time' => :'hold_expiration_time',
        :'id' => :'id',
        :'internal_account_id' => :'internal_account_id',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'partial_hold' => :'partial_hold',
        :'pending_amount' => :'pending_amount',
        :'posted_amount' => :'posted_amount',
        :'posted_date' => :'posted_date',
        :'reference_id' => :'reference_id',
        :'status' => :'status',
        :'system_description' => :'system_description',
        :'transaction_time' => :'transaction_time',
        :'type' => :'type',
        :'reward_transaction' => :'reward_transaction',
        :'subtype' => :'subtype'
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
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'dc_sign' => :'String',
        :'decline' => :'BaseTransactionDecline',
        :'description' => :'String',
        :'effective_date' => :'Date',
        :'enhanced_transaction' => :'EnhancedTransactionData1',
        :'force_post' => :'Boolean',
        :'fraud_risk' => :'FraudRiskData',
        :'group_id' => :'String',
        :'hold_expiration_time' => :'Time',
        :'id' => :'String',
        :'internal_account_id' => :'String',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Object',
        :'partial_hold' => :'Boolean',
        :'pending_amount' => :'Integer',
        :'posted_amount' => :'Integer',
        :'posted_date' => :'Date',
        :'reference_id' => :'String',
        :'status' => :'TransactionStatuses',
        :'system_description' => :'String',
        :'transaction_time' => :'Time',
        :'type' => :'TransactionTypes',
        :'reward_transaction' => :'RewardTransactionData',
        :'subtype' => :'RewardSubtype'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'metadata',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'BaseTransaction'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::RewardTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::RewardTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      else
        self.creation_time = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'dc_sign')
        self.dc_sign = attributes[:'dc_sign']
      else
        self.dc_sign = nil
      end

      if attributes.key?(:'decline')
        self.decline = attributes[:'decline']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      else
        self.effective_date = nil
      end

      if attributes.key?(:'enhanced_transaction')
        self.enhanced_transaction = attributes[:'enhanced_transaction']
      end

      if attributes.key?(:'force_post')
        self.force_post = attributes[:'force_post']
      else
        self.force_post = nil
      end

      if attributes.key?(:'fraud_risk')
        self.fraud_risk = attributes[:'fraud_risk']
      end

      if attributes.key?(:'group_id')
        self.group_id = attributes[:'group_id']
      else
        self.group_id = nil
      end

      if attributes.key?(:'hold_expiration_time')
        self.hold_expiration_time = attributes[:'hold_expiration_time']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'internal_account_id')
        self.internal_account_id = attributes[:'internal_account_id']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      else
        self.last_updated_time = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'partial_hold')
        self.partial_hold = attributes[:'partial_hold']
      else
        self.partial_hold = nil
      end

      if attributes.key?(:'pending_amount')
        self.pending_amount = attributes[:'pending_amount']
      else
        self.pending_amount = nil
      end

      if attributes.key?(:'posted_amount')
        self.posted_amount = attributes[:'posted_amount']
      else
        self.posted_amount = nil
      end

      if attributes.key?(:'posted_date')
        self.posted_date = attributes[:'posted_date']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'system_description')
        self.system_description = attributes[:'system_description']
      end

      if attributes.key?(:'transaction_time')
        self.transaction_time = attributes[:'transaction_time']
      else
        self.transaction_time = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'reward_transaction')
        self.reward_transaction = attributes[:'reward_transaction']
      else
        self.reward_transaction = nil
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      else
        self.subtype = nil
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

      if @creation_time.nil?
        invalid_properties.push('invalid value for "creation_time", creation_time cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @dc_sign.nil?
        invalid_properties.push('invalid value for "dc_sign", dc_sign cannot be nil.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      if @force_post.nil?
        invalid_properties.push('invalid value for "force_post", force_post cannot be nil.')
      end

      if @group_id.nil?
        invalid_properties.push('invalid value for "group_id", group_id cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_updated_time.nil?
        invalid_properties.push('invalid value for "last_updated_time", last_updated_time cannot be nil.')
      end

      if @partial_hold.nil?
        invalid_properties.push('invalid value for "partial_hold", partial_hold cannot be nil.')
      end

      if @pending_amount.nil?
        invalid_properties.push('invalid value for "pending_amount", pending_amount cannot be nil.')
      end

      if @posted_amount.nil?
        invalid_properties.push('invalid value for "posted_amount", posted_amount cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @transaction_time.nil?
        invalid_properties.push('invalid value for "transaction_time", transaction_time cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @reward_transaction.nil?
        invalid_properties.push('invalid value for "reward_transaction", reward_transaction cannot be nil.')
      end

      if @subtype.nil?
        invalid_properties.push('invalid value for "subtype", subtype cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @amount.nil?
      return false if @creation_time.nil?
      return false if @currency.nil?
      return false if @dc_sign.nil?
      dc_sign_validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      return false unless dc_sign_validator.valid?(@dc_sign)
      return false if @effective_date.nil?
      return false if @force_post.nil?
      return false if @group_id.nil?
      return false if @id.nil?
      return false if @last_updated_time.nil?
      return false if @partial_hold.nil?
      return false if @pending_amount.nil?
      return false if @posted_amount.nil?
      return false if @status.nil?
      return false if @transaction_time.nil?
      return false if @type.nil?
      return false if @reward_transaction.nil?
      return false if @subtype.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dc_sign Object to be assigned
    def dc_sign=(dc_sign)
      validator = EnumAttributeValidator.new('String', ["CREDIT", "DEBIT"])
      unless validator.valid?(dc_sign)
        fail ArgumentError, "invalid value for \"dc_sign\", must be one of #{validator.allowable_values}."
      end
      @dc_sign = dc_sign
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          amount == o.amount &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          dc_sign == o.dc_sign &&
          decline == o.decline &&
          description == o.description &&
          effective_date == o.effective_date &&
          enhanced_transaction == o.enhanced_transaction &&
          force_post == o.force_post &&
          fraud_risk == o.fraud_risk &&
          group_id == o.group_id &&
          hold_expiration_time == o.hold_expiration_time &&
          id == o.id &&
          internal_account_id == o.internal_account_id &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          partial_hold == o.partial_hold &&
          pending_amount == o.pending_amount &&
          posted_amount == o.posted_amount &&
          posted_date == o.posted_date &&
          reference_id == o.reference_id &&
          status == o.status &&
          system_description == o.system_description &&
          transaction_time == o.transaction_time &&
          type == o.type &&
          reward_transaction == o.reward_transaction &&
          subtype == o.subtype
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, amount, creation_time, currency, customer_id, dc_sign, decline, description, effective_date, enhanced_transaction, force_post, fraud_risk, group_id, hold_expiration_time, id, internal_account_id, last_updated_time, metadata, partial_hold, pending_amount, posted_amount, posted_date, reference_id, status, system_description, transaction_time, type, reward_transaction, subtype].hash
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
