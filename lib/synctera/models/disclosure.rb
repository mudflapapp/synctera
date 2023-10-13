=begin
#Synctera API

#<h2>Let's build something great.</h2><p>Welcome to the official reference documentation for Synctera APIs. Our APIs are the best way to automate your company's banking needs and are designed to be easy to understand and implement.</p><p>We're continuously growing this library and what you see here is just the start, but if you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.74.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1

=end

require 'date'
require 'time'

module Synctera
  # Represents a disclosure.
  class Disclosure
    # Unique ID for the person acknowledging the disclosure. Applicable for disclosures where the person  acknowledging is different from the subject of the disclosure. Required for OWNER_CERTIFICATION disclosures. 
    attr_accessor :acknowledging_person_id

    # Unique ID for the business. Exactly one of `business_id` or `person_id` must be set. 
    attr_accessor :business_id

    # The date and time the resource was created.
    attr_accessor :creation_time

    # Date and time the disclosure was made.
    attr_accessor :disclosure_date

    # Describes how the disclosure was shown and what the user did as a result. One of the following: * `DISPLAYED` —     The document was made visible to the user,     but they did not interact with it. * `VIEWED` —     The document was made visible to the user,     and they interacted enough to see the whole document (e.g. scrolled to the bottom). * `ACKNOWLEDGED` —     The document was made visible to the user,     and they took positive action to confirm that they have read and accepted the document. 
    attr_accessor :event_type

    # The unique identifier for this resource.
    attr_accessor :id

    # The date and time the resource was last updated.
    attr_accessor :last_updated_time

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # Unique ID for the person. Exactly one of `person_id` or `business_id` must be set. 
    attr_accessor :person_id

    attr_accessor :type

    # Version of the disclosure document.
    attr_accessor :version

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
        :'acknowledging_person_id' => :'acknowledging_person_id',
        :'business_id' => :'business_id',
        :'creation_time' => :'creation_time',
        :'disclosure_date' => :'disclosure_date',
        :'event_type' => :'event_type',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'person_id' => :'person_id',
        :'type' => :'type',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'acknowledging_person_id' => :'String',
        :'business_id' => :'String',
        :'creation_time' => :'Time',
        :'disclosure_date' => :'Time',
        :'event_type' => :'String',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Object',
        :'person_id' => :'String',
        :'type' => :'DisclosureType',
        :'version' => :'String'
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
      :'BaseDisclosure'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Disclosure` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Disclosure`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'acknowledging_person_id')
        self.acknowledging_person_id = attributes[:'acknowledging_person_id']
      end

      if attributes.key?(:'business_id')
        self.business_id = attributes[:'business_id']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'disclosure_date')
        self.disclosure_date = attributes[:'disclosure_date']
      else
        self.disclosure_date = nil
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      else
        self.event_type = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'person_id')
        self.person_id = attributes[:'person_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @disclosure_date.nil?
        invalid_properties.push('invalid value for "disclosure_date", disclosure_date cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      pattern = Regexp.new(/^v?[0-9]+\.[0-9]+$/)
      if @version !~ pattern
        invalid_properties.push("invalid value for \"version\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @disclosure_date.nil?
      return false if @event_type.nil?
      event_type_validator = EnumAttributeValidator.new('String', ["ACKNOWLEDGED", "DISPLAYED", "VIEWED"])
      return false unless event_type_validator.valid?(@event_type)
      return false if @type.nil?
      return false if @version.nil?
      return false if @version !~ Regexp.new(/^v?[0-9]+\.[0-9]+$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["ACKNOWLEDGED", "DISPLAYED", "VIEWED"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for \"event_type\", must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if version.nil?
        fail ArgumentError, 'version cannot be nil'
      end

      pattern = Regexp.new(/^v?[0-9]+\.[0-9]+$/)
      if version !~ pattern
        fail ArgumentError, "invalid value for \"version\", must conform to the pattern #{pattern}."
      end

      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acknowledging_person_id == o.acknowledging_person_id &&
          business_id == o.business_id &&
          creation_time == o.creation_time &&
          disclosure_date == o.disclosure_date &&
          event_type == o.event_type &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          person_id == o.person_id &&
          type == o.type &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [acknowledging_person_id, business_id, creation_time, disclosure_date, event_type, id, last_updated_time, metadata, person_id, type, version].hash
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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