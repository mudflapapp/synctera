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
  # Represents a sent ACH transaction.
  class OutgoingAch
    # Receiving account uuid. This links to the external account resource (represented by 'receiving_account_id' in the request to send outgoing ACH).
    attr_accessor :account_id

    # Receiving account name
    attr_accessor :account_name

    # Receiving account number
    attr_accessor :account_no

    # Transaction amount in cents
    attr_accessor :amount

    attr_accessor :bank_id

    # Company Entry Description field in ACH batch header. Originator inserts this field's value to provide the Receiver with a description of the entry's purpose.
    attr_accessor :company_entry_description

    # Company Name field in ACH batch header.
    attr_accessor :company_name

    # Effective date of the transaction
    attr_accessor :effective_date

    # Transaction ID in the ledger
    attr_accessor :external_id

    attr_accessor :hold

    attr_accessor :id

    # ID of the linked incoming ACH entry. This is filled only for outgoing ACH entries that are returns and links to the originally received incoming entry.
    attr_accessor :incoming_ach_id

    # Was initiated as same-day ACH transaction
    attr_accessor :is_same_day

    attr_accessor :memo

    attr_accessor :partner_id

    # Transaction reference info
    attr_accessor :reference_info

    attr_accessor :return_data

    # Originating account uuid. This links to the customer account on Synctera platform (represented by 'originating_account_id' in the request to send outgoing ACH).
    attr_accessor :source_account_id

    # Originating account name
    attr_accessor :source_account_name

    # Originating account number
    attr_accessor :source_account_no

    attr_accessor :status

    # Trace number of the transaction
    attr_accessor :trace_no

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
        :'account_name' => :'account_name',
        :'account_no' => :'account_no',
        :'amount' => :'amount',
        :'bank_id' => :'bank_id',
        :'company_entry_description' => :'company_entry_description',
        :'company_name' => :'company_name',
        :'effective_date' => :'effective_date',
        :'external_id' => :'external_id',
        :'hold' => :'hold',
        :'id' => :'id',
        :'incoming_ach_id' => :'incoming_ach_id',
        :'is_same_day' => :'is_same_day',
        :'memo' => :'memo',
        :'partner_id' => :'partner_id',
        :'reference_info' => :'reference_info',
        :'return_data' => :'return_data',
        :'source_account_id' => :'source_account_id',
        :'source_account_name' => :'source_account_name',
        :'source_account_no' => :'source_account_no',
        :'status' => :'status',
        :'trace_no' => :'trace_no'
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
        :'account_name' => :'String',
        :'account_no' => :'String',
        :'amount' => :'Integer',
        :'bank_id' => :'Integer',
        :'company_entry_description' => :'String',
        :'company_name' => :'String',
        :'effective_date' => :'Date',
        :'external_id' => :'String',
        :'hold' => :'HoldData',
        :'id' => :'String',
        :'incoming_ach_id' => :'String',
        :'is_same_day' => :'Boolean',
        :'memo' => :'String',
        :'partner_id' => :'Integer',
        :'reference_info' => :'String',
        :'return_data' => :'ReturnData',
        :'source_account_id' => :'String',
        :'source_account_name' => :'String',
        :'source_account_no' => :'String',
        :'status' => :'String',
        :'trace_no' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::OutgoingAch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::OutgoingAch`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
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

      if attributes.key?(:'bank_id')
        self.bank_id = attributes[:'bank_id']
      else
        self.bank_id = nil
      end

      if attributes.key?(:'company_entry_description')
        self.company_entry_description = attributes[:'company_entry_description']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'effective_date')
        self.effective_date = attributes[:'effective_date']
      else
        self.effective_date = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'hold')
        self.hold = attributes[:'hold']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'incoming_ach_id')
        self.incoming_ach_id = attributes[:'incoming_ach_id']
      end

      if attributes.key?(:'is_same_day')
        self.is_same_day = attributes[:'is_same_day']
      else
        self.is_same_day = nil
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      else
        self.memo = nil
      end

      if attributes.key?(:'partner_id')
        self.partner_id = attributes[:'partner_id']
      else
        self.partner_id = nil
      end

      if attributes.key?(:'reference_info')
        self.reference_info = attributes[:'reference_info']
      end

      if attributes.key?(:'return_data')
        self.return_data = attributes[:'return_data']
      end

      if attributes.key?(:'source_account_id')
        self.source_account_id = attributes[:'source_account_id']
      end

      if attributes.key?(:'source_account_name')
        self.source_account_name = attributes[:'source_account_name']
      end

      if attributes.key?(:'source_account_no')
        self.source_account_no = attributes[:'source_account_no']
      else
        self.source_account_no = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'trace_no')
        self.trace_no = attributes[:'trace_no']
      else
        self.trace_no = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_no.nil?
        invalid_properties.push('invalid value for "account_no", account_no cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @bank_id.nil?
        invalid_properties.push('invalid value for "bank_id", bank_id cannot be nil.')
      end

      if @effective_date.nil?
        invalid_properties.push('invalid value for "effective_date", effective_date cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @is_same_day.nil?
        invalid_properties.push('invalid value for "is_same_day", is_same_day cannot be nil.')
      end

      if @memo.nil?
        invalid_properties.push('invalid value for "memo", memo cannot be nil.')
      end

      if @partner_id.nil?
        invalid_properties.push('invalid value for "partner_id", partner_id cannot be nil.')
      end

      if @source_account_no.nil?
        invalid_properties.push('invalid value for "source_account_no", source_account_no cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @trace_no.nil?
        invalid_properties.push('invalid value for "trace_no", trace_no cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_no.nil?
      return false if @amount.nil?
      return false if @bank_id.nil?
      return false if @effective_date.nil?
      return false if @external_id.nil?
      return false if @id.nil?
      return false if @is_same_day.nil?
      return false if @memo.nil?
      return false if @partner_id.nil?
      return false if @source_account_no.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["CANCELED", "COMPLETE", "DECLINED", "INIT", "PENDING"])
      return false unless status_validator.valid?(@status)
      return false if @trace_no.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["CANCELED", "COMPLETE", "DECLINED", "INIT", "PENDING"])
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
          account_name == o.account_name &&
          account_no == o.account_no &&
          amount == o.amount &&
          bank_id == o.bank_id &&
          company_entry_description == o.company_entry_description &&
          company_name == o.company_name &&
          effective_date == o.effective_date &&
          external_id == o.external_id &&
          hold == o.hold &&
          id == o.id &&
          incoming_ach_id == o.incoming_ach_id &&
          is_same_day == o.is_same_day &&
          memo == o.memo &&
          partner_id == o.partner_id &&
          reference_info == o.reference_info &&
          return_data == o.return_data &&
          source_account_id == o.source_account_id &&
          source_account_name == o.source_account_name &&
          source_account_no == o.source_account_no &&
          status == o.status &&
          trace_no == o.trace_no
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, account_name, account_no, amount, bank_id, company_entry_description, company_name, effective_date, external_id, hold, id, incoming_ach_id, is_same_day, memo, partner_id, reference_info, return_data, source_account_id, source_account_name, source_account_no, status, trace_no].hash
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
