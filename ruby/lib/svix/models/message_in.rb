=begin
#Svix API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'date'
require 'time'

module Svix
  class MessageIn
    attr_accessor :application

    # List of free-form identifiers that endpoints can filter by
    attr_accessor :channels

    # Optional unique identifier for the message
    attr_accessor :event_id

    # The event type's name
    attr_accessor :event_type

    attr_accessor :payload

    attr_accessor :payload_retention_period

    # List of free-form tags that can be filtered by when listing messages
    attr_accessor :tags

    # Extra parameters to pass to Transformations (for future use)
    attr_accessor :transformations_params

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'application' => :'application',
        :'channels' => :'channels',
        :'event_id' => :'eventId',
        :'event_type' => :'eventType',
        :'payload' => :'payload',
        :'payload_retention_period' => :'payloadRetentionPeriod',
        :'tags' => :'tags',
        :'transformations_params' => :'transformationsParams'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'application' => :'ApplicationIn',
        :'channels' => :'Array<String>',
        :'event_id' => :'String',
        :'event_type' => :'String',
        :'payload' => :'Object',
        :'payload_retention_period' => :'Integer',
        :'tags' => :'Array<String>',
        :'transformations_params' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'channels',
        :'event_id',
        :'tags',
        :'transformations_params'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Svix::MessageIn` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Svix::MessageIn`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'application')
        self.application = attributes[:'application']
      end

      if attributes.key?(:'channels')
        if (value = attributes[:'channels']).is_a?(Array)
          self.channels = value
        end
      end

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.key?(:'payload_retention_period')
        self.payload_retention_period = attributes[:'payload_retention_period']
      else
        self.payload_retention_period = 90
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'transformations_params')
        self.transformations_params = attributes[:'transformations_params']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@channels.nil? && @channels.length > 5
        invalid_properties.push('invalid value for "channels", number of items must be less than or equal to 5.')
      end

      if !@channels.nil? && @channels.length < 1
        invalid_properties.push('invalid value for "channels", number of items must be greater than or equal to 1.')
      end

      if !@event_id.nil? && @event_id.to_s.length > 256
        invalid_properties.push('invalid value for "event_id", the character length must be smaller than or equal to 256.')
      end

      if !@event_id.nil? && @event_id.to_s.length < 1
        invalid_properties.push('invalid value for "event_id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if !@event_id.nil? && @event_id !~ pattern
        invalid_properties.push("invalid value for \"event_id\", must conform to the pattern #{pattern}.")
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @event_type.to_s.length > 256
        invalid_properties.push('invalid value for "event_type", the character length must be smaller than or equal to 256.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @event_type !~ pattern
        invalid_properties.push("invalid value for \"event_type\", must conform to the pattern #{pattern}.")
      end

      if @payload.nil?
        invalid_properties.push('invalid value for "payload", payload cannot be nil.')
      end

      if !@payload_retention_period.nil? && @payload_retention_period > 90
        invalid_properties.push('invalid value for "payload_retention_period", must be smaller than or equal to 90.')
      end

      if !@payload_retention_period.nil? && @payload_retention_period < 5
        invalid_properties.push('invalid value for "payload_retention_period", must be greater than or equal to 5.')
      end

      if !@tags.nil? && @tags.length > 5
        invalid_properties.push('invalid value for "tags", number of items must be less than or equal to 5.')
      end

      if !@tags.nil? && @tags.length < 1
        invalid_properties.push('invalid value for "tags", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@channels.nil? && @channels.length > 5
      return false if !@channels.nil? && @channels.length < 1
      return false if !@event_id.nil? && @event_id.to_s.length > 256
      return false if !@event_id.nil? && @event_id.to_s.length < 1
      return false if !@event_id.nil? && @event_id !~ Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      return false if @event_type.nil?
      return false if @event_type.to_s.length > 256
      return false if @event_type !~ Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      return false if @payload.nil?
      return false if !@payload_retention_period.nil? && @payload_retention_period > 90
      return false if !@payload_retention_period.nil? && @payload_retention_period < 5
      return false if !@tags.nil? && @tags.length > 5
      return false if !@tags.nil? && @tags.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] channels Value to be assigned
    def channels=(channels)
      if !channels.nil? && channels.length > 5
        fail ArgumentError, 'invalid value for "channels", number of items must be less than or equal to 5.'
      end

      if !channels.nil? && channels.length < 1
        fail ArgumentError, 'invalid value for "channels", number of items must be greater than or equal to 1.'
      end

      @channels = channels
    end

    # Custom attribute writer method with validation
    # @param [Object] event_id Value to be assigned
    def event_id=(event_id)
      if !event_id.nil? && event_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "event_id", the character length must be smaller than or equal to 256.'
      end

      if !event_id.nil? && event_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "event_id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if !event_id.nil? && event_id !~ pattern
        fail ArgumentError, "invalid value for \"event_id\", must conform to the pattern #{pattern}."
      end

      @event_id = event_id
    end

    # Custom attribute writer method with validation
    # @param [Object] event_type Value to be assigned
    def event_type=(event_type)
      if event_type.nil?
        fail ArgumentError, 'event_type cannot be nil'
      end

      if event_type.to_s.length > 256
        fail ArgumentError, 'invalid value for "event_type", the character length must be smaller than or equal to 256.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if event_type !~ pattern
        fail ArgumentError, "invalid value for \"event_type\", must conform to the pattern #{pattern}."
      end

      @event_type = event_type
    end

    # Custom attribute writer method with validation
    # @param [Object] payload_retention_period Value to be assigned
    def payload_retention_period=(payload_retention_period)
      if !payload_retention_period.nil? && payload_retention_period > 90
        fail ArgumentError, 'invalid value for "payload_retention_period", must be smaller than or equal to 90.'
      end

      if !payload_retention_period.nil? && payload_retention_period < 5
        fail ArgumentError, 'invalid value for "payload_retention_period", must be greater than or equal to 5.'
      end

      @payload_retention_period = payload_retention_period
    end

    # Custom attribute writer method with validation
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      if !tags.nil? && tags.length > 5
        fail ArgumentError, 'invalid value for "tags", number of items must be less than or equal to 5.'
      end

      if !tags.nil? && tags.length < 1
        fail ArgumentError, 'invalid value for "tags", number of items must be greater than or equal to 1.'
      end

      @tags = tags
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          application == o.application &&
          channels == o.channels &&
          event_id == o.event_id &&
          event_type == o.event_type &&
          payload == o.payload &&
          payload_retention_period == o.payload_retention_period &&
          tags == o.tags &&
          transformations_params == o.transformations_params
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [application, channels, event_id, event_type, payload, payload_retention_period, tags, transformations_params].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = Svix.const_get(type)
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
