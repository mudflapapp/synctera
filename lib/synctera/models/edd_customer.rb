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
  class EddCustomer
    # The amount earned at the specified frequency. For example, $112.35 USD is represented as 11235 cents).
    attr_accessor :amount

    # The currency in ISO 4217 format.
    attr_accessor :currency

    attr_accessor :frequency

    # Additional questions regarding the related resource
    attr_accessor :additional_questions

    # The ID of the case related to this EDD record
    attr_accessor :case_id

    # The reason for this EDD record to be requested
    attr_accessor :reason

    # related resource UUID
    attr_accessor :related_resource_id

    attr_accessor :related_resource_type

    # List of countries where the related customer holds citizenship.
    attr_accessor :citizenship_countries

    # The type of employment.
    attr_accessor :employment_type

    attr_accessor :income

    # The number of negative news findings.
    attr_accessor :negative_news_findings

    # The occupation of the related resource.
    attr_accessor :occupation

    attr_accessor :occupation_industry

    # True if the customer is expected to use direct deposit at a regular frequency.
    attr_accessor :recurring_direct_deposit

    # The type of residence.
    attr_accessor :residence_type

    attr_accessor :residential_expense

    # The sources of wealth for the customer.
    attr_accessor :source_of_wealth

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
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'frequency' => :'frequency',
        :'additional_questions' => :'additional_questions',
        :'case_id' => :'case_id',
        :'reason' => :'reason',
        :'related_resource_id' => :'related_resource_id',
        :'related_resource_type' => :'related_resource_type',
        :'citizenship_countries' => :'citizenship_countries',
        :'employment_type' => :'employment_type',
        :'income' => :'income',
        :'negative_news_findings' => :'negative_news_findings',
        :'occupation' => :'occupation',
        :'occupation_industry' => :'occupation_industry',
        :'recurring_direct_deposit' => :'recurring_direct_deposit',
        :'residence_type' => :'residence_type',
        :'residential_expense' => :'residential_expense',
        :'source_of_wealth' => :'source_of_wealth'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'currency' => :'String',
        :'frequency' => :'Frequency',
        :'additional_questions' => :'Array<Question>',
        :'case_id' => :'Integer',
        :'reason' => :'String',
        :'related_resource_id' => :'String',
        :'related_resource_type' => :'RelatedResourceType1',
        :'citizenship_countries' => :'Array<String>',
        :'employment_type' => :'String',
        :'income' => :'Income',
        :'negative_news_findings' => :'Integer',
        :'occupation' => :'String',
        :'occupation_industry' => :'IndustryType',
        :'recurring_direct_deposit' => :'Boolean',
        :'residence_type' => :'String',
        :'residential_expense' => :'ResidentialExpense',
        :'source_of_wealth' => :'Array<SourceOfWealth>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'frequency',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'EddBaseReport',
      :'EstimatedRevenue'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::EddCustomer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::EddCustomer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'additional_questions')
        if (value = attributes[:'additional_questions']).is_a?(Array)
          self.additional_questions = value
        end
      end

      if attributes.key?(:'case_id')
        self.case_id = attributes[:'case_id']
      end

      if attributes.key?(:'reason')
        self.reason = attributes[:'reason']
      else
        self.reason = nil
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

      if attributes.key?(:'citizenship_countries')
        if (value = attributes[:'citizenship_countries']).is_a?(Array)
          self.citizenship_countries = value
        end
      end

      if attributes.key?(:'employment_type')
        self.employment_type = attributes[:'employment_type']
      end

      if attributes.key?(:'income')
        self.income = attributes[:'income']
      end

      if attributes.key?(:'negative_news_findings')
        self.negative_news_findings = attributes[:'negative_news_findings']
      end

      if attributes.key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.key?(:'occupation_industry')
        self.occupation_industry = attributes[:'occupation_industry']
      end

      if attributes.key?(:'recurring_direct_deposit')
        self.recurring_direct_deposit = attributes[:'recurring_direct_deposit']
      end

      if attributes.key?(:'residence_type')
        self.residence_type = attributes[:'residence_type']
      end

      if attributes.key?(:'residential_expense')
        self.residential_expense = attributes[:'residential_expense']
      end

      if attributes.key?(:'source_of_wealth')
        if (value = attributes[:'source_of_wealth']).is_a?(Array)
          self.source_of_wealth = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      pattern = Regexp.new(/^[A-Z]{3}$/)
      if !@currency.nil? && @currency !~ pattern
        invalid_properties.push("invalid value for \"currency\", must conform to the pattern #{pattern}.")
      end

      if @reason.nil?
        invalid_properties.push('invalid value for "reason", reason cannot be nil.')
      end

      if @related_resource_id.nil?
        invalid_properties.push('invalid value for "related_resource_id", related_resource_id cannot be nil.')
      end

      if @related_resource_type.nil?
        invalid_properties.push('invalid value for "related_resource_type", related_resource_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@currency.nil? && @currency !~ Regexp.new(/^[A-Z]{3}$/)
      return false if @reason.nil?
      reason_validator = EnumAttributeValidator.new('String', ["CASE_REQUEST", "STANDARD_SUBMISSION"])
      return false unless reason_validator.valid?(@reason)
      return false if @related_resource_id.nil?
      return false if @related_resource_type.nil?
      employment_type_validator = EnumAttributeValidator.new('String', ["CONTRACTOR", "FULL_TIME", "INTERN", "OTHER", "PART_TIME", "RETIRED", "SELF_EMPLOYED", "STUDENT", "TEMPORARY", "VOLUNTEER"])
      return false unless employment_type_validator.valid?(@employment_type)
      residence_type_validator = EnumAttributeValidator.new('String', ["OTHER", "OWN", "RENT"])
      return false unless residence_type_validator.valid?(@residence_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if currency !~ pattern
        fail ArgumentError, "invalid value for \"currency\", must conform to the pattern #{pattern}."
      end

      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason)
      validator = EnumAttributeValidator.new('String', ["CASE_REQUEST", "STANDARD_SUBMISSION"])
      unless validator.valid?(reason)
        fail ArgumentError, "invalid value for \"reason\", must be one of #{validator.allowable_values}."
      end
      @reason = reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employment_type Object to be assigned
    def employment_type=(employment_type)
      validator = EnumAttributeValidator.new('String', ["CONTRACTOR", "FULL_TIME", "INTERN", "OTHER", "PART_TIME", "RETIRED", "SELF_EMPLOYED", "STUDENT", "TEMPORARY", "VOLUNTEER"])
      unless validator.valid?(employment_type)
        fail ArgumentError, "invalid value for \"employment_type\", must be one of #{validator.allowable_values}."
      end
      @employment_type = employment_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] residence_type Object to be assigned
    def residence_type=(residence_type)
      validator = EnumAttributeValidator.new('String', ["OTHER", "OWN", "RENT"])
      unless validator.valid?(residence_type)
        fail ArgumentError, "invalid value for \"residence_type\", must be one of #{validator.allowable_values}."
      end
      @residence_type = residence_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          currency == o.currency &&
          frequency == o.frequency &&
          additional_questions == o.additional_questions &&
          case_id == o.case_id &&
          reason == o.reason &&
          related_resource_id == o.related_resource_id &&
          related_resource_type == o.related_resource_type &&
          citizenship_countries == o.citizenship_countries &&
          employment_type == o.employment_type &&
          income == o.income &&
          negative_news_findings == o.negative_news_findings &&
          occupation == o.occupation &&
          occupation_industry == o.occupation_industry &&
          recurring_direct_deposit == o.recurring_direct_deposit &&
          residence_type == o.residence_type &&
          residential_expense == o.residential_expense &&
          source_of_wealth == o.source_of_wealth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, currency, frequency, additional_questions, case_id, reason, related_resource_id, related_resource_type, citizenship_countries, employment_type, income, negative_news_findings, occupation, occupation_industry, recurring_direct_deposit, residence_type, residential_expense, source_of_wealth].hash
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
