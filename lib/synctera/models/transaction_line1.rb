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
  class TransactionLine1
    # The account uuid associated with this transaction line
    attr_accessor :account_id

    # The account number associated with this transaction line
    attr_accessor :account_no

    # The amount (in cents) of the transaction
    attr_accessor :amount

    # The account \"available balance\" at the point in time this (to be deprecated) transaction was posted
    attr_accessor :avail_balance

    # The account \"available balance\" at the point in time this transaction was posted
    attr_accessor :available_balance

    # The account balance at the point in time this transaction was posted
    attr_accessor :balance

    # The creation date of the transaction
    attr_accessor :created

    # ISO 4217 alphabetic currency code of the transfer amount
    attr_accessor :currency

    attr_accessor :dc_sign

    # Whether or not this line is considered a fee
    attr_accessor :is_fee

    # Whether or not this line represents a GL account
    attr_accessor :is_gl_acc

    # Whether or not this line is considered the \"offset\" line
    attr_accessor :is_offset

    # Whether or not this line is considered the \"primary\" line
    attr_accessor :is_primary

    attr_accessor :meta

    # The network this transaction is associated with
    attr_accessor :network

    attr_accessor :related_line

    attr_accessor :seq

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # The date the transaction was last updated
    attr_accessor :updated

    attr_accessor :uuid

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
        :'account_no' => :'account_no',
        :'amount' => :'amount',
        :'avail_balance' => :'avail_balance',
        :'available_balance' => :'available_balance',
        :'balance' => :'balance',
        :'created' => :'created',
        :'currency' => :'currency',
        :'dc_sign' => :'dc_sign',
        :'is_fee' => :'is_fee',
        :'is_gl_acc' => :'is_gl_acc',
        :'is_offset' => :'is_offset',
        :'is_primary' => :'is_primary',
        :'meta' => :'meta',
        :'network' => :'network',
        :'related_line' => :'related_line',
        :'seq' => :'seq',
        :'tenant' => :'tenant',
        :'updated' => :'updated',
        :'uuid' => :'uuid'
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
        :'account_no' => :'String',
        :'amount' => :'Integer',
        :'avail_balance' => :'Integer',
        :'available_balance' => :'Integer',
        :'balance' => :'Integer',
        :'created' => :'Time',
        :'currency' => :'String',
        :'dc_sign' => :'DcSign',
        :'is_fee' => :'Boolean',
        :'is_gl_acc' => :'Boolean',
        :'is_offset' => :'Boolean',
        :'is_primary' => :'Boolean',
        :'meta' => :'Object',
        :'network' => :'String',
        :'related_line' => :'Integer',
        :'seq' => :'Integer',
        :'tenant' => :'String',
        :'updated' => :'Time',
        :'uuid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'meta',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::TransactionLine1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::TransactionLine1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      else
        self.account_id = nil
      end

      if attributes.key?(:'account_no')
        self.account_no = attributes[:'account_no']
      else
        self.account_no = nil
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
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

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      else
        self.created = nil
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

      if attributes.key?(:'is_fee')
        self.is_fee = attributes[:'is_fee']
      else
        self.is_fee = nil
      end

      if attributes.key?(:'is_gl_acc')
        self.is_gl_acc = attributes[:'is_gl_acc']
      else
        self.is_gl_acc = nil
      end

      if attributes.key?(:'is_offset')
        self.is_offset = attributes[:'is_offset']
      else
        self.is_offset = nil
      end

      if attributes.key?(:'is_primary')
        self.is_primary = attributes[:'is_primary']
      else
        self.is_primary = nil
      end

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      else
        self.meta = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      else
        self.network = nil
      end

      if attributes.key?(:'related_line')
        self.related_line = attributes[:'related_line']
      else
        self.related_line = nil
      end

      if attributes.key?(:'seq')
        self.seq = attributes[:'seq']
      else
        self.seq = nil
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      else
        self.tenant = nil
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      else
        self.updated = nil
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      else
        self.uuid = nil
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

      if @account_no.nil?
        invalid_properties.push('invalid value for "account_no", account_no cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
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

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @dc_sign.nil?
        invalid_properties.push('invalid value for "dc_sign", dc_sign cannot be nil.')
      end

      if @is_fee.nil?
        invalid_properties.push('invalid value for "is_fee", is_fee cannot be nil.')
      end

      if @is_gl_acc.nil?
        invalid_properties.push('invalid value for "is_gl_acc", is_gl_acc cannot be nil.')
      end

      if @is_offset.nil?
        invalid_properties.push('invalid value for "is_offset", is_offset cannot be nil.')
      end

      if @is_primary.nil?
        invalid_properties.push('invalid value for "is_primary", is_primary cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @related_line.nil?
        invalid_properties.push('invalid value for "related_line", related_line cannot be nil.')
      end

      if @seq.nil?
        invalid_properties.push('invalid value for "seq", seq cannot be nil.')
      end

      if @tenant.nil?
        invalid_properties.push('invalid value for "tenant", tenant cannot be nil.')
      end

      if @updated.nil?
        invalid_properties.push('invalid value for "updated", updated cannot be nil.')
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_id.nil?
      return false if @account_no.nil?
      return false if @amount.nil?
      return false if @avail_balance.nil?
      return false if @available_balance.nil?
      return false if @balance.nil?
      return false if @created.nil?
      return false if @currency.nil?
      return false if @dc_sign.nil?
      return false if @is_fee.nil?
      return false if @is_gl_acc.nil?
      return false if @is_offset.nil?
      return false if @is_primary.nil?
      return false if @network.nil?
      return false if @related_line.nil?
      return false if @seq.nil?
      return false if @tenant.nil?
      return false if @updated.nil?
      return false if @uuid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          account_no == o.account_no &&
          amount == o.amount &&
          avail_balance == o.avail_balance &&
          available_balance == o.available_balance &&
          balance == o.balance &&
          created == o.created &&
          currency == o.currency &&
          dc_sign == o.dc_sign &&
          is_fee == o.is_fee &&
          is_gl_acc == o.is_gl_acc &&
          is_offset == o.is_offset &&
          is_primary == o.is_primary &&
          meta == o.meta &&
          network == o.network &&
          related_line == o.related_line &&
          seq == o.seq &&
          tenant == o.tenant &&
          updated == o.updated &&
          uuid == o.uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, account_no, amount, avail_balance, available_balance, balance, created, currency, dc_sign, is_fee, is_gl_acc, is_offset, is_primary, meta, network, related_line, seq, tenant, updated, uuid].hash
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
