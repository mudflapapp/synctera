=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 1.82.0

Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Synctera
  class AchDisputeResponse
    # The customer account related to the dispute, to which dispute-related credits will be posted.
    attr_accessor :account_id

    attr_accessor :applicable_regulation

    # The timestamp representing when the dispute was created
    attr_accessor :creation_time

    attr_accessor :credit_status

    # ISO 4217 Alpha-3 currency code
    attr_accessor :currency

    # The customer related to the dispute, to which dispute-related credits will be posted.
    attr_accessor :customer_id

    # The timestamp representing when the customer reported the dispute.
    attr_accessor :date_customer_reported

    attr_accessor :decision

    # Documents associated with the dispute.
    attr_accessor :dispute_documents

    # The amount to be disputed in cents.
    attr_accessor :disputed_amount

    # The unique identifier of the dispute
    attr_accessor :id

    attr_accessor :last_action_by

    # The timestamp representing when the dispute was last modified
    attr_accessor :last_updated_time

    attr_accessor :network

    attr_accessor :payment_rail

    attr_accessor :status

    # The id of the tenant containing the resource. 
    attr_accessor :tenant

    # The time by which provisional credit should be posted to the customer account in response to the dispute.
    attr_accessor :timestamp_provisional_credit_due

    # The ID of the posted transaction to be disputed.
    attr_accessor :transaction_id

    # History of all the action filed for the dispute.
    attr_accessor :action_history

    # List of actions that can be taken on the dispute.
    attr_accessor :available_actions

    attr_accessor :lifecycle_state

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
        :'applicable_regulation' => :'applicable_regulation',
        :'creation_time' => :'creation_time',
        :'credit_status' => :'credit_status',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'date_customer_reported' => :'date_customer_reported',
        :'decision' => :'decision',
        :'dispute_documents' => :'dispute_documents',
        :'disputed_amount' => :'disputed_amount',
        :'id' => :'id',
        :'last_action_by' => :'last_action_by',
        :'last_updated_time' => :'last_updated_time',
        :'network' => :'network',
        :'payment_rail' => :'payment_rail',
        :'status' => :'status',
        :'tenant' => :'tenant',
        :'timestamp_provisional_credit_due' => :'timestamp_provisional_credit_due',
        :'transaction_id' => :'transaction_id',
        :'action_history' => :'action_history',
        :'available_actions' => :'available_actions',
        :'lifecycle_state' => :'lifecycle_state'
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
        :'applicable_regulation' => :'DisputeRegulation',
        :'creation_time' => :'Time',
        :'credit_status' => :'DisputeCreditStatus',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'date_customer_reported' => :'Time',
        :'decision' => :'DisputeDecision',
        :'dispute_documents' => :'Array<DisputeDocumentResponse>',
        :'disputed_amount' => :'Integer',
        :'id' => :'String',
        :'last_action_by' => :'DisputeActionBy',
        :'last_updated_time' => :'Time',
        :'network' => :'DisputeNetwork',
        :'payment_rail' => :'PaymentRail',
        :'status' => :'DisputeStatus',
        :'tenant' => :'String',
        :'timestamp_provisional_credit_due' => :'Time',
        :'transaction_id' => :'String',
        :'action_history' => :'Array<AchDisputeActionResponse>',
        :'available_actions' => :'Array<AvailableAchAction>',
        :'lifecycle_state' => :'AchLifecycleState'
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
      :'DisputeResponseDetails'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Synctera::AchDisputeResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Synctera::AchDisputeResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      else
        self.account_id = nil
      end

      if attributes.key?(:'applicable_regulation')
        self.applicable_regulation = attributes[:'applicable_regulation']
      end

      if attributes.key?(:'creation_time')
        self.creation_time = attributes[:'creation_time']
      else
        self.creation_time = nil
      end

      if attributes.key?(:'credit_status')
        self.credit_status = attributes[:'credit_status']
      else
        self.credit_status = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      else
        self.customer_id = nil
      end

      if attributes.key?(:'date_customer_reported')
        self.date_customer_reported = attributes[:'date_customer_reported']
      else
        self.date_customer_reported = nil
      end

      if attributes.key?(:'decision')
        self.decision = attributes[:'decision']
      else
        self.decision = nil
      end

      if attributes.key?(:'dispute_documents')
        if (value = attributes[:'dispute_documents']).is_a?(Array)
          self.dispute_documents = value
        end
      else
        self.dispute_documents = nil
      end

      if attributes.key?(:'disputed_amount')
        self.disputed_amount = attributes[:'disputed_amount']
      else
        self.disputed_amount = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'last_action_by')
        self.last_action_by = attributes[:'last_action_by']
      end

      if attributes.key?(:'last_updated_time')
        self.last_updated_time = attributes[:'last_updated_time']
      else
        self.last_updated_time = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      else
        self.network = nil
      end

      if attributes.key?(:'payment_rail')
        self.payment_rail = attributes[:'payment_rail']
      else
        self.payment_rail = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'tenant')
        self.tenant = attributes[:'tenant']
      else
        self.tenant = nil
      end

      if attributes.key?(:'timestamp_provisional_credit_due')
        self.timestamp_provisional_credit_due = attributes[:'timestamp_provisional_credit_due']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      else
        self.transaction_id = nil
      end

      if attributes.key?(:'action_history')
        if (value = attributes[:'action_history']).is_a?(Array)
          self.action_history = value
        end
      else
        self.action_history = nil
      end

      if attributes.key?(:'available_actions')
        if (value = attributes[:'available_actions']).is_a?(Array)
          self.available_actions = value
        end
      else
        self.available_actions = nil
      end

      if attributes.key?(:'lifecycle_state')
        self.lifecycle_state = attributes[:'lifecycle_state']
      else
        self.lifecycle_state = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @creation_time.nil?
        invalid_properties.push('invalid value for "creation_time", creation_time cannot be nil.')
      end

      if @credit_status.nil?
        invalid_properties.push('invalid value for "credit_status", credit_status cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if @currency.to_s.length < 3
        invalid_properties.push('invalid value for "currency", the character length must be great than or equal to 3.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if @date_customer_reported.nil?
        invalid_properties.push('invalid value for "date_customer_reported", date_customer_reported cannot be nil.')
      end

      if @decision.nil?
        invalid_properties.push('invalid value for "decision", decision cannot be nil.')
      end

      if @dispute_documents.nil?
        invalid_properties.push('invalid value for "dispute_documents", dispute_documents cannot be nil.')
      end

      if @disputed_amount.nil?
        invalid_properties.push('invalid value for "disputed_amount", disputed_amount cannot be nil.')
      end

      if @disputed_amount < 1
        invalid_properties.push('invalid value for "disputed_amount", must be greater than or equal to 1.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_updated_time.nil?
        invalid_properties.push('invalid value for "last_updated_time", last_updated_time cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @payment_rail.nil?
        invalid_properties.push('invalid value for "payment_rail", payment_rail cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @tenant.nil?
        invalid_properties.push('invalid value for "tenant", tenant cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @action_history.nil?
        invalid_properties.push('invalid value for "action_history", action_history cannot be nil.')
      end

      if @available_actions.nil?
        invalid_properties.push('invalid value for "available_actions", available_actions cannot be nil.')
      end

      if @lifecycle_state.nil?
        invalid_properties.push('invalid value for "lifecycle_state", lifecycle_state cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_id.nil?
      return false if @creation_time.nil?
      return false if @credit_status.nil?
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @currency.to_s.length < 3
      return false if @customer_id.nil?
      return false if @date_customer_reported.nil?
      return false if @decision.nil?
      return false if @dispute_documents.nil?
      return false if @disputed_amount.nil?
      return false if @disputed_amount < 1
      return false if @id.nil?
      return false if @last_updated_time.nil?
      return false if @network.nil?
      return false if @payment_rail.nil?
      return false if @status.nil?
      return false if @tenant.nil?
      return false if @transaction_id.nil?
      return false if @action_history.nil?
      return false if @available_actions.nil?
      return false if @lifecycle_state.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      if currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      if currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency", the character length must be great than or equal to 3.'
      end

      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] disputed_amount Value to be assigned
    def disputed_amount=(disputed_amount)
      if disputed_amount.nil?
        fail ArgumentError, 'disputed_amount cannot be nil'
      end

      if disputed_amount < 1
        fail ArgumentError, 'invalid value for "disputed_amount", must be greater than or equal to 1.'
      end

      @disputed_amount = disputed_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          applicable_regulation == o.applicable_regulation &&
          creation_time == o.creation_time &&
          credit_status == o.credit_status &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          date_customer_reported == o.date_customer_reported &&
          decision == o.decision &&
          dispute_documents == o.dispute_documents &&
          disputed_amount == o.disputed_amount &&
          id == o.id &&
          last_action_by == o.last_action_by &&
          last_updated_time == o.last_updated_time &&
          network == o.network &&
          payment_rail == o.payment_rail &&
          status == o.status &&
          tenant == o.tenant &&
          timestamp_provisional_credit_due == o.timestamp_provisional_credit_due &&
          transaction_id == o.transaction_id &&
          action_history == o.action_history &&
          available_actions == o.available_actions &&
          lifecycle_state == o.lifecycle_state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, applicable_regulation, creation_time, credit_status, currency, customer_id, date_customer_reported, decision, dispute_documents, disputed_amount, id, last_action_by, last_updated_time, network, payment_rail, status, tenant, timestamp_provisional_credit_due, transaction_id, action_history, available_actions, lifecycle_state].hash
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
