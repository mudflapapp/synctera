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
  class ExternalAccountLinkToken
    # The identifier for the business customer associated with this external account. Exactly one of `business_id` or `customer_id` must be specified. 
    attr_accessor :business_id

    # The name of your application, as it should be displayed in Link. Maximum length of 30 characters.
    attr_accessor :client_name

    # Country codes in the ISO-3166-1 alpha-2 country code standard.
    attr_accessor :country_codes

    # The identifier for the personal customer associated with this external account. Exactly one of `customer_id` or `business_id` must be specified. 
    attr_accessor :customer_id

    # The expiration date for the link_token. Expires in 4 hours.
    attr_accessor :expiration

    attr_accessor :language

    # The name of the Link customization from the Plaid Dashboard to be applied to Link. If not specified, the default customization will be used. When using a Link customization, the language in the customization must match the language selected via the language parameter, and the countries in the customization should match the country codes selected via country_codes. 
    attr_accessor :link_customization_name

    # A link_token, which can be supplied to Link in order to initialize it and receive a public_token, which can be exchanged for an access_token. 
    attr_accessor :link_token

    # A URI indicating the destination where a user should be forwarded after completing the Link flow; used to support OAuth authentication flows when launching Link in the browser or via a webview. 
    attr_accessor :redirect_uri

    # A unique identifier for the request, which can be used for troubleshooting.
    attr_accessor :request_id

    # Describes the environment of the client code running a vendor-supplied SDK
    attr_accessor :sdk_type

    # The type of the link token. DEPOSITORY for checking and savings accounts, CREDIT for credit card type accounts, INVESTMENT for investment accounts, and MICRO_DEPOSIT for depository accounts with support for micro-deposits verification.
    attr_accessor :type

    # The access token associated with the Item data is being requested for.
    attr_accessor :vendor_access_token

    # The ID of the institution the access token is requested for. If present the link token will be created in an update mode. 
    attr_accessor :vendor_institution_id

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
        :'client_name' => :'client_name',
        :'country_codes' => :'country_codes',
        :'customer_id' => :'customer_id',
        :'expiration' => :'expiration',
        :'language' => :'language',
        :'link_customization_name' => :'link_customization_name',
        :'link_token' => :'link_token',
        :'redirect_uri' => :'redirect_uri',
        :'request_id' => :'request_id',
        :'sdk_type' => :'sdk_type',
        :'type' => :'type',
        :'vendor_access_token' => :'vendor_access_token',
        :'vendor_institution_id' => :'vendor_institution_id',
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
        :'client_name' => :'String',
        :'country_codes' => :'Array<String>',
        :'customer_id' => :'String',
        :'expiration' => :'Time',
        :'language' => :'ExternalAccountLanguage',
        :'link_customization_name' => :'String',
        :'link_token' => :'String',
        :'redirect_uri' => :'String',
        :'request_id' => :'String',
        :'sdk_type' => :'String',
        :'type' => :'String',
        :'vendor_access_token' => :'String',
        :'vendor_institution_id' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::ExternalAccountLinkToken` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::ExternalAccountLinkToken`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'client_name')
        self.client_name = attributes[:'client_name']
      else
        self.client_name = nil
      end

      if attributes.key?(:'country_codes')
        if (value = attributes[:'country_codes']).is_a?(Array)
          self.country_codes = value
        end
      else
        self.country_codes = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      else
        self.language = nil
      end

      if attributes.key?(:'link_customization_name')
        self.link_customization_name = attributes[:'link_customization_name']
      end

      if attributes.key?(:'link_token')
        self.link_token = attributes[:'link_token']
      end

      if attributes.key?(:'redirect_uri')
        self.redirect_uri = attributes[:'redirect_uri']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'sdk_type')
        self.sdk_type = attributes[:'sdk_type']
      else
        self.sdk_type = 'WEB'
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'vendor_access_token')
        self.vendor_access_token = attributes[:'vendor_access_token']
      end

      if attributes.key?(:'vendor_institution_id')
        self.vendor_institution_id = attributes[:'vendor_institution_id']
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
      if @client_name.nil?
        invalid_properties.push('invalid value for "client_name", client_name cannot be nil.')
      end

      if @country_codes.nil?
        invalid_properties.push('invalid value for "country_codes", country_codes cannot be nil.')
      end

      if @country_codes.length < 1
        invalid_properties.push('invalid value for "country_codes", number of items must be greater than or equal to 1.')
      end

      if @language.nil?
        invalid_properties.push('invalid value for "language", language cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if !@vendor_institution_id.nil? && @vendor_institution_id.to_s.length < 1
        invalid_properties.push('invalid value for "vendor_institution_id", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @client_name.nil?
      return false if @country_codes.nil?
      return false if @country_codes.length < 1
      return false if @language.nil?
      sdk_type_validator = EnumAttributeValidator.new('String', ["ANDROID", "IOS", "WEB"])
      return false unless sdk_type_validator.valid?(@sdk_type)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["CREDIT", "DEPOSITORY", "INVESTMENT", "MICRO_DEPOSIT"])
      return false unless type_validator.valid?(@type)
      return false if !@vendor_institution_id.nil? && @vendor_institution_id.to_s.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sdk_type Object to be assigned
    def sdk_type=(sdk_type)
      validator = EnumAttributeValidator.new('String', ["ANDROID", "IOS", "WEB"])
      unless validator.valid?(sdk_type)
        warn "invalid value for \"sdk_type\", must be one of #{validator.allowable_values}."
      end
      @sdk_type = sdk_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["CREDIT", "DEPOSITORY", "INVESTMENT", "MICRO_DEPOSIT"])
      unless validator.valid?(type)
        warn "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_institution_id Value to be assigned
    def vendor_institution_id=(vendor_institution_id)
      if vendor_institution_id.nil?
        fail ArgumentError, 'vendor_institution_id cannot be nil'
      end

      if vendor_institution_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "vendor_institution_id", the character length must be great than or equal to 1.'
      end

      @vendor_institution_id = vendor_institution_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          business_id == o.business_id &&
          client_name == o.client_name &&
          country_codes == o.country_codes &&
          customer_id == o.customer_id &&
          expiration == o.expiration &&
          language == o.language &&
          link_customization_name == o.link_customization_name &&
          link_token == o.link_token &&
          redirect_uri == o.redirect_uri &&
          request_id == o.request_id &&
          sdk_type == o.sdk_type &&
          type == o.type &&
          vendor_access_token == o.vendor_access_token &&
          vendor_institution_id == o.vendor_institution_id &&
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
      [business_id, client_name, country_codes, customer_id, expiration, language, link_customization_name, link_token, redirect_uri, request_id, sdk_type, type, vendor_access_token, vendor_institution_id, verify_owner].hash
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
