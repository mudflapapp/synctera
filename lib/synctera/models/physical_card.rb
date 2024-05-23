=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.111.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  # Details pertaining to issuing a new physical card
  class PhysicalCard
    # The ID of the account to which the card will be linked
    attr_accessor :account_id

    # The business ID associated with this card. If no customer_id is supplied, a card can still be issued to a business, but cannot be activated or used until a customer is assigned via the PATCH /cards/{card_id} endpoint.
    attr_accessor :business_id

    # The card product to which the card is attached
    attr_accessor :card_product_id

    # The timestamp representing when the card issuance request was made
    attr_accessor :creation_time

    # The ID of the customer to whom the card will be issued. If a business_id is passed, but a customer_id not passed at the time of card creation the card cannot be activated or used for spend until it's assigned to a human customer via the PATCH /cards/{card_id} endpoint. If no business_id is passed, a customer_id is required.
    attr_accessor :customer_id

    attr_accessor :emboss_name

    attr_accessor :expiration_month

    # The timestamp representing when the card would expire at
    attr_accessor :expiration_time

    attr_accessor :expiration_year

    # Card ID
    attr_accessor :id

    # indicates whether a pin has been set on the card
    attr_accessor :is_pin_set

    # The last 4 digits of the card PAN
    attr_accessor :last_four

    # The timestamp representing when the card was last modified at
    attr_accessor :last_modified_time

    # Additional data to include in the request structured as key-value pairs
    attr_accessor :metadata

    # This is the reason the card needs to be reissued, if any. The reason determines several behaviours:   - whether or not the new card will use the same PAN as the original card   - the old card will be terminated and if so, when it will be terminated  Reason                 | Same PAN | Terminate Old Card ---------------------- | -------- | ------------------ EXPIRATION             | yes      | on activation LOST                   | no       | immediately STOLEN                 | no       | immediately DAMAGED                | yes      | on activation VIRTUAL_TO_PHYSICAL(*) | yes      | on activation PRODUCT_CHANGE         | yes      | on activation NAME_CHANGE(**)        | yes      | on activation APPEARANCE             | yes      | on activation  (*) VIRTUAL_TO_PHYSICAL is deprecated. Please use PRODUCT_CHANGE whenever reissuing from one card product to another, including from a virtual product to a physical product.  (**) NAME_CHANGE is deprecated. Please use APPEARANCE whenever reissuing in order to change the appearance of a card, such as the printed name or custom image.  For all reasons, the new card will use the same PIN as the original card and digital wallet tokens will reassigned to the new card 
    attr_accessor :reissue_reason

    # When reissuing a card, specify the card to be replaced here. When getting a card's details, if this card was issued as a reissuance of another card, this ID refers to the card was replaced. If this field is set, then reissue_reason must also be set. 
    attr_accessor :reissued_from_id

    # If this card was reissued, this ID refers to the card that replaced it.
    attr_accessor :reissued_to_id

    # Time when the PIN was last set or changed.
    attr_accessor :timestamp_pin_set

    attr_accessor :type

    # PHYSICAL or VIRTUAL.
    attr_accessor :form

    # The ID of the custom card image used for this card
    attr_accessor :card_image_id

    attr_accessor :shipping

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
        :'business_id' => :'business_id',
        :'card_product_id' => :'card_product_id',
        :'creation_time' => :'creation_time',
        :'customer_id' => :'customer_id',
        :'emboss_name' => :'emboss_name',
        :'expiration_month' => :'expiration_month',
        :'expiration_time' => :'expiration_time',
        :'expiration_year' => :'expiration_year',
        :'id' => :'id',
        :'is_pin_set' => :'is_pin_set',
        :'last_four' => :'last_four',
        :'last_modified_time' => :'last_modified_time',
        :'metadata' => :'metadata',
        :'reissue_reason' => :'reissue_reason',
        :'reissued_from_id' => :'reissued_from_id',
        :'reissued_to_id' => :'reissued_to_id',
        :'timestamp_pin_set' => :'timestamp_pin_set',
        :'type' => :'type',
        :'form' => :'form',
        :'card_image_id' => :'card_image_id',
        :'shipping' => :'shipping'
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
        :'business_id' => :'String',
        :'card_product_id' => :'String',
        :'creation_time' => :'Time',
        :'customer_id' => :'String',
        :'emboss_name' => :'EmbossName',
        :'expiration_month' => :'String',
        :'expiration_time' => :'Time',
        :'expiration_year' => :'String',
        :'id' => :'String',
        :'is_pin_set' => :'Boolean',
        :'last_four' => :'String',
        :'last_modified_time' => :'Time',
        :'metadata' => :'Hash<String, String>',
        :'reissue_reason' => :'String',
        :'reissued_from_id' => :'String',
        :'reissued_to_id' => :'String',
        :'timestamp_pin_set' => :'Time',
        :'type' => :'CardType',
        :'form' => :'String',
        :'card_image_id' => :'String',
        :'shipping' => :'Shipping'
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
      :'BaseCard'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PhysicalCard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PhysicalCard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'card_product_id')
        self.card_product_id = attributes[:'card_product_id']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'emboss_name')
        self.emboss_name = attributes[:'emboss_name']
      end

      if attributes.key?(:'expiration_month')
        self.expiration_month = attributes[:'expiration_month']
      end

      if attributes.key?(:'expiration_time')
        self.expiration_time = attributes[:'expiration_time']
      end

      if attributes.key?(:'expiration_year')
        self.expiration_year = attributes[:'expiration_year']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_pin_set')
        self.is_pin_set = attributes[:'is_pin_set']
      else
        self.is_pin_set = false
      end

      if attributes.key?(:'last_four')
        self.last_four = attributes[:'last_four']
      end

      if attributes.key?(:'last_modified_time')
        self.last_modified_time = attributes[:'last_modified_time']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'reissue_reason')
        self.reissue_reason = attributes[:'reissue_reason']
      end

      if attributes.key?(:'reissued_from_id')
        self.reissued_from_id = attributes[:'reissued_from_id']
      end

      if attributes.key?(:'reissued_to_id')
        self.reissued_to_id = attributes[:'reissued_to_id']
      end

      if attributes.key?(:'timestamp_pin_set')
        self.timestamp_pin_set = attributes[:'timestamp_pin_set']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'form')
        self.form = attributes[:'form']
      else
        self.form = nil
      end

      if attributes.key?(:'card_image_id')
        self.card_image_id = attributes[:'card_image_id']
      end

      if attributes.key?(:'shipping')
        self.shipping = attributes[:'shipping']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      reissue_reason_validator = EnumAttributeValidator.new('String', ["APPEARANCE", "DAMAGED", "EXPIRATION", "LOST", "NAME_CHANGE", "PRODUCT_CHANGE", "STOLEN", "VIRTUAL_TO_PHYSICAL"])
      return false unless reissue_reason_validator.valid?(@reissue_reason)
      return false if @form.nil?
      form_validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      return false unless form_validator.valid?(@form)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reissue_reason Object to be assigned
    def reissue_reason=(reissue_reason)
      validator = EnumAttributeValidator.new('String', ["APPEARANCE", "DAMAGED", "EXPIRATION", "LOST", "NAME_CHANGE", "PRODUCT_CHANGE", "STOLEN", "VIRTUAL_TO_PHYSICAL"])
      unless validator.valid?(reissue_reason)
        fail ArgumentError, "invalid value for \"reissue_reason\", must be one of #{validator.allowable_values}."
      end
      @reissue_reason = reissue_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] form Object to be assigned
    def form=(form)
      validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      unless validator.valid?(form)
        fail ArgumentError, "invalid value for \"form\", must be one of #{validator.allowable_values}."
      end
      @form = form
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          business_id == o.business_id &&
          card_product_id == o.card_product_id &&
          creation_time == o.creation_time &&
          customer_id == o.customer_id &&
          emboss_name == o.emboss_name &&
          expiration_month == o.expiration_month &&
          expiration_time == o.expiration_time &&
          expiration_year == o.expiration_year &&
          id == o.id &&
          is_pin_set == o.is_pin_set &&
          last_four == o.last_four &&
          last_modified_time == o.last_modified_time &&
          metadata == o.metadata &&
          reissue_reason == o.reissue_reason &&
          reissued_from_id == o.reissued_from_id &&
          reissued_to_id == o.reissued_to_id &&
          timestamp_pin_set == o.timestamp_pin_set &&
          type == o.type &&
          form == o.form &&
          card_image_id == o.card_image_id &&
          shipping == o.shipping
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, business_id, card_product_id, creation_time, customer_id, emboss_name, expiration_month, expiration_time, expiration_year, id, is_pin_set, last_four, last_modified_time, metadata, reissue_reason, reissued_from_id, reissued_to_id, timestamp_pin_set, type, form, card_image_id, shipping].hash
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
