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
  # Defines if the business is involved in a few high risk industries.
  class SpecificInvolvement
    # Defines if the business is in the arms/defense, private security firms, or private military contractors.
    attr_accessor :arms_defense_or_security

    # Defines if the business is in the cannabis industry.
    attr_accessor :cannabis_industry

    # Defines if the business is an embassy or a consulate.
    attr_accessor :embassies_or_consulates

    # Defines if the business is involved in illegal activities, prostitution, or pirated goods.
    attr_accessor :illegal_activities_prostitution_or_pirated_goods

    # Defines if the business is a law firm or a fiduciary.
    attr_accessor :law_firm_or_fiduciary

    # Defines if the business is a licensed money service business.
    attr_accessor :licensed_money_service_business

    # Defines if the business is a provider of online lottery, mail order lotteries and sweepstakes Non-Fiat Currency (including open loop virtual currency), and Unlawful Internet Gambling.
    attr_accessor :lotteries_crypto_currency_or_illegal_internet_gambling

    # Defines if the business is a NGO or a nonprofit.
    attr_accessor :ngo_or_nonprofit

    # Defines if the business is in the precious metals, stones, jewellery industry, or rough diamond trade.
    attr_accessor :precious_metals_stones_or_jewellery

    # Defines if the business is a shell bank or a money service business where licensing is required.
    attr_accessor :shell_banks_or_unlicensed_money_service_business

    # Defines if the business is a third party processor.
    attr_accessor :third_party_processor

    # Defines if the business is a salon, massage clinic, spa, gift card retailer, or wholesaler.
    attr_accessor :wellness_gift_cards_wholesaler

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'arms_defense_or_security' => :'arms_defense_or_security',
        :'cannabis_industry' => :'cannabis_industry',
        :'embassies_or_consulates' => :'embassies_or_consulates',
        :'illegal_activities_prostitution_or_pirated_goods' => :'illegal_activities_prostitution_or_pirated_goods',
        :'law_firm_or_fiduciary' => :'law_firm_or_fiduciary',
        :'licensed_money_service_business' => :'licensed_money_service_business',
        :'lotteries_crypto_currency_or_illegal_internet_gambling' => :'lotteries_crypto_currency_or_illegal_internet_gambling',
        :'ngo_or_nonprofit' => :'ngo_or_nonprofit',
        :'precious_metals_stones_or_jewellery' => :'precious_metals_stones_or_jewellery',
        :'shell_banks_or_unlicensed_money_service_business' => :'shell_banks_or_unlicensed_money_service_business',
        :'third_party_processor' => :'third_party_processor',
        :'wellness_gift_cards_wholesaler' => :'wellness_gift_cards_wholesaler'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'arms_defense_or_security' => :'Boolean',
        :'cannabis_industry' => :'Boolean',
        :'embassies_or_consulates' => :'Boolean',
        :'illegal_activities_prostitution_or_pirated_goods' => :'Boolean',
        :'law_firm_or_fiduciary' => :'Boolean',
        :'licensed_money_service_business' => :'Boolean',
        :'lotteries_crypto_currency_or_illegal_internet_gambling' => :'Boolean',
        :'ngo_or_nonprofit' => :'Boolean',
        :'precious_metals_stones_or_jewellery' => :'Boolean',
        :'shell_banks_or_unlicensed_money_service_business' => :'Boolean',
        :'third_party_processor' => :'Boolean',
        :'wellness_gift_cards_wholesaler' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::SpecificInvolvement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::SpecificInvolvement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'arms_defense_or_security')
        self.arms_defense_or_security = attributes[:'arms_defense_or_security']
      end

      if attributes.key?(:'cannabis_industry')
        self.cannabis_industry = attributes[:'cannabis_industry']
      end

      if attributes.key?(:'embassies_or_consulates')
        self.embassies_or_consulates = attributes[:'embassies_or_consulates']
      end

      if attributes.key?(:'illegal_activities_prostitution_or_pirated_goods')
        self.illegal_activities_prostitution_or_pirated_goods = attributes[:'illegal_activities_prostitution_or_pirated_goods']
      end

      if attributes.key?(:'law_firm_or_fiduciary')
        self.law_firm_or_fiduciary = attributes[:'law_firm_or_fiduciary']
      end

      if attributes.key?(:'licensed_money_service_business')
        self.licensed_money_service_business = attributes[:'licensed_money_service_business']
      end

      if attributes.key?(:'lotteries_crypto_currency_or_illegal_internet_gambling')
        self.lotteries_crypto_currency_or_illegal_internet_gambling = attributes[:'lotteries_crypto_currency_or_illegal_internet_gambling']
      end

      if attributes.key?(:'ngo_or_nonprofit')
        self.ngo_or_nonprofit = attributes[:'ngo_or_nonprofit']
      end

      if attributes.key?(:'precious_metals_stones_or_jewellery')
        self.precious_metals_stones_or_jewellery = attributes[:'precious_metals_stones_or_jewellery']
      end

      if attributes.key?(:'shell_banks_or_unlicensed_money_service_business')
        self.shell_banks_or_unlicensed_money_service_business = attributes[:'shell_banks_or_unlicensed_money_service_business']
      end

      if attributes.key?(:'third_party_processor')
        self.third_party_processor = attributes[:'third_party_processor']
      end

      if attributes.key?(:'wellness_gift_cards_wholesaler')
        self.wellness_gift_cards_wholesaler = attributes[:'wellness_gift_cards_wholesaler']
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
          arms_defense_or_security == o.arms_defense_or_security &&
          cannabis_industry == o.cannabis_industry &&
          embassies_or_consulates == o.embassies_or_consulates &&
          illegal_activities_prostitution_or_pirated_goods == o.illegal_activities_prostitution_or_pirated_goods &&
          law_firm_or_fiduciary == o.law_firm_or_fiduciary &&
          licensed_money_service_business == o.licensed_money_service_business &&
          lotteries_crypto_currency_or_illegal_internet_gambling == o.lotteries_crypto_currency_or_illegal_internet_gambling &&
          ngo_or_nonprofit == o.ngo_or_nonprofit &&
          precious_metals_stones_or_jewellery == o.precious_metals_stones_or_jewellery &&
          shell_banks_or_unlicensed_money_service_business == o.shell_banks_or_unlicensed_money_service_business &&
          third_party_processor == o.third_party_processor &&
          wellness_gift_cards_wholesaler == o.wellness_gift_cards_wholesaler
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [arms_defense_or_security, cannabis_industry, embassies_or_consulates, illegal_activities_prostitution_or_pirated_goods, law_firm_or_fiduciary, licensed_money_service_business, lotteries_crypto_currency_or_illegal_internet_gambling, ngo_or_nonprofit, precious_metals_stones_or_jewellery, shell_banks_or_unlicensed_money_service_business, third_party_processor, wellness_gift_cards_wholesaler].hash
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
