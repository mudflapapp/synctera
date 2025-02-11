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
  # Represents a business customer.
  class Business
    # All of the customer's addresses
    attr_accessor :addresses

    # The types of compliance that the business needs to adhere to * `LICENSED_CANNABIS` – A type of compliance restriction where the business would need a cannabis license in order to operate. 
    attr_accessor :compliance_restrictions

    # The date and time the resource was created.
    attr_accessor :creation_time

    # U.S. Employer Identification Number (EIN) for this business, in the format xx-xxxxxxx.
    attr_accessor :ein

    # Business's email.
    attr_accessor :email

    # Business's legal name.
    attr_accessor :entity_name

    # Date the business was legally registered in RFC 3339 full-date format (YYYY-MM-DD).
    attr_accessor :formation_date

    # U.S. state where the business is legally registered (2-letter abbreviation).
    attr_accessor :formation_state

    # This flag indicates whether the person or business has accounts.
    attr_accessor :has_accounts

    # Business's unique identifier.
    attr_accessor :id

    # True for personal and business customers with a direct relationship with the fintech or bank. Set this to true for any customer related to an account. 
    attr_accessor :is_customer

    # The date and time the resource was last updated.
    attr_accessor :last_updated_time

    attr_accessor :legal_address

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # Business's phone number with country code in E.164 format. Must have a valid country code. Area code and local phone number are not validated.
    attr_accessor :phone_number

    # Status of the business. One of the following: * `PROSPECT` – a potential customer, used for information-gathering and disclosures. * `ACTIVE` –  is an integrator defined status.  Integrators should set a business to active if they believe the person to be qualified for conducting business.  Synctera will combine this status with other statuses such a verification to determine if the business is eligible for specific actions such as initiating transactions or issuing a card. * `FROZEN` – business's actions are blocked for security, legal, or other reasons. * `SANCTION` – business is on a sanctions list and should be carefully monitored. * `DISSOLVED` – an inactive status indicating a business entity has filed articles of dissolution or a certificate of termination to terminate its existence. * `CANCELLED` – an inactive status indicating that a business entity has filed a cancellation or has failed to file its periodic report after notice of forfeiture of its rights to do business. * `SUSPENDED` – an inactive status indicating that the business entity has lost the right to operate in it's registered jurisdiction. * `MERGED` – an inactive status indicating that the business entity has terminated existence by merging into another entity. * `INACTIVE` – an inactive status indicating that the business entity is no longer active. * `CONVERTED` – An inactive status indicating that the business entity has been converted to another type of business entity in the same jurisdiction. 
    attr_accessor :status

    # Business's legal structure.
    attr_accessor :structure

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    # All registered 'doing business as' (DBA) or trade names for this business.
    attr_accessor :trade_names

    # Date and time KYB verification was last run on the business.
    attr_accessor :verification_last_run

    attr_accessor :verification_status

    # Business's website.
    attr_accessor :website

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
        :'compliance_restrictions' => :'compliance_restrictions',
        :'creation_time' => :'creation_time',
        :'ein' => :'ein',
        :'email' => :'email',
        :'entity_name' => :'entity_name',
        :'formation_date' => :'formation_date',
        :'formation_state' => :'formation_state',
        :'has_accounts' => :'has_accounts',
        :'id' => :'id',
        :'is_customer' => :'is_customer',
        :'last_updated_time' => :'last_updated_time',
        :'legal_address' => :'legal_address',
        :'metadata' => :'metadata',
        :'phone_number' => :'phone_number',
        :'status' => :'status',
        :'structure' => :'structure',
        :'tenant' => :'tenant',
        :'trade_names' => :'trade_names',
        :'verification_last_run' => :'verification_last_run',
        :'verification_status' => :'verification_status',
        :'website' => :'website'
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
        :'compliance_restrictions' => :'Array<String>',
        :'creation_time' => :'Time',
        :'ein' => :'String',
        :'email' => :'String',
        :'entity_name' => :'String',
        :'formation_date' => :'Date',
        :'formation_state' => :'String',
        :'has_accounts' => :'Boolean',
        :'id' => :'String',
        :'is_customer' => :'Boolean',
        :'last_updated_time' => :'Time',
        :'legal_address' => :'LegalAddress',
        :'metadata' => :'Object',
        :'phone_number' => :'String',
        :'status' => :'String',
        :'structure' => :'String',
        :'tenant' => :'String',
        :'trade_names' => :'Array<String>',
        :'verification_last_run' => :'Time',
        :'verification_status' => :'VerificationStatus',
        :'website' => :'String'
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
      :'Base'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Business` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Business`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'compliance_restrictions')
        if (value = attributes[:'compliance_restrictions']).is_a?(Array)
          self.compliance_restrictions = value
        end
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'ein')
        self.ein = attributes[:'ein']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'entity_name')
        self.entity_name = attributes[:'entity_name']
      end

      if attributes.key?(:'formation_date')
        self.formation_date = attributes[:'formation_date']
      end

      if attributes.key?(:'formation_state')
        self.formation_state = attributes[:'formation_state']
      end

      if attributes.key?(:'has_accounts')
        self.has_accounts = attributes[:'has_accounts']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_customer')
        self.is_customer = attributes[:'is_customer']
      else
        self.is_customer = nil
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

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'structure')
        self.structure = attributes[:'structure']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'trade_names')
        if (value = attributes[:'trade_names']).is_a?(Array)
          self.trade_names = value
        end
      end

      if attributes.key?(:'verification_last_run')
        self.verification_last_run = attributes[:'verification_last_run']
      end

      if attributes.key?(:'verification_status')
        self.verification_status = attributes[:'verification_status']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @is_customer.nil?
        invalid_properties.push('invalid value for "is_customer", is_customer cannot be nil.')
      end

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
      return false if @is_customer.nil?
      return false if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\+[1-9]\d{1,14}$/)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "CANCELLED", "CONVERTED", "DISSOLVED", "FROZEN", "INACTIVE", "MERGED", "PROSPECT", "SANCTION", "SUSPENDED"])
      return false unless status_validator.valid?(@status)
      structure_validator = EnumAttributeValidator.new('String', ["CORPORATION", "LLC", "NON_PROFIT", "OTHER", "PARTNERSHIP", "SOLE_PROPRIETORSHIP", "S_CORPORATION"])
      return false unless structure_validator.valid?(@structure)
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
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "CANCELLED", "CONVERTED", "DISSOLVED", "FROZEN", "INACTIVE", "MERGED", "PROSPECT", "SANCTION", "SUSPENDED"])
      unless validator.valid?(status)
        warn "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] structure Object to be assigned
    def structure=(structure)
      validator = EnumAttributeValidator.new('String', ["CORPORATION", "LLC", "NON_PROFIT", "OTHER", "PARTNERSHIP", "SOLE_PROPRIETORSHIP", "S_CORPORATION"])
      unless validator.valid?(structure)
        warn "invalid value for \"structure\", must be one of #{validator.allowable_values}."
      end
      @structure = structure
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          addresses == o.addresses &&
          compliance_restrictions == o.compliance_restrictions &&
          creation_time == o.creation_time &&
          ein == o.ein &&
          email == o.email &&
          entity_name == o.entity_name &&
          formation_date == o.formation_date &&
          formation_state == o.formation_state &&
          has_accounts == o.has_accounts &&
          id == o.id &&
          is_customer == o.is_customer &&
          last_updated_time == o.last_updated_time &&
          legal_address == o.legal_address &&
          metadata == o.metadata &&
          phone_number == o.phone_number &&
          status == o.status &&
          structure == o.structure &&
          tenant == o.tenant &&
          trade_names == o.trade_names &&
          verification_last_run == o.verification_last_run &&
          verification_status == o.verification_status &&
          website == o.website
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [addresses, compliance_restrictions, creation_time, ein, email, entity_name, formation_date, formation_state, has_accounts, id, is_customer, last_updated_time, legal_address, metadata, phone_number, status, structure, tenant, trade_names, verification_last_run, verification_status, website].hash
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
