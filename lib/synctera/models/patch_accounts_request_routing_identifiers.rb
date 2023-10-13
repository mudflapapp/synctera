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
  class PatchAccountsRequestRoutingIdentifiers
    # The routing number used for US ACH payments. On write, Synctera will store the entire routing number; on read, we only return the last 4 characters. 
    attr_accessor :ach_routing_number

    # The name of the bank managing the account
    attr_accessor :bank_name

    # > 🚧 Alpha > This is an Alpha property. Feedback from the community is welcome. We may make breaking changes to this property. The 9 digit routing number used for EFT CA payments, identifying a Canadian bank.  The format is 0xxxyyyyy where xxx is the institution number and yyyyy is the transit number. On write, Synctera will store the entire routing number; on read, we only return the last 4 characters. 
    attr_accessor :eft_ca_routing_number

    attr_accessor :international_wire_details

    # The routing number used for domestic wire payments. On write, Synctera will store the entire routing number; on read, we only return the last 4 characters. 
    attr_accessor :wire_routing_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ach_routing_number' => :'ach_routing_number',
        :'bank_name' => :'bank_name',
        :'eft_ca_routing_number' => :'eft_ca_routing_number',
        :'international_wire_details' => :'international_wire_details',
        :'wire_routing_number' => :'wire_routing_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ach_routing_number' => :'String',
        :'bank_name' => :'String',
        :'eft_ca_routing_number' => :'String',
        :'international_wire_details' => :'PatchInternationalWireDetails',
        :'wire_routing_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::PatchAccountsRequestRoutingIdentifiers` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::PatchAccountsRequestRoutingIdentifiers`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ach_routing_number')
        self.ach_routing_number = attributes[:'ach_routing_number']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'eft_ca_routing_number')
        self.eft_ca_routing_number = attributes[:'eft_ca_routing_number']
      end

      if attributes.key?(:'international_wire_details')
        self.international_wire_details = attributes[:'international_wire_details']
      end

      if attributes.key?(:'wire_routing_number')
        self.wire_routing_number = attributes[:'wire_routing_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@ach_routing_number.nil? && @ach_routing_number.to_s.length < 1
        invalid_properties.push('invalid value for "ach_routing_number", the character length must be great than or equal to 1.')
      end

      if !@bank_name.nil? && @bank_name.to_s.length < 1
        invalid_properties.push('invalid value for "bank_name", the character length must be great than or equal to 1.')
      end

      if !@eft_ca_routing_number.nil? && @eft_ca_routing_number.to_s.length > 9
        invalid_properties.push('invalid value for "eft_ca_routing_number", the character length must be smaller than or equal to 9.')
      end

      if !@eft_ca_routing_number.nil? && @eft_ca_routing_number.to_s.length < 9
        invalid_properties.push('invalid value for "eft_ca_routing_number", the character length must be great than or equal to 9.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@ach_routing_number.nil? && @ach_routing_number.to_s.length < 1
      return false if !@bank_name.nil? && @bank_name.to_s.length < 1
      return false if !@eft_ca_routing_number.nil? && @eft_ca_routing_number.to_s.length > 9
      return false if !@eft_ca_routing_number.nil? && @eft_ca_routing_number.to_s.length < 9
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ach_routing_number Value to be assigned
    def ach_routing_number=(ach_routing_number)
      if ach_routing_number.nil?
        fail ArgumentError, 'ach_routing_number cannot be nil'
      end

      if ach_routing_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "ach_routing_number", the character length must be great than or equal to 1.'
      end

      @ach_routing_number = ach_routing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if bank_name.nil?
        fail ArgumentError, 'bank_name cannot be nil'
      end

      if bank_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "bank_name", the character length must be great than or equal to 1.'
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] eft_ca_routing_number Value to be assigned
    def eft_ca_routing_number=(eft_ca_routing_number)
      if eft_ca_routing_number.nil?
        fail ArgumentError, 'eft_ca_routing_number cannot be nil'
      end

      if eft_ca_routing_number.to_s.length > 9
        fail ArgumentError, 'invalid value for "eft_ca_routing_number", the character length must be smaller than or equal to 9.'
      end

      if eft_ca_routing_number.to_s.length < 9
        fail ArgumentError, 'invalid value for "eft_ca_routing_number", the character length must be great than or equal to 9.'
      end

      @eft_ca_routing_number = eft_ca_routing_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ach_routing_number == o.ach_routing_number &&
          bank_name == o.bank_name &&
          eft_ca_routing_number == o.eft_ca_routing_number &&
          international_wire_details == o.international_wire_details &&
          wire_routing_number == o.wire_routing_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ach_routing_number, bank_name, eft_ca_routing_number, international_wire_details, wire_routing_number].hash
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
