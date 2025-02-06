=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.145.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module Synctera
  class OriginalCreditRequestModel
    # The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents)
    attr_accessor :amount

    attr_accessor :card_acceptor

    attr_accessor :card_id

    attr_accessor :mid

    attr_accessor :screening_score

    attr_accessor :sender_data

    attr_accessor :transaction_purpose

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
        :'card_acceptor' => :'card_acceptor',
        :'card_id' => :'card_id',
        :'mid' => :'mid',
        :'screening_score' => :'screening_score',
        :'sender_data' => :'sender_data',
        :'transaction_purpose' => :'transactionPurpose',
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
        :'card_acceptor' => :'CardAcceptorModel',
        :'card_id' => :'String',
        :'mid' => :'String',
        :'screening_score' => :'String',
        :'sender_data' => :'OriginalCreditSenderData',
        :'transaction_purpose' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::OriginalCreditRequestModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::OriginalCreditRequestModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'card_acceptor')
        self.card_acceptor = attributes[:'card_acceptor']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      else
        self.card_id = nil
      end

      if attributes.key?(:'mid')
        self.mid = attributes[:'mid']
      else
        self.mid = nil
      end

      if attributes.key?(:'screening_score')
        self.screening_score = attributes[:'screening_score']
      end

      if attributes.key?(:'sender_data')
        self.sender_data = attributes[:'sender_data']
      end

      if attributes.key?(:'transaction_purpose')
        self.transaction_purpose = attributes[:'transaction_purpose']
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

      if @card_id.nil?
        invalid_properties.push('invalid value for "card_id", card_id cannot be nil.')
      end

      if @mid.nil?
        invalid_properties.push('invalid value for "mid", mid cannot be nil.')
      end

      if @mid.to_s.length > 50
        invalid_properties.push('invalid value for "mid", the character length must be smaller than or equal to 50.')
      end

      if @mid.to_s.length < 1
        invalid_properties.push('invalid value for "mid", the character length must be great than or equal to 1.')
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
      return false if @card_id.nil?
      return false if @mid.nil?
      return false if @mid.to_s.length > 50
      return false if @mid.to_s.length < 1
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["account_to_account", "bill_payment", "business_to_business", "card_bill_payment", "cash_claim", "cash_in", "cash_out", "disbursement", "face_to_face_merchant_payment", "gambling_payout", "government_disbursement", "government_payment", "loyalty", "merchant_disbursement", "mobile_air_time_payment", "money_transfer_by_bank", "money_transfer_by_merchant", "online_gambling_payout", "payments_goods_services", "pension_disbursement", "person_to_person", "prepaid", "prepaid_loads", "wallet_transfer"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] mid Value to be assigned
    def mid=(mid)
      if mid.nil?
        fail ArgumentError, 'mid cannot be nil'
      end

      if mid.to_s.length > 50
        fail ArgumentError, 'invalid value for "mid", the character length must be smaller than or equal to 50.'
      end

      if mid.to_s.length < 1
        fail ArgumentError, 'invalid value for "mid", the character length must be great than or equal to 1.'
      end

      @mid = mid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["account_to_account", "bill_payment", "business_to_business", "card_bill_payment", "cash_claim", "cash_in", "cash_out", "disbursement", "face_to_face_merchant_payment", "gambling_payout", "government_disbursement", "government_payment", "loyalty", "merchant_disbursement", "mobile_air_time_payment", "money_transfer_by_bank", "money_transfer_by_merchant", "online_gambling_payout", "payments_goods_services", "pension_disbursement", "person_to_person", "prepaid", "prepaid_loads", "wallet_transfer"])
      unless validator.valid?(type)
        warn "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          card_acceptor == o.card_acceptor &&
          card_id == o.card_id &&
          mid == o.mid &&
          screening_score == o.screening_score &&
          sender_data == o.sender_data &&
          transaction_purpose == o.transaction_purpose &&
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
      [amount, card_acceptor, card_id, mid, screening_score, sender_data, transaction_purpose, type].hash
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
