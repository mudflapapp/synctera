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
  class BaseStatement
    # The unique identifier of the account the statement belongs to
    attr_accessor :account_id

    # The limit date when the due amount indicated on the statement should be paid
    attr_accessor :due_date

    # The date indicating the ending of the time interval covered by the statement
    attr_accessor :end_date

    # statement ID
    attr_accessor :id

    # The date when the statement has been issued
    attr_accessor :issue_date

    # The date indicating the beginning of the time interval covered by the statement
    attr_accessor :start_date

    attr_accessor :account_summary

    attr_accessor :authorized_signer

    # The account balance at the end of the statement period, in ISO 4217 minor currency units.
    attr_accessor :closing_balance

    attr_accessor :customer_service_details

    attr_accessor :disclosure

    attr_accessor :joint_account_holders

    # The account balance at the start of the statement period, in ISO 4217 minor currency units.
    attr_accessor :opening_balance

    attr_accessor :primary_account_holder_business

    attr_accessor :primary_account_holder_personal

    # This attribute is deprecated and will be removed in a future API version. Use `GET /v0/statements/{statement_id}/transactions` instead. 
    attr_accessor :transactions

    # Only appears in `statement.created` webhook payloads. Indicates that the `transactions` attribute was emptied due to webhook size constraints. If this attribute returns `true`, you may use  `GET /v0/statements/{statement_id}/transactions` to retrieve the full list. 
    attr_accessor :transactions_omitted

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'due_date' => :'due_date',
        :'end_date' => :'end_date',
        :'id' => :'id',
        :'issue_date' => :'issue_date',
        :'start_date' => :'start_date',
        :'account_summary' => :'account_summary',
        :'authorized_signer' => :'authorized_signer',
        :'closing_balance' => :'closing_balance',
        :'customer_service_details' => :'customer_service_details',
        :'disclosure' => :'disclosure',
        :'joint_account_holders' => :'joint_account_holders',
        :'opening_balance' => :'opening_balance',
        :'primary_account_holder_business' => :'primary_account_holder_business',
        :'primary_account_holder_personal' => :'primary_account_holder_personal',
        :'transactions' => :'transactions',
        :'transactions_omitted' => :'transactions_omitted'
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
        :'due_date' => :'Date',
        :'end_date' => :'Date',
        :'id' => :'String',
        :'issue_date' => :'Date',
        :'start_date' => :'Date',
        :'account_summary' => :'AccountSummary',
        :'authorized_signer' => :'Array<Person>',
        :'closing_balance' => :'Integer',
        :'customer_service_details' => :'CustomerServiceDetails',
        :'disclosure' => :'String',
        :'joint_account_holders' => :'Array<Person>',
        :'opening_balance' => :'Integer',
        :'primary_account_holder_business' => :'Business1',
        :'primary_account_holder_personal' => :'Person',
        :'transactions' => :'Array<Transaction>',
        :'transactions_omitted' => :'Boolean'
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
      :'StatementSummary'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::BaseStatement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::BaseStatement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'account_summary')
        self.account_summary = attributes[:'account_summary']
      end

      if attributes.key?(:'authorized_signer')
        if (value = attributes[:'authorized_signer']).is_a?(Array)
          self.authorized_signer = value
        end
      end

      if attributes.key?(:'closing_balance')
        self.closing_balance = attributes[:'closing_balance']
      end

      if attributes.key?(:'customer_service_details')
        self.customer_service_details = attributes[:'customer_service_details']
      end

      if attributes.key?(:'disclosure')
        self.disclosure = attributes[:'disclosure']
      end

      if attributes.key?(:'joint_account_holders')
        if (value = attributes[:'joint_account_holders']).is_a?(Array)
          self.joint_account_holders = value
        end
      end

      if attributes.key?(:'opening_balance')
        self.opening_balance = attributes[:'opening_balance']
      end

      if attributes.key?(:'primary_account_holder_business')
        self.primary_account_holder_business = attributes[:'primary_account_holder_business']
      end

      if attributes.key?(:'primary_account_holder_personal')
        self.primary_account_holder_personal = attributes[:'primary_account_holder_personal']
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end

      if attributes.key?(:'transactions_omitted')
        self.transactions_omitted = attributes[:'transactions_omitted']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          due_date == o.due_date &&
          end_date == o.end_date &&
          id == o.id &&
          issue_date == o.issue_date &&
          start_date == o.start_date &&
          account_summary == o.account_summary &&
          authorized_signer == o.authorized_signer &&
          closing_balance == o.closing_balance &&
          customer_service_details == o.customer_service_details &&
          disclosure == o.disclosure &&
          joint_account_holders == o.joint_account_holders &&
          opening_balance == o.opening_balance &&
          primary_account_holder_business == o.primary_account_holder_business &&
          primary_account_holder_personal == o.primary_account_holder_personal &&
          transactions == o.transactions &&
          transactions_omitted == o.transactions_omitted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, due_date, end_date, id, issue_date, start_date, account_summary, authorized_signer, closing_balance, customer_service_details, disclosure, joint_account_holders, opening_balance, primary_account_holder_business, primary_account_holder_personal, transactions, transactions_omitted].hash
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
