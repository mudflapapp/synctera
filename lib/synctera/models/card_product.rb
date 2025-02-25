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
  # Card Product
  class CardProduct
    # PHYSICAL or VIRTUAL.
    attr_accessor :form

    # Indicates whether the Card Product is active
    attr_accessor :active

    # ISO-3166-1 Alpha-2 country code
    attr_accessor :bin_country

    # Allow bypassing risk engine errors.
    attr_accessor :bypass_risk_errors

    attr_accessor :card_brand

    attr_accessor :card_category

    # ISO-3166-1 Alpha-2 country code
    attr_accessor :card_fulfillment_country

    attr_accessor :card_fulfillment_provider

    # Card Program ID
    attr_accessor :card_program_id

    attr_accessor :card_type

    # Color code for dynamic card elements such as PAN and card holder name
    attr_accessor :color

    # The timestamp representing when the Card Product was created
    attr_accessor :creation_time

    # Enable/Disable cross border transaction - transaction will be automatically declined when merchant country is different than BIN country when disabled. Cross-Border transaction are disabled by default. 
    attr_accessor :cross_border_enabled

    attr_accessor :digital_wallet_tokenization

    # The time when the Card Product is decommissioned
    attr_accessor :end_date

    # Card Product ID
    attr_accessor :id

    # Indicates whether or not there is an overlay image of the card product available
    attr_accessor :image

    attr_accessor :image_mode

    # Allow issuing cards on this product without requiring KYC
    attr_accessor :issue_without_kyc

    # Enable/Disable l2l3 transaction - L2l3 transaction are disabled by default. 
    attr_accessor :l2l3_enabled

    # The timestamp representing when the Card Product was last modified
    attr_accessor :last_modified_time

    # The name of the Card Product
    attr_accessor :name

    attr_accessor :notification_language

    # Card orientation
    attr_accessor :orientation

    # Card fulfillment provider’s package ID
    attr_accessor :package_id

    attr_accessor :physical_card_format

    attr_accessor :return_address

    # The time when the Card Product goes live
    attr_accessor :start_date

    attr_accessor :txn_enhancer

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
        :'form' => :'form',
        :'active' => :'active',
        :'bin_country' => :'bin_country',
        :'bypass_risk_errors' => :'bypass_risk_errors',
        :'card_brand' => :'card_brand',
        :'card_category' => :'card_category',
        :'card_fulfillment_country' => :'card_fulfillment_country',
        :'card_fulfillment_provider' => :'card_fulfillment_provider',
        :'card_program_id' => :'card_program_id',
        :'card_type' => :'card_type',
        :'color' => :'color',
        :'creation_time' => :'creation_time',
        :'cross_border_enabled' => :'cross_border_enabled',
        :'digital_wallet_tokenization' => :'digital_wallet_tokenization',
        :'end_date' => :'end_date',
        :'id' => :'id',
        :'image' => :'image',
        :'image_mode' => :'image_mode',
        :'issue_without_kyc' => :'issue_without_kyc',
        :'l2l3_enabled' => :'l2l3_enabled',
        :'last_modified_time' => :'last_modified_time',
        :'name' => :'name',
        :'notification_language' => :'notification_language',
        :'orientation' => :'orientation',
        :'package_id' => :'package_id',
        :'physical_card_format' => :'physical_card_format',
        :'return_address' => :'return_address',
        :'start_date' => :'start_date',
        :'txn_enhancer' => :'txn_enhancer'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'form' => :'String',
        :'active' => :'Boolean',
        :'bin_country' => :'String',
        :'bypass_risk_errors' => :'Boolean',
        :'card_brand' => :'CardBrand',
        :'card_category' => :'CardCategory',
        :'card_fulfillment_country' => :'String',
        :'card_fulfillment_provider' => :'CardFulfillmentProvider',
        :'card_program_id' => :'String',
        :'card_type' => :'CardProgramType',
        :'color' => :'String',
        :'creation_time' => :'Time',
        :'cross_border_enabled' => :'Boolean',
        :'digital_wallet_tokenization' => :'DigitalWalletTokenization',
        :'end_date' => :'Time',
        :'id' => :'String',
        :'image' => :'Boolean',
        :'image_mode' => :'CardImageMode',
        :'issue_without_kyc' => :'Boolean',
        :'l2l3_enabled' => :'Boolean',
        :'last_modified_time' => :'Time',
        :'name' => :'String',
        :'notification_language' => :'NotificationLanguage',
        :'orientation' => :'String',
        :'package_id' => :'String',
        :'physical_card_format' => :'PhysicalCardFormat',
        :'return_address' => :'Shipping',
        :'start_date' => :'Time',
        :'txn_enhancer' => :'TxnEnhancer'
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
      :'CardFormat'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::CardProduct` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::CardProduct`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'form')
        self.form = attributes[:'form']
      else
        self.form = nil
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = nil
      end

      if attributes.key?(:'bin_country')
        self.bin_country = attributes[:'bin_country']
      end

      if attributes.key?(:'bypass_risk_errors')
        self.bypass_risk_errors = attributes[:'bypass_risk_errors']
      end

      if attributes.key?(:'card_brand')
        self.card_brand = attributes[:'card_brand']
      end

      if attributes.key?(:'card_category')
        self.card_category = attributes[:'card_category']
      end

      if attributes.key?(:'card_fulfillment_country')
        self.card_fulfillment_country = attributes[:'card_fulfillment_country']
      end

      if attributes.key?(:'card_fulfillment_provider')
        self.card_fulfillment_provider = attributes[:'card_fulfillment_provider']
      end

      if attributes.key?(:'card_program_id')
        self.card_program_id = attributes[:'card_program_id']
      else
        self.card_program_id = nil
      end

      if attributes.key?(:'card_type')
        self.card_type = attributes[:'card_type']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'cross_border_enabled')
        self.cross_border_enabled = attributes[:'cross_border_enabled']
      else
        self.cross_border_enabled = false
      end

      if attributes.key?(:'digital_wallet_tokenization')
        self.digital_wallet_tokenization = attributes[:'digital_wallet_tokenization']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'image_mode')
        self.image_mode = attributes[:'image_mode']
      end

      if attributes.key?(:'issue_without_kyc')
        self.issue_without_kyc = attributes[:'issue_without_kyc']
      end

      if attributes.key?(:'l2l3_enabled')
        self.l2l3_enabled = attributes[:'l2l3_enabled']
      else
        self.l2l3_enabled = false
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'notification_language')
        self.notification_language = attributes[:'notification_language']
      end

      if attributes.key?(:'orientation')
        self.orientation = attributes[:'orientation']
      end

      if attributes.key?(:'package_id')
        self.package_id = attributes[:'package_id']
      end

      if attributes.key?(:'physical_card_format')
        self.physical_card_format = attributes[:'physical_card_format']
      end

      if attributes.key?(:'return_address')
        self.return_address = attributes[:'return_address']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      else
        self.start_date = nil
      end

      if attributes.key?(:'txn_enhancer')
        self.txn_enhancer = attributes[:'txn_enhancer']
      else
        self.txn_enhancer = 'MX'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @form.nil?
        invalid_properties.push('invalid value for "form", form cannot be nil.')
      end

      if @active.nil?
        invalid_properties.push('invalid value for "active", active cannot be nil.')
      end

      if !@bin_country.nil? && @bin_country.to_s.length > 2
        invalid_properties.push('invalid value for "bin_country", the character length must be smaller than or equal to 2.')
      end

      if !@bin_country.nil? && @bin_country.to_s.length < 2
        invalid_properties.push('invalid value for "bin_country", the character length must be great than or equal to 2.')
      end

      if !@card_fulfillment_country.nil? && @card_fulfillment_country.to_s.length > 2
        invalid_properties.push('invalid value for "card_fulfillment_country", the character length must be smaller than or equal to 2.')
      end

      if !@card_fulfillment_country.nil? && @card_fulfillment_country.to_s.length < 2
        invalid_properties.push('invalid value for "card_fulfillment_country", the character length must be great than or equal to 2.')
      end

      if @card_program_id.nil?
        invalid_properties.push('invalid value for "card_program_id", card_program_id cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9A-F]{6}$/)
      if !@color.nil? && @color !~ pattern
        invalid_properties.push("invalid value for \"color\", must conform to the pattern #{pattern}.")
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 40
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 40.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if !@package_id.nil? && @package_id.to_s.length > 50
        invalid_properties.push('invalid value for "package_id", the character length must be smaller than or equal to 50.')
      end

      if !@package_id.nil? && @package_id.to_s.length < 1
        invalid_properties.push('invalid value for "package_id", the character length must be great than or equal to 1.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @form.nil?
      form_validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      return false unless form_validator.valid?(@form)
      return false if @active.nil?
      return false if !@bin_country.nil? && @bin_country.to_s.length > 2
      return false if !@bin_country.nil? && @bin_country.to_s.length < 2
      return false if !@card_fulfillment_country.nil? && @card_fulfillment_country.to_s.length > 2
      return false if !@card_fulfillment_country.nil? && @card_fulfillment_country.to_s.length < 2
      return false if @card_program_id.nil?
      return false if !@color.nil? && @color !~ Regexp.new(/^[0-9A-F]{6}$/)
      return false if @name.nil?
      return false if @name.to_s.length > 40
      return false if @name.to_s.length < 1
      orientation_validator = EnumAttributeValidator.new('String', ["HORIZONTAL", "VERTICAL"])
      return false unless orientation_validator.valid?(@orientation)
      return false if !@package_id.nil? && @package_id.to_s.length > 50
      return false if !@package_id.nil? && @package_id.to_s.length < 1
      return false if @start_date.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] form Object to be assigned
    def form=(form)
      validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      unless validator.valid?(form)
        warn "invalid value for \"form\", must be one of #{validator.allowable_values}."
      end
      @form = form
    end

    # Custom attribute writer method with validation
    # @param [Object] bin_country Value to be assigned
    def bin_country=(bin_country)
      if bin_country.nil?
        fail ArgumentError, 'bin_country cannot be nil'
      end

      if bin_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "bin_country", the character length must be smaller than or equal to 2.'
      end

      if bin_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "bin_country", the character length must be great than or equal to 2.'
      end

      @bin_country = bin_country
    end

    # Custom attribute writer method with validation
    # @param [Object] card_fulfillment_country Value to be assigned
    def card_fulfillment_country=(card_fulfillment_country)
      if card_fulfillment_country.nil?
        fail ArgumentError, 'card_fulfillment_country cannot be nil'
      end

      if card_fulfillment_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "card_fulfillment_country", the character length must be smaller than or equal to 2.'
      end

      if card_fulfillment_country.to_s.length < 2
        fail ArgumentError, 'invalid value for "card_fulfillment_country", the character length must be great than or equal to 2.'
      end

      @card_fulfillment_country = card_fulfillment_country
    end

    # Custom attribute writer method with validation
    # @param [Object] color Value to be assigned
    def color=(color)
      if color.nil?
        fail ArgumentError, 'color cannot be nil'
      end

      pattern = Regexp.new(/^[0-9A-F]{6}$/)
      if color !~ pattern
        fail ArgumentError, "invalid value for \"color\", must conform to the pattern #{pattern}."
      end

      @color = color
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 40
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 40.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation Object to be assigned
    def orientation=(orientation)
      validator = EnumAttributeValidator.new('String', ["HORIZONTAL", "VERTICAL"])
      unless validator.valid?(orientation)
        warn "invalid value for \"orientation\", must be one of #{validator.allowable_values}."
      end
      @orientation = orientation
    end

    # Custom attribute writer method with validation
    # @param [Object] package_id Value to be assigned
    def package_id=(package_id)
      if package_id.nil?
        fail ArgumentError, 'package_id cannot be nil'
      end

      if package_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "package_id", the character length must be smaller than or equal to 50.'
      end

      if package_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "package_id", the character length must be great than or equal to 1.'
      end

      @package_id = package_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          form == o.form &&
          active == o.active &&
          bin_country == o.bin_country &&
          bypass_risk_errors == o.bypass_risk_errors &&
          card_brand == o.card_brand &&
          card_category == o.card_category &&
          card_fulfillment_country == o.card_fulfillment_country &&
          card_fulfillment_provider == o.card_fulfillment_provider &&
          card_program_id == o.card_program_id &&
          card_type == o.card_type &&
          color == o.color &&
          creation_time == o.creation_time &&
          cross_border_enabled == o.cross_border_enabled &&
          digital_wallet_tokenization == o.digital_wallet_tokenization &&
          end_date == o.end_date &&
          id == o.id &&
          image == o.image &&
          image_mode == o.image_mode &&
          issue_without_kyc == o.issue_without_kyc &&
          l2l3_enabled == o.l2l3_enabled &&
          last_modified_time == o.last_modified_time &&
          name == o.name &&
          notification_language == o.notification_language &&
          orientation == o.orientation &&
          package_id == o.package_id &&
          physical_card_format == o.physical_card_format &&
          return_address == o.return_address &&
          start_date == o.start_date &&
          txn_enhancer == o.txn_enhancer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [form, active, bin_country, bypass_risk_errors, card_brand, card_category, card_fulfillment_country, card_fulfillment_provider, card_program_id, card_type, color, creation_time, cross_border_enabled, digital_wallet_tokenization, end_date, id, image, image_mode, issue_without_kyc, l2l3_enabled, last_modified_time, name, notification_language, orientation, package_id, physical_card_format, return_address, start_date, txn_enhancer].hash
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
