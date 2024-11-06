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
  class PendingTransactionHistoryData
    # The amount of the hold.
    attr_accessor :amount

    # The time the transaction will be automatically posted.
    attr_accessor :auto_post_at

    # The account \"available balance\" at the time this hold was created (to be deprecated)
    attr_accessor :avail_balance

    # The account \"available balance\" at the time this hold was created
    attr_accessor :available_balance

    # The account balance at the time this hold was created
    attr_accessor :balance

    # ISO 4217 alphabetic currency code of the transfer amount
    attr_accessor :currency

    attr_accessor :dc_sign

    # The effective date of the transaction once it gets posted
    attr_accessor :effective_date

    # The date that at which this hold is no longer valid.
    attr_accessor :expires_at

    # an unstructured json blob representing additional transaction information supplied by the integrator.
    attr_accessor :external_data

    # Whether or not the hold was forced (spending controls ignored)
    attr_accessor :force_post

    # The idempotency key used when initially creating this hold.
    attr_accessor :idemkey

    # A short note to the recipient
    attr_accessor :memo

    # The network this transaction is associated with
    attr_accessor :network

    attr_accessor :operation

    # If a hold has been declined or modified, this will include the reason.
    attr_accessor :reason

    # The requested amount, in the case of hold modifications.
    attr_accessor :req_amount

    # Information received by the transaction risk/fraud service related to this transaction
    attr_accessor :risk_info

    # The status of the hold.
    attr_accessor :status

    # The specific transaction type. For example, for `ach`, this may be \"outgoing_debit\".
    attr_accessor :subtype

    # The total amount of the hold. This may be different than `amount` in the case where a hold increase or decrease was requested.
    attr_accessor :total_amount

    # The uuid of the transaction that this pending transaction originated from, if any. This is primary used when a transaction \"posts\", but a subset of the amount reserved until a future settlement date.
    attr_accessor :transaction_id

    # The time the transaction occurred.
    attr_accessor :transaction_time

    # The general type of transaction. For example, \"card\" or \"ach\".
    attr_accessor :type

    # An unstructured JSON blob representing additional transaction information specific to each payment rail.
    attr_accessor :user_data

    # Does this hold represent a partial debit (or credit)?
    attr_accessor :was_partial

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
        :'auto_post_at' => :'auto_post_at',
        :'avail_balance' => :'avail_balance',
        :'available_balance' => :'available_balance',
        :'balance' => :'balance',
        :'currency' => :'currency',
        :'dc_sign' => :'dc_sign',
        :'effective_date' => :'effective_date',
        :'expires_at' => :'expires_at',
        :'external_data' => :'external_data',
        :'force_post' => :'force_post',
        :'idemkey' => :'idemkey',
        :'memo' => :'memo',
        :'network' => :'network',
        :'operation' => :'operation',
        :'reason' => :'reason',
        :'req_amount' => :'req_amount',
        :'risk_info' => :'risk_info',
        :'status' => :'status',
        :'subtype' => :'subtype',
        :'total_amount' => :'total_amount',
        :'transaction_id' => :'transaction_id',
        :'transaction_time' => :'transaction_time',
        :'type' => :'type',
        :'user_data' => :'user_data',
        :'was_partial' => :'was_partial'
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
        :'auto_post_at' => :'Time',
        :'avail_balance' => :'Integer',
        :'available_balance' => :'Integer',
        :'balance' => :'Integer',
        :'currency' => :'String',
        :'dc_sign' => :'DcSign',
        :'effective_date' => :'Time',
        :'expires_at' => :'Time',
        :'external_data' => :'Object',
        :'force_post' => :'Boolean',
        :'idemkey' => :'String',
        :'memo' => :'String',
        :'network' => :'String',
        :'operation' => :'String',
        :'reason' => :'String',
        :'req_amount' => :'Integer',
        :'risk_info' => :'Object',
        :'status' => :'String',
        :'subtype' => :'String',
        :'total_amount' => :'Integer',
        :'transaction_id' => :'String',
        :'transaction_time' => :'Time',
        :'type' => :'String',
        :'user_data' => :'Object',
        :'was_partial' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_data',
        :'risk_info',
        :'user_data',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PendingTransactionHistoryData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PendingTransactionHistoryData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'auto_post_at')
        self.auto_post_at = attributes[:'auto_post_at']
      else
        self.auto_post_at = nil
      end

      if attributes.key?(:'avail_balance')
        self.avail_balance = attributes[:'avail_balance']
      else
        self.avail_balance = nil
      end

      if attributes.key?(:'available_balance')
        self.available_balance = attributes[:'available_balance']
      else
        self.available_balance = nil
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      else
        self.balance = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'dc_sign')
        self.dc_sign = attributes[:'dc_sign']
      else
        self.dc_sign = nil
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      else
        self.effective_date = nil
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      else
        self.expires_at = nil
      end

      if attributes.key?(:'external_data')
        self.external_data = attributes[:'external_data']
      end

      if attributes.key?(:'force_post')
        self.force_post = attributes[:'force_post']
      else
        self.force_post = nil
      end

      if attributes.key?(:'idemkey')
        self.idemkey = attributes[:'idemkey']
      else
        self.idemkey = nil
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      else
        self.memo = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      else
        self.network = nil
      end

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      else
        self.operation = nil
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      else
        self.reason = nil
      end

      if attributes.key?(:'req_amount')
        self.req_amount = attributes[:'req_amount']
      else
        self.req_amount = nil
      end

      if attributes.key?(:'risk_info')
        self.risk_info = attributes[:'risk_info']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      else
        self.subtype = nil
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      else
        self.total_amount = nil
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
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

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end

      if attributes.key?(:'was_partial')
        self.was_partial = attributes[:'was_partial']
      else
        self.was_partial = nil
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

      if @amount < 0
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 0.')
      end

      if @auto_post_at.nil?
        invalid_properties.push('invalid value for "auto_post_at", auto_post_at cannot be nil.')
      end

      if @avail_balance.nil?
        invalid_properties.push('invalid value for "avail_balance", avail_balance cannot be nil.')
      end

      if @available_balance.nil?
        invalid_properties.push('invalid value for "available_balance", available_balance cannot be nil.')
      end

      if @balance.nil?
        invalid_properties.push('invalid value for "balance", balance cannot be nil.')
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

      if @expires_at.nil?
        invalid_properties.push('invalid value for "expires_at", expires_at cannot be nil.')
      end

      if @force_post.nil?
        invalid_properties.push('invalid value for "force_post", force_post cannot be nil.')
      end

      if @idemkey.nil?
        invalid_properties.push('invalid value for "idemkey", idemkey cannot be nil.')
      end

      if @memo.nil?
        invalid_properties.push('invalid value for "memo", memo cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @operation.nil?
        invalid_properties.push('invalid value for "operation", operation cannot be nil.')
      end

      if @reason.nil?
        invalid_properties.push('invalid value for "reason", reason cannot be nil.')
      end

      if @req_amount.nil?
        invalid_properties.push('invalid value for "req_amount", req_amount cannot be nil.')
      end

      if @req_amount < 0
        invalid_properties.push('invalid value for "req_amount", must be greater than or equal to 0.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @subtype.nil?
        invalid_properties.push('invalid value for "subtype", subtype cannot be nil.')
      end

      if @total_amount.nil?
        invalid_properties.push('invalid value for "total_amount", total_amount cannot be nil.')
      end

      if @total_amount < 0
        invalid_properties.push('invalid value for "total_amount", must be greater than or equal to 0.')
      end

      if @transaction_time.nil?
        invalid_properties.push('invalid value for "transaction_time", transaction_time cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @was_partial.nil?
        invalid_properties.push('invalid value for "was_partial", was_partial cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @amount.nil?
      return false if @amount < 0
      return false if @auto_post_at.nil?
      return false if @avail_balance.nil?
      return false if @available_balance.nil?
      return false if @balance.nil?
      return false if @currency.nil?
      return false if @dc_sign.nil?
      return false if @effective_date.nil?
      return false if @expires_at.nil?
      return false if @force_post.nil?
      return false if @idemkey.nil?
      return false if @memo.nil?
      return false if @network.nil?
      return false if @operation.nil?
      operation_validator = EnumAttributeValidator.new('String', ["hold_cancel", "hold_decline", "hold_decrease", "hold_expire", "hold_increase", "hold_new", "hold_post", "hold_replace"])
      return false unless operation_validator.valid?(@operation)
      return false if @reason.nil?
      return false if @req_amount.nil?
      return false if @req_amount < 0
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["CLEARED", "DECLINED", "EXPIRED", "INTERNAL_ERROR", "PARTCLEARED", "PENDING", "RELEASED", "REPLACED"])
      return false unless status_validator.valid?(@status)
      return false if @subtype.nil?
      return false if @total_amount.nil?
      return false if @total_amount < 0
      return false if @transaction_time.nil?
      return false if @type.nil?
      return false if @was_partial.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount < 0
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 0.'
      end

      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operation Object to be assigned
    def operation=(operation)
      validator = EnumAttributeValidator.new('String', ["hold_cancel", "hold_decline", "hold_decrease", "hold_expire", "hold_increase", "hold_new", "hold_post", "hold_replace"])
      unless validator.valid?(operation)
        warn "invalid value for \"operation\", must be one of #{validator.allowable_values}."
      end
      @operation = operation
    end

    # Custom attribute writer method with validation
    # @param [Object] req_amount Value to be assigned
    def req_amount=(req_amount)
      if req_amount.nil?
        fail ArgumentError, 'req_amount cannot be nil'
      end

      if req_amount < 0
        fail ArgumentError, 'invalid value for "req_amount", must be greater than or equal to 0.'
      end

      @req_amount = req_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["CLEARED", "DECLINED", "EXPIRED", "INTERNAL_ERROR", "PARTCLEARED", "PENDING", "RELEASED", "REPLACED"])
      unless validator.valid?(status)
        warn "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      if total_amount.nil?
        fail ArgumentError, 'total_amount cannot be nil'
      end

      if total_amount < 0
        fail ArgumentError, 'invalid value for "total_amount", must be greater than or equal to 0.'
      end

      @total_amount = total_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          auto_post_at == o.auto_post_at &&
          avail_balance == o.avail_balance &&
          available_balance == o.available_balance &&
          balance == o.balance &&
          currency == o.currency &&
          dc_sign == o.dc_sign &&
          effective_date == o.effective_date &&
          expires_at == o.expires_at &&
          external_data == o.external_data &&
          force_post == o.force_post &&
          idemkey == o.idemkey &&
          memo == o.memo &&
          network == o.network &&
          operation == o.operation &&
          reason == o.reason &&
          req_amount == o.req_amount &&
          risk_info == o.risk_info &&
          status == o.status &&
          subtype == o.subtype &&
          total_amount == o.total_amount &&
          transaction_id == o.transaction_id &&
          transaction_time == o.transaction_time &&
          type == o.type &&
          user_data == o.user_data &&
          was_partial == o.was_partial
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, auto_post_at, avail_balance, available_balance, balance, currency, dc_sign, effective_date, expires_at, external_data, force_post, idemkey, memo, network, operation, reason, req_amount, risk_info, status, subtype, total_amount, transaction_id, transaction_time, type, user_data, was_partial].hash
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
