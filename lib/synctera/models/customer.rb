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
  # Details of a customer
  class Customer
    # All of the customer's addresses
    attr_accessor :addresses

    attr_accessor :ban_status

    # The date and time the resource was created.
    attr_accessor :creation_time

    # Customer's email
    attr_accessor :email

    # This flag indicates whether the person or business has accounts.
    attr_accessor :has_accounts

    # Customer unique identifier
    attr_accessor :id

    # Customer's KYC exemption
    attr_accessor :kyc_exempt

    # Date and time KYC was last run on the customer
    attr_accessor :kyc_last_run

    attr_accessor :kyc_status

    # The date and time the resource was last updated.
    attr_accessor :last_updated_time

    attr_accessor :legal_address

    # User-supplied metadata. Do not use to store PII.
    attr_accessor :metadata

    # Customer's middle name
    attr_accessor :middle_name

    # Add an optional note when creating or updating a customer. A note is required when updating a customers's ban_status between SUSPENDED and ALLOWED.
    attr_accessor :note

    # Customer's mobile phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated.
    attr_accessor :phone_number

    # Customer's relationships with other accounts eg. guardian. This property is no longer supported. Setting it will return an error.
    attr_accessor :related_customers

    attr_accessor :shipping_address

    # Customer's full tax ID eg SSN formatted with hyphens. This optional parameter is required when running KYC on a customer. Input must match the pattern ^\\d{3}-\\d{2}-\\d{4}$. The response contains the last 4 digits only (e.g. 6789).
    attr_accessor :ssn

    attr_accessor :ssn_source

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # Customer's date of birth in RFC 3339 full-date format (YYYY-MM-DD). Must be on or after 1900-01-01 and before current date.
    attr_accessor :dob

    # Customer's first name
    attr_accessor :first_name

    # Customer's last name
    attr_accessor :last_name

    # Customer's status
    attr_accessor :status

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
        :'addresses' => :'addresses',
        :'ban_status' => :'ban_status',
        :'creation_time' => :'creation_time',
        :'email' => :'email',
        :'has_accounts' => :'has_accounts',
        :'id' => :'id',
        :'kyc_exempt' => :'kyc_exempt',
        :'kyc_last_run' => :'kyc_last_run',
        :'kyc_status' => :'kyc_status',
        :'last_updated_time' => :'last_updated_time',
        :'legal_address' => :'legal_address',
        :'metadata' => :'metadata',
        :'middle_name' => :'middle_name',
        :'note' => :'note',
        :'phone_number' => :'phone_number',
        :'related_customers' => :'related_customers',
        :'shipping_address' => :'shipping_address',
        :'ssn' => :'ssn',
        :'ssn_source' => :'ssn_source',
        :'tenant' => :'tenant',
        :'dob' => :'dob',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'addresses' => :'Array<Address>',
        :'ban_status' => :'BanStatus',
        :'creation_time' => :'Time',
        :'email' => :'String',
        :'has_accounts' => :'Boolean',
        :'id' => :'String',
        :'kyc_exempt' => :'Boolean',
        :'kyc_last_run' => :'Time',
        :'kyc_status' => :'CustomerKycStatus',
        :'last_updated_time' => :'Time',
        :'legal_address' => :'LegalAddress',
        :'metadata' => :'Object',
        :'middle_name' => :'String',
        :'note' => :'String',
        :'phone_number' => :'String',
        :'related_customers' => :'Array<Relationship>',
        :'shipping_address' => :'ShippingAddress',
        :'ssn' => :'String',
        :'ssn_source' => :'SsnSource',
        :'tenant' => :'String',
        :'dob' => :'Date',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'status' => :'String'
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
      :'BaseCustomer'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Customer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Customer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'ban_status')
        self.ban_status = attributes[:'ban_status']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'has_accounts')
        self.has_accounts = attributes[:'has_accounts']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'kyc_exempt')
        self.kyc_exempt = attributes[:'kyc_exempt']
      end

      if attributes.key?(:'kyc_last_run')
        self.kyc_last_run = attributes[:'kyc_last_run']
      end

      if attributes.key?(:'kyc_status')
        self.kyc_status = attributes[:'kyc_status']
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

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'related_customers')
        if (value = attributes[:'related_customers']).is_a?(Array)
          self.related_customers = value
        end
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

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
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

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\+[1-9]\d{1,14}$/)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "DECEASED", "DENIED", "DORMANT", "ESCHEAT", "FROZEN", "INACTIVE", "PROSPECT", "SANCTION"])
      return false unless status_validator.valid?(@status)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "DECEASED", "DENIED", "DORMANT", "ESCHEAT", "FROZEN", "INACTIVE", "PROSPECT", "SANCTION"])
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
          addresses == o.addresses &&
          ban_status == o.ban_status &&
          creation_time == o.creation_time &&
          email == o.email &&
          has_accounts == o.has_accounts &&
          id == o.id &&
          kyc_exempt == o.kyc_exempt &&
          kyc_last_run == o.kyc_last_run &&
          kyc_status == o.kyc_status &&
          last_updated_time == o.last_updated_time &&
          legal_address == o.legal_address &&
          metadata == o.metadata &&
          middle_name == o.middle_name &&
          note == o.note &&
          phone_number == o.phone_number &&
          related_customers == o.related_customers &&
          shipping_address == o.shipping_address &&
          ssn == o.ssn &&
          ssn_source == o.ssn_source &&
          tenant == o.tenant &&
          dob == o.dob &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [addresses, ban_status, creation_time, email, has_accounts, id, kyc_exempt, kyc_last_run, kyc_status, last_updated_time, legal_address, metadata, middle_name, note, phone_number, related_customers, shipping_address, ssn, ssn_source, tenant, dob, first_name, last_name, status].hash
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
