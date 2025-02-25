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
  class DocumentResponse
    # All document versions
    attr_accessor :available_versions

    # Metadata of all document versions
    attr_accessor :available_versions_info

    # The ID of the batch that the document belongs to
    attr_accessor :batch_id

    # The date and time the resource was created
    attr_accessor :creation_time

    # An explanation why the file was deleted. You must set a document's deletion_reason before deleting it.
    attr_accessor :deletion_reason

    # A description of the document
    attr_accessor :description

    attr_accessor :encryption

    # The file name of the document
    attr_accessor :file_name

    # The unique identifier for this resource
    attr_accessor :id

    # The date and time the resource was last updated
    attr_accessor :last_updated_time

    # Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
    attr_accessor :metadata

    # A user-friendly name for the document
    attr_accessor :name

    # The ID of the resource related to the document
    attr_accessor :related_resource_id

    attr_accessor :related_resource_type

    # The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces. 
    attr_accessor :tenant

    attr_accessor :type

    # Positive integer representing the version of the document
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
        :'available_versions' => :'available_versions',
        :'available_versions_info' => :'available_versions_info',
        :'batch_id' => :'batch_id',
        :'creation_time' => :'creation_time',
        :'deletion_reason' => :'deletion_reason',
        :'description' => :'description',
        :'encryption' => :'encryption',
        :'file_name' => :'file_name',
        :'id' => :'id',
        :'last_updated_time' => :'last_updated_time',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'related_resource_id' => :'related_resource_id',
        :'related_resource_type' => :'related_resource_type',
        :'tenant' => :'tenant',
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
        :'available_versions' => :'Array<Integer>',
        :'available_versions_info' => :'Array<DocumentVersionInfo>',
        :'batch_id' => :'String',
        :'creation_time' => :'Time',
        :'deletion_reason' => :'String',
        :'description' => :'String',
        :'encryption' => :'DocumentEncryption',
        :'file_name' => :'String',
        :'id' => :'String',
        :'last_updated_time' => :'Time',
        :'metadata' => :'Object',
        :'name' => :'String',
        :'related_resource_id' => :'String',
        :'related_resource_type' => :'RelatedResourceType',
        :'tenant' => :'String',
        :'type' => :'DocumentType',
        :'version' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::DocumentResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::DocumentResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'available_versions')
        if (value = attributes[:'available_versions']).is_a?(Array)
          self.available_versions = value
        end
      end

      if attributes.key?(:'available_versions_info')
        if (value = attributes[:'available_versions_info']).is_a?(Array)
          self.available_versions_info = value
        end
      end

      if attributes.key?(:'batch_id')
        self.batch_id = attributes[:'batch_id']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      end

      if attributes.key?(:'deletion_reason')
        self.deletion_reason = attributes[:'deletion_reason']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'encryption')
        self.encryption = attributes[:'encryption']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
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

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'related_resource_id')
        self.related_resource_id = attributes[:'related_resource_id']
      end

      if attributes.key?(:'related_resource_type')
        self.related_resource_type = attributes[:'related_resource_type']
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          available_versions == o.available_versions &&
          available_versions_info == o.available_versions_info &&
          batch_id == o.batch_id &&
          creation_time == o.creation_time &&
          deletion_reason == o.deletion_reason &&
          description == o.description &&
          encryption == o.encryption &&
          file_name == o.file_name &&
          id == o.id &&
          last_updated_time == o.last_updated_time &&
          metadata == o.metadata &&
          name == o.name &&
          related_resource_id == o.related_resource_id &&
          related_resource_type == o.related_resource_type &&
          tenant == o.tenant &&
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
      [available_versions, available_versions_info, batch_id, creation_time, deletion_reason, description, encryption, file_name, id, last_updated_time, metadata, name, related_resource_id, related_resource_type, tenant, type, version].hash
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
