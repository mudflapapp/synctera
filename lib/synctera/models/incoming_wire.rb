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
  class IncomingWire
    # The internal account uuid representing the recipient of the wire.
    attr_accessor :account_id

    # Transfer amount in cents ($100 would be 10000)
    attr_accessor :amount

    # Information from the sending bank to the receiving bank.
    attr_accessor :bank_message

    attr_accessor :creation_time

    # 3-character currency code
    attr_accessor :currency

    # The customer UUID representing the person initiating the Wire transfer
    attr_accessor :customer_id

    # Description of the reason the transfer was declined
    attr_accessor :decline_reason

    # wire ID
    attr_accessor :id

    # The input message accountability data consists of a 8 character cycle date (CCYYMMDD) an 8 character source and a 6 character sequence number.
    attr_accessor :input_message_accountability_data

    # Indicates if the wire is a return of an outgoing wire
    attr_accessor :is_return

    # The network used to process the wire
    attr_accessor :network

    # The account number representing the sender account. If the incoming wire is a return, it refers to the sender of the initial wire not the sender of the return.
    attr_accessor :originating_account_number

    attr_accessor :receiver

    # The internal Synctera account uuid representing the recipient of the wire.
    attr_accessor :receiving_account_id

    # The account number representing the recipient account. If the incoming wire is a return, it refers to the recipient of the initial wire not the destination of the return.
    attr_accessor :receiving_account_number

    # Information from the originator to the beneficiary (recipient).
    attr_accessor :recipient_message

    attr_accessor :return_data

    # The reason we are returning this wire.
    attr_accessor :return_reason

    attr_accessor :sender

    # Sender's id associated with fedwire transfer
    attr_accessor :sender_reference_id

    # The current status of the transfer
    attr_accessor :status

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # ID of the resulting transaction resource
    attr_accessor :transaction_id

    # The fedwire label associated with the subtype code
    attr_accessor :type_subtype

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
        :'bank_message' => :'bank_message',
        :'creation_time' => :'creation_time',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'decline_reason' => :'decline_reason',
        :'id' => :'id',
        :'input_message_accountability_data' => :'input_message_accountability_data',
        :'is_return' => :'is_return',
        :'network' => :'network',
        :'originating_account_number' => :'originating_account_number',
        :'receiver' => :'receiver',
        :'receiving_account_id' => :'receiving_account_id',
        :'receiving_account_number' => :'receiving_account_number',
        :'recipient_message' => :'recipient_message',
        :'return_data' => :'return_data',
        :'return_reason' => :'return_reason',
        :'sender' => :'sender',
        :'sender_reference_id' => :'sender_reference_id',
        :'status' => :'status',
        :'tenant' => :'tenant',
        :'transaction_id' => :'transaction_id',
        :'type_subtype' => :'type_subtype'
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
        :'bank_message' => :'String',
        :'creation_time' => :'Time',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'decline_reason' => :'String',
        :'id' => :'String',
        :'input_message_accountability_data' => :'String',
        :'is_return' => :'Boolean',
        :'network' => :'String',
        :'originating_account_number' => :'String',
        :'receiver' => :'Party',
        :'receiving_account_id' => :'String',
        :'receiving_account_number' => :'String',
        :'recipient_message' => :'String',
        :'return_data' => :'ReturnData1',
        :'return_reason' => :'String',
        :'sender' => :'Party',
        :'sender_reference_id' => :'String',
        :'status' => :'String',
        :'tenant' => :'String',
        :'transaction_id' => :'String',
        :'type_subtype' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::IncomingWire` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::IncomingWire`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'bank_message')
        self.bank_message = attributes[:'bank_message']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      else
        self.creation_time = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'decline_reason')
        self.decline_reason = attributes[:'decline_reason']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'input_message_accountability_data')
        self.input_message_accountability_data = attributes[:'input_message_accountability_data']
      end

      if attributes.key?(:'is_return')
        self.is_return = attributes[:'is_return']
      else
        self.is_return = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'originating_account_number')
        self.originating_account_number = attributes[:'originating_account_number']
      end

      if attributes.key?(:'receiver')
        self.receiver = attributes[:'receiver']
      else
        self.receiver = nil
      end

      if attributes.key?(:'receiving_account_id')
        self.receiving_account_id = attributes[:'receiving_account_id']
      end

      if attributes.key?(:'receiving_account_number')
        self.receiving_account_number = attributes[:'receiving_account_number']
      else
        self.receiving_account_number = nil
      end

      if attributes.key?(:'recipient_message')
        self.recipient_message = attributes[:'recipient_message']
      end

      if attributes.key?(:'return_data')
        self.return_data = attributes[:'return_data']
      end

      if attributes.key?(:'return_reason')
        self.return_reason = attributes[:'return_reason']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      else
        self.sender = nil
      end

      if attributes.key?(:'sender_reference_id')
        self.sender_reference_id = attributes[:'sender_reference_id']
      else
        self.sender_reference_id = nil
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

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'type_subtype')
        self.type_subtype = attributes[:'type_subtype']
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

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @is_return.nil?
        invalid_properties.push('invalid value for "is_return", is_return cannot be nil.')
      end

      if @receiver.nil?
        invalid_properties.push('invalid value for "receiver", receiver cannot be nil.')
      end

      if @receiving_account_number.nil?
        invalid_properties.push('invalid value for "receiving_account_number", receiving_account_number cannot be nil.')
      end

      if @sender.nil?
        invalid_properties.push('invalid value for "sender", sender cannot be nil.')
      end

      if @sender_reference_id.nil?
        invalid_properties.push('invalid value for "sender_reference_id", sender_reference_id cannot be nil.')
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
      return false if @amount.nil?
      return false if @creation_time.nil?
      return false if @id.nil?
      return false if @is_return.nil?
      return false if @receiver.nil?
      return false if @receiving_account_number.nil?
      return false if @sender.nil?
      return false if @sender_reference_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["BLOCKED", "POSTED", "READY", "RETURNED"])
      return false unless status_validator.valid?(@status)
      return false if @tenant.nil?
      type_subtype_validator = EnumAttributeValidator.new('String', ["BASIC_FUNDS_TRANSFER", "PRIOR_DAY_TRANSFER_REVERSAL", "SAME_DAY_TRANSFER_REVERSAL"])
      return false unless type_subtype_validator.valid?(@type_subtype)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["BLOCKED", "POSTED", "READY", "RETURNED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type_subtype Object to be assigned
    def type_subtype=(type_subtype)
      validator = EnumAttributeValidator.new('String', ["BASIC_FUNDS_TRANSFER", "PRIOR_DAY_TRANSFER_REVERSAL", "SAME_DAY_TRANSFER_REVERSAL"])
      unless validator.valid?(type_subtype)
        fail ArgumentError, "invalid value for \"type_subtype\", must be one of #{validator.allowable_values}."
      end
      @type_subtype = type_subtype
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          amount == o.amount &&
          bank_message == o.bank_message &&
          creation_time == o.creation_time &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          decline_reason == o.decline_reason &&
          id == o.id &&
          input_message_accountability_data == o.input_message_accountability_data &&
          is_return == o.is_return &&
          network == o.network &&
          originating_account_number == o.originating_account_number &&
          receiver == o.receiver &&
          receiving_account_id == o.receiving_account_id &&
          receiving_account_number == o.receiving_account_number &&
          recipient_message == o.recipient_message &&
          return_data == o.return_data &&
          return_reason == o.return_reason &&
          sender == o.sender &&
          sender_reference_id == o.sender_reference_id &&
          status == o.status &&
          tenant == o.tenant &&
          transaction_id == o.transaction_id &&
          type_subtype == o.type_subtype
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, amount, bank_message, creation_time, currency, customer_id, decline_reason, id, input_message_accountability_data, is_return, network, originating_account_number, receiver, receiving_account_id, receiving_account_number, recipient_message, return_data, return_reason, sender, sender_reference_id, status, tenant, transaction_id, type_subtype].hash
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