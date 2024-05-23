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
  class Lookup3dsRequestBrowser
    attr_accessor :authentication_indicator

    # Channel through which Device Data Collection was performed  Channel | Description --- | --- `BROWSER` | Internet browser `SDK` | Mobile app 
    attr_accessor :device_channel

    # The unique identifier of the 3DS authentication
    attr_accessor :id

    attr_accessor :transaction_mode

    attr_accessor :device_details

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
        :'authentication_indicator' => :'authentication_indicator',
        :'device_channel' => :'device_channel',
        :'id' => :'id',
        :'transaction_mode' => :'transaction_mode',
        :'device_details' => :'device_details'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_indicator' => :'String',
        :'device_channel' => :'String',
        :'id' => :'String',
        :'transaction_mode' => :'String',
        :'device_details' => :'DeviceDetails'
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
      :'Lookup3dsRequestBase'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Lookup3dsRequestBrowser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Lookup3dsRequestBrowser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authentication_indicator')
        self.authentication_indicator = attributes[:'authentication_indicator']
      else
        self.authentication_indicator = nil
      end

      if attributes.key?(:'device_channel')
        self.device_channel = attributes[:'device_channel']
      else
        self.device_channel = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'transaction_mode')
        self.transaction_mode = attributes[:'transaction_mode']
      else
        self.transaction_mode = nil
      end

      if attributes.key?(:'device_details')
        self.device_details = attributes[:'device_details']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @authentication_indicator.nil?
        invalid_properties.push('invalid value for "authentication_indicator", authentication_indicator cannot be nil.')
      end

      if @device_channel.nil?
        invalid_properties.push('invalid value for "device_channel", device_channel cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @transaction_mode.nil?
        invalid_properties.push('invalid value for "transaction_mode", transaction_mode cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @authentication_indicator.nil?
      authentication_indicator_validator = EnumAttributeValidator.new('String', ["INSTALLMENT", "PAYMENT", "RECURRING"])
      return false unless authentication_indicator_validator.valid?(@authentication_indicator)
      return false if @device_channel.nil?
      device_channel_validator = EnumAttributeValidator.new('String', ["BROWSER", "SDK"])
      return false unless device_channel_validator.valid?(@device_channel)
      return false if @id.nil?
      return false if @transaction_mode.nil?
      transaction_mode_validator = EnumAttributeValidator.new('String', ["COMPUTER_DEVICE", "MOBILE_DEVICE", "TABLET_DEVICE"])
      return false unless transaction_mode_validator.valid?(@transaction_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_indicator Object to be assigned
    def authentication_indicator=(authentication_indicator)
      validator = EnumAttributeValidator.new('String', ["INSTALLMENT", "PAYMENT", "RECURRING"])
      unless validator.valid?(authentication_indicator)
        fail ArgumentError, "invalid value for \"authentication_indicator\", must be one of #{validator.allowable_values}."
      end
      @authentication_indicator = authentication_indicator
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_channel Object to be assigned
    def device_channel=(device_channel)
      validator = EnumAttributeValidator.new('String', ["BROWSER", "SDK"])
      unless validator.valid?(device_channel)
        fail ArgumentError, "invalid value for \"device_channel\", must be one of #{validator.allowable_values}."
      end
      @device_channel = device_channel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_mode Object to be assigned
    def transaction_mode=(transaction_mode)
      validator = EnumAttributeValidator.new('String', ["COMPUTER_DEVICE", "MOBILE_DEVICE", "TABLET_DEVICE"])
      unless validator.valid?(transaction_mode)
        fail ArgumentError, "invalid value for \"transaction_mode\", must be one of #{validator.allowable_values}."
      end
      @transaction_mode = transaction_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication_indicator == o.authentication_indicator &&
          device_channel == o.device_channel &&
          id == o.id &&
          transaction_mode == o.transaction_mode &&
          device_details == o.device_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authentication_indicator, device_channel, id, transaction_mode, device_details].hash
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
