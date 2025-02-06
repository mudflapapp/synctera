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
  # An object containing information about an individual check performed.
  class Detail
    # Machine-readable identifier to allow grouping details into subsets.  Checks for the following categories should typcially be provided when onboarding personal customers: * `CIP` – Checks relating to a Customer Identification Program (CIP) including name, ID verification, and date of birth. * `ADDRESS` – Address check done either through a bureau or document verification. * `PHONE` – Phone checks, including verifying number and other correlation methods. * `EMAIL` – Email checks, including verifying email address and other correlation methods. * `FRAUD` – Checks relating to elements of fraud. * `SYNTHETIC` – Check relating to elements of synthetic identity. * `DEVICE` – Checks relating to elements of device risk. Can include SDK or IP screening. * `DOC_VERIFICATION` – Document Verification checks, where ID documents are submitted for verification, including liveness test, or other anti-forgery verification. * `SELFIE_CAPTURE` – Selfie capture check, including liveness test, or other anti-fake verification. * `SELFIE_DOCUMENT` – Check if selfie matches with photo on document. * `DOC_DETAILS` – Check if details on ID documents matches with supplied information. * `WATCHLIST` – Outcome from watchlist screenings (especially OFAC/SDN and other sanctions lists).  Checks for the following categories should typcially be provided when onboarding businesses customers: * `BUSINESS_NAME` – Business name check done against a bureau. * `OFFICE_ADDRESS` – Address check done either through a bureau or document verification. * `SOS_FILINGS` – Findings from a Secretary of State (SOS) filings check. * `WEBSITE` – Business website check. * `TIN_MATCH` – Taxpayer Identification Number (TIN) check from tax bureau. * `BANKRUPTCIES` – Check for any bankruptcy filings. * `SOS_DOMESTIC` – Outcome from a Domestic Secretary of State (SOS) filings check * `LICENSE` –  * `WATCHLIST` – Outcome from watchlist screenings (especially OFAC/SDN and other sanctions lists).  If you would like to provide additional information that doesn't fit with an existing category you may provide: * `OTHER` – A category for miscellaneous or uncategorized checks. 
    attr_accessor :category

    # Human-readable description explaining the individual check.
    attr_accessor :description

    # Human-readable grouping describing the aspect of the customer's identity examined by this check.
    attr_accessor :label

    # The result of the individual check. One of the following: * `PASS` – the check passed contributing to a positive outcome (or accepted verification result). * `INFO` – the check returned neutral information which may or may not explain a negative result. * `WARN` – the check was inconclusive and might require review. * `FAIL` – the check failed and might result in a failing outcome (or rejected verification_result). 
    attr_accessor :result

    # An arbitrary floating point score value which may be used to contextualize the human readable description.
    attr_accessor :score

    # A URL containing supporting information for this individual check.
    attr_accessor :url

    # Machine-readable description of the individual check. This field contains vendor-specific terms and may not be populated in all cases.
    attr_accessor :vendor_code

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
        :'category' => :'category',
        :'description' => :'description',
        :'label' => :'label',
        :'result' => :'result',
        :'score' => :'score',
        :'url' => :'url',
        :'vendor_code' => :'vendor_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'category' => :'String',
        :'description' => :'String',
        :'label' => :'String',
        :'result' => :'String',
        :'score' => :'Float',
        :'url' => :'String',
        :'vendor_code' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::Detail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::Detail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'result')
        self.result = attributes[:'result']
      end

      if attributes.key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'vendor_code')
        self.vendor_code = attributes[:'vendor_code']
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
      category_validator = EnumAttributeValidator.new('String', ["ADDRESS", "BANKRUPTCIES", "BUSINESS_NAME", "CIP", "DEVICE", "DOC_DETAILS", "DOC_VERIFICATION", "EMAIL", "FRAUD", "LICENSE", "OFFICE_ADDRESS", "OTHER", "PHONE", "SELFIE_CAPTURE", "SELFIE_DOCUMENT", "SOS_DOMESTIC", "SOS_FILINGS", "SYNTHETIC", "TIN_MATCH", "WATCHLIST", "WEBSITE"])
      return false unless category_validator.valid?(@category)
      result_validator = EnumAttributeValidator.new('String', ["FAIL", "INFO", "PASS", "WARN"])
      return false unless result_validator.valid?(@result)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category)
      validator = EnumAttributeValidator.new('String', ["ADDRESS", "BANKRUPTCIES", "BUSINESS_NAME", "CIP", "DEVICE", "DOC_DETAILS", "DOC_VERIFICATION", "EMAIL", "FRAUD", "LICENSE", "OFFICE_ADDRESS", "OTHER", "PHONE", "SELFIE_CAPTURE", "SELFIE_DOCUMENT", "SOS_DOMESTIC", "SOS_FILINGS", "SYNTHETIC", "TIN_MATCH", "WATCHLIST", "WEBSITE"])
      unless validator.valid?(category)
        warn "invalid value for \"category\", must be one of #{validator.allowable_values}."
      end
      @category = category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result Object to be assigned
    def result=(result)
      validator = EnumAttributeValidator.new('String', ["FAIL", "INFO", "PASS", "WARN"])
      unless validator.valid?(result)
        warn "invalid value for \"result\", must be one of #{validator.allowable_values}."
      end
      @result = result
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          description == o.description &&
          label == o.label &&
          result == o.result &&
          score == o.score &&
          url == o.url &&
          vendor_code == o.vendor_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [category, description, label, result, score, url, vendor_code].hash
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
