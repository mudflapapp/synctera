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
  class AddVendorAccountsRequest
    # The identifier for the business customer associated with this external account. Exactly one of `business_id` or `customer_id` must be specified. 
    attr_accessor :business_id

    # The identifier for the personal customer associated with this external account. Exactly one of `customer_id` or `business_id` must be specified. 
    attr_accessor :customer_id

    attr_accessor :customer_type

    attr_accessor :vendor

    # The token provided to link external accounts. For Plaid, this is their `access_token`. 
    attr_accessor :vendor_access_token

    # The list of vendor account IDs that the customer chose to link. For Plaid, these are `account_id`s. 
    attr_accessor :vendor_account_ids

    # The identifier provided by the vendor for the customer associated with this external account. 
    attr_accessor :vendor_customer_id

    # If true, Synctera will attempt to verify that the external account owner is the same as the customer by comparing external account data to customer data. At least 2 of the following fields must match: name, phone number, email, address. Verification is disabled by default. 
    attr_accessor :verify_owner

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
        :'business_id' => :'business_id',
        :'customer_id' => :'customer_id',
        :'customer_type' => :'customer_type',
        :'vendor' => :'vendor',
        :'vendor_access_token' => :'vendor_access_token',
        :'vendor_account_ids' => :'vendor_account_ids',
        :'vendor_customer_id' => :'vendor_customer_id',
        :'verify_owner' => :'verify_owner'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'business_id' => :'String',
        :'customer_id' => :'String',
        :'customer_type' => :'ExtAccountCustomerType',
        :'vendor' => :'ExternalAccountVendorValues',
        :'vendor_access_token' => :'String',
        :'vendor_account_ids' => :'Array<String>',
        :'vendor_customer_id' => :'String',
        :'verify_owner' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::AddVendorAccountsRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::AddVendorAccountsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'customer_type')
        self.customer_type = attributes[:'customer_type']
      else
        self.customer_type = nil
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      else
        self.vendor = nil
      end

      if attributes.key?(:'vendor_access_token')
        self.vendor_access_token = attributes[:'vendor_access_token']
      end

      if attributes.key?(:'vendor_account_ids')
        if (value = attributes[:'vendor_account_ids']).is_a?(Array)
          self.vendor_account_ids = value
        end
      end

      if attributes.key?(:'vendor_customer_id')
        self.vendor_customer_id = attributes[:'vendor_customer_id']
      end

      if attributes.key?(:'verify_owner')
        self.verify_owner = attributes[:'verify_owner']
      else
        self.verify_owner = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @customer_type.nil?
        invalid_properties.push('invalid value for "customer_type", customer_type cannot be nil.')
      end

      if @vendor.nil?
        invalid_properties.push('invalid value for "vendor", vendor cannot be nil.')
      end

      if !@vendor_access_token.nil? && @vendor_access_token.to_s.length < 1
        invalid_properties.push('invalid value for "vendor_access_token", the character length must be great than or equal to 1.')
      end

      if !@vendor_account_ids.nil? && @vendor_account_ids.length < 1
        invalid_properties.push('invalid value for "vendor_account_ids", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @customer_type.nil?
      return false if @vendor.nil?
      return false if !@vendor_access_token.nil? && @vendor_access_token.to_s.length < 1
      return false if !@vendor_account_ids.nil? && @vendor_account_ids.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_access_token Value to be assigned
    def vendor_access_token=(vendor_access_token)
      if vendor_access_token.nil?
        fail ArgumentError, 'vendor_access_token cannot be nil'
      end

      if vendor_access_token.to_s.length < 1
        fail ArgumentError, 'invalid value for "vendor_access_token", the character length must be great than or equal to 1.'
      end

      @vendor_access_token = vendor_access_token
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_account_ids Value to be assigned
    def vendor_account_ids=(vendor_account_ids)
      if vendor_account_ids.nil?
        fail ArgumentError, 'vendor_account_ids cannot be nil'
      end

      if vendor_account_ids.length < 1
        fail ArgumentError, 'invalid value for "vendor_account_ids", number of items must be greater than or equal to 1.'
      end

      @vendor_account_ids = vendor_account_ids
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          business_id == o.business_id &&
          customer_id == o.customer_id &&
          customer_type == o.customer_type &&
          vendor == o.vendor &&
          vendor_access_token == o.vendor_access_token &&
          vendor_account_ids == o.vendor_account_ids &&
          vendor_customer_id == o.vendor_customer_id &&
          verify_owner == o.verify_owner
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [business_id, customer_id, customer_type, vendor, vendor_access_token, vendor_account_ids, vendor_customer_id, verify_owner].hash
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
