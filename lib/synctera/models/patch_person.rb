=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.108.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  # Properties of a person that can be updated
  class PatchPerson
    attr_accessor :ban_status

    # Person's chosen name.
    attr_accessor :chosen_name

    # The date and time the resource was created.
    attr_accessor :creation_time

    # Person's date of birth in RFC 3339 full-date format (YYYY-MM-DD). Must be on or after 1900-01-01 and before current date.
    attr_accessor :dob

    # Person's email.
    attr_accessor :email

    # Person's first name.
    attr_accessor :first_name

    # This flag indicates whether the person or business has accounts.
    attr_accessor :has_accounts

    # Person's unique identifier.
    attr_accessor :id

    # True for personal and business customers with a direct relationship with the fintech or bank. Set this to true for any customer related to an account. 
    attr_accessor :is_customer

    # Person's last name.
    attr_accessor :last_name

    # The date and time the resource was last updated.
    attr_accessor :last_updated_time

    attr_accessor :legal_address

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # Person's middle name.
    attr_accessor :middle_name

    # Person's mobile phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated
    attr_accessor :phone_number

    attr_accessor :shipping_address

    # Person's full tax ID eg SSN formatted with hyphens. The response contains the last 4 digits only (e.g. 6789).
    attr_accessor :ssn

    attr_accessor :ssn_source

    attr_accessor :status

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # Date and time KYC verification was last run on the person.
    attr_accessor :verification_last_run

    attr_accessor :verification_status

    # Text to be added to a note when updating a person. A note is required when changing a person's ban_status between SUSPENDED and ALLOWED.
    attr_accessor :note

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
        :'ban_status' => :'ban_status',
        :'chosen_name' => :'chosen_name',
        :'creation_time' => :'creation_time',
        :'dob' => :'dob',
        :'email' => :'email',
        :'first_name' => :'first_name',
        :'has_accounts' => :'has_accounts',
        :'id' => :'id',
        :'is_customer' => :'is_customer',
        :'last_name' => :'last_name',
        :'last_updated_time' => :'last_updated_time',
        :'legal_address' => :'legal_address',
        :'metadata' => :'metadata',
        :'middle_name' => :'middle_name',
        :'phone_number' => :'phone_number',
        :'shipping_address' => :'shipping_address',
        :'ssn' => :'ssn',
        :'ssn_source' => :'ssn_source',
        :'status' => :'status',
        :'tenant' => :'tenant',
        :'verification_last_run' => :'verification_last_run',
        :'verification_status' => :'verification_status',
        :'note' => :'note'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ban_status' => :'BanStatus',
        :'chosen_name' => :'String',
        :'creation_time' => :'Time',
        :'dob' => :'Date',
        :'email' => :'String',
        :'first_name' => :'String',
        :'has_accounts' => :'Boolean',
        :'id' => :'String',
        :'is_customer' => :'Boolean',
        :'last_name' => :'String',
        :'last_updated_time' => :'Time',
        :'legal_address' => :'LegalAddress',
        :'metadata' => :'Object',
        :'middle_name' => :'String',
        :'phone_number' => :'String',
        :'shipping_address' => :'ShippingAddress',
        :'ssn' => :'String',
        :'ssn_source' => :'SsnSource',
        :'status' => :'PersonStatus',
        :'tenant' => :'String',
        :'verification_last_run' => :'Time',
        :'verification_status' => :'VerificationStatus',
        :'note' => :'String'
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
      :'BasePerson'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PatchPerson` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PatchPerson`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ban_status')
        self.ban_status = attributes[:'ban_status']
      end

      if attributes.key?(:'chosen_name')
        self.chosen_name = attributes[:'chosen_name']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'has_accounts')
        self.has_accounts = attributes[:'has_accounts']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_customer')
        self.is_customer = attributes[:'is_customer']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'legal_address')
        self.legal_address = attributes[:'legal_address']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.key?(:'ssn')
        self.ssn = attributes[:'ssn']
      end

      if attributes.key?(:'ssn_source')
        self.ssn_source = attributes[:'ssn_source']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'verification_last_run')
        self.verification_last_run = attributes[:'verification_last_run']
      end

      if attributes.key?(:'verification_status')
        self.verification_status = attributes[:'verification_status']
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^\+[1-9]\d{1,14}$/)
      if !@phone_number.nil? && @phone_number !~ pattern
        invalid_properties.push("invalid value for \"phone_number\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\+[1-9]\d{1,14}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if phone_number.nil?
        fail ArgumentError, 'phone_number cannot be nil'
      end

      pattern = Regexp.new(/^\+[1-9]\d{1,14}$/)
      if phone_number !~ pattern
        fail ArgumentError, "invalid value for \"phone_number\", must conform to the pattern #{pattern}."
      end

      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ban_status == o.ban_status &&
          chosen_name == o.chosen_name &&
          creation_time == o.creation_time &&
          dob == o.dob &&
          email == o.email &&
          first_name == o.first_name &&
          has_accounts == o.has_accounts &&
          id == o.id &&
          is_customer == o.is_customer &&
          last_name == o.last_name &&
          last_updated_time == o.last_updated_time &&
          legal_address == o.legal_address &&
          metadata == o.metadata &&
          middle_name == o.middle_name &&
          phone_number == o.phone_number &&
          shipping_address == o.shipping_address &&
          ssn == o.ssn &&
          ssn_source == o.ssn_source &&
          status == o.status &&
          tenant == o.tenant &&
          verification_last_run == o.verification_last_run &&
          verification_status == o.verification_status &&
          note == o.note
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ban_status, chosen_name, creation_time, dob, email, first_name, has_accounts, id, is_customer, last_name, last_updated_time, legal_address, metadata, middle_name, phone_number, shipping_address, ssn, ssn_source, status, tenant, verification_last_run, verification_status, note].hash
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
