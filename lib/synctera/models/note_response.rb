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
  class NoteResponse
    # The note's author.
    attr_accessor :author

    # The note's text content.
    attr_accessor :content

    # The date and time the note was created.
    attr_accessor :creation_time

    # note ID
    attr_accessor :id

    # The date and time the note was last updated.
    attr_accessor :last_updated_time

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # 🚧 Beta This is a Beta property. Feedback from the community is welcome. We may make breaking changes to this property. Path to the field in the related resource that the note pertains to. This uses a dot notation like the following: Examples: * a field in the resource: first_name * a sub-field: legal_address.city * nested arrays: application_details.sections[1].pages[2].items[0].answer 
    attr_accessor :related_resource_field

    # The id of the resource that is associated with the note. This is typically a UUID. For TENANT it is a string tenant ID. 
    attr_accessor :related_resource_id

    attr_accessor :related_resource_type

    attr_accessor :status

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    attr_accessor :type

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
        :'author' => :'author',
        :'content' => :'content',
        :'creation_time' => :'creation_time',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'related_resource_field' => :'related_resource_field',
        :'related_resource_id' => :'related_resource_id',
        :'related_resource_type' => :'related_resource_type',
        :'status' => :'status',
        :'tenant' => :'tenant',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'author' => :'String',
        :'content' => :'String',
        :'creation_time' => :'Time',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Object',
        :'related_resource_field' => :'String',
        :'related_resource_id' => :'String',
        :'related_resource_type' => :'RelatedResourceType2',
        :'status' => :'NoteStatus',
        :'tenant' => :'String',
        :'type' => :'Type'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::NoteResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::NoteResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      else
        self.author = nil
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      else
        self.content = nil
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      else
        self.creation_time = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      else
        self.last_updated_time = nil
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'related_resource_field')
        self.related_resource_field = attributes[:'related_resource_field']
      end

      if attributes.key?(:'related_resource_id')
        self.related_resource_id = attributes[:'related_resource_id']
      else
        self.related_resource_id = nil
      end

      if attributes.key?(:'related_resource_type')
        self.related_resource_type = attributes[:'related_resource_type']
      else
        self.related_resource_type = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      else
        self.tenant = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'NOTE'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @author.nil?
        invalid_properties.push('invalid value for "author", author cannot be nil.')
      end

      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      if @creation_time.nil?
        invalid_properties.push('invalid value for "creation_time", creation_time cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_updated_time.nil?
        invalid_properties.push('invalid value for "last_updated_time", last_updated_time cannot be nil.')
      end

      if @related_resource_id.nil?
        invalid_properties.push('invalid value for "related_resource_id", related_resource_id cannot be nil.')
      end

      if @related_resource_type.nil?
        invalid_properties.push('invalid value for "related_resource_type", related_resource_type cannot be nil.')
      end

      if @tenant.nil?
        invalid_properties.push('invalid value for "tenant", tenant cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @author.nil?
      return false if @content.nil?
      return false if @creation_time.nil?
      return false if @id.nil?
      return false if @last_updated_time.nil?
      return false if @related_resource_id.nil?
      return false if @related_resource_type.nil?
      return false if @tenant.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author == o.author &&
          content == o.content &&
          creation_time == o.creation_time &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          related_resource_field == o.related_resource_field &&
          related_resource_id == o.related_resource_id &&
          related_resource_type == o.related_resource_type &&
          status == o.status &&
          tenant == o.tenant &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [author, content, creation_time, id, last_updated_time, metadata, related_resource_field, related_resource_id, related_resource_type, status, tenant, type].hash
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
