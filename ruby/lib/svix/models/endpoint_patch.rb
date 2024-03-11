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
  class EndpointPatch
    attr_accessor :channels

    attr_accessor :description

    attr_accessor :disabled

    attr_accessor :filter_types

    attr_accessor :metadata

    attr_accessor :rate_limit

    # The endpoint's verification secret. If `null` is passed, a secret is automatically generated. Format: `base64` encoded random bytes optionally prefixed with `whsec_`. Recommended size: 24.
    attr_accessor :secret

    # The ep's UID
    attr_accessor :uid

    attr_accessor :url

    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channels' => :'channels',
        :'description' => :'description',
        :'disabled' => :'disabled',
        :'filter_types' => :'filterTypes',
        :'metadata' => :'metadata',
        :'rate_limit' => :'rateLimit',
        :'secret' => :'secret',
        :'uid' => :'uid',
        :'url' => :'url',
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
        :'channels' => :'Array<String>',
        :'description' => :'String',
        :'disabled' => :'Boolean',
        :'filter_types' => :'Array<String>',
        :'metadata' => :'Hash<String, String>',
        :'rate_limit' => :'Integer',
        :'secret' => :'String',
        :'uid' => :'String',
        :'url' => :'String',
        :'version' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'channels',
        :'filter_types',
        :'rate_limit',
        :'secret',
        :'uid',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Svix::EndpointPatch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Svix::EndpointPatch`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'channels')
        if (value = attributes[:'channels']).is_a?(Array)
          self.channels = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'filter_types')
        if (value = attributes[:'filter_types']).is_a?(Array)
          self.filter_types = value
        end
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'rate_limit')
        self.rate_limit = attributes[:'rate_limit']
      end

      if attributes.key?(:'secret')
        self.secret = attributes[:'secret']
      end

      if attributes.key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@rate_limit.nil? && @rate_limit < 0
        invalid_properties.push('invalid value for "rate_limit", must be greater than or equal to 0.')
      end

      pattern = Regexp.new(/^(whsec_)?[a-zA-Z0-9+\/=]{32,100}$/)
      if !@secret.nil? && @secret !~ pattern
        invalid_properties.push("invalid value for \"secret\", must conform to the pattern #{pattern}.")
      end

      if !@uid.nil? && @uid.to_s.length > 256
        invalid_properties.push('invalid value for "uid", the character length must be smaller than or equal to 256.')
      end

      if !@uid.nil? && @uid.to_s.length < 1
        invalid_properties.push('invalid value for "uid", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if !@uid.nil? && @uid !~ pattern
        invalid_properties.push("invalid value for \"uid\", must conform to the pattern #{pattern}.")
      end

      if !@version.nil? && @version < 1
        invalid_properties.push('invalid value for "version", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@rate_limit.nil? && @rate_limit < 0
      return false if !@secret.nil? && @secret !~ Regexp.new(/^(whsec_)?[a-zA-Z0-9+\/=]{32,100}$/)
      return false if !@uid.nil? && @uid.to_s.length > 256
      return false if !@uid.nil? && @uid.to_s.length < 1
      return false if !@uid.nil? && @uid !~ Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      return false if !@version.nil? && @version < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] channels Value to be assigned
    def channels=(channels)
      @channels = channels
    end

    # Custom attribute writer method with validation
    # @param [Object] filter_types Value to be assigned
    def filter_types=(filter_types)
      @filter_types = filter_types
    end

    # Custom attribute writer method with validation
    # @param [Object] rate_limit Value to be assigned
    def rate_limit=(rate_limit)
      if !rate_limit.nil? && rate_limit < 0
        fail ArgumentError, 'invalid value for "rate_limit", must be greater than or equal to 0.'
      end

      @rate_limit = rate_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] secret Value to be assigned
    def secret=(secret)
      pattern = Regexp.new(/^(whsec_)?[a-zA-Z0-9+\/=]{32,100}$/)
      if !secret.nil? && secret !~ pattern
        fail ArgumentError, "invalid value for \"secret\", must conform to the pattern #{pattern}."
      end

      @secret = secret
    end

    # Custom attribute writer method with validation
    # @param [Object] uid Value to be assigned
    def uid=(uid)
      if !uid.nil? && uid.to_s.length > 256
        fail ArgumentError, 'invalid value for "uid", the character length must be smaller than or equal to 256.'
      end

      if !uid.nil? && uid.to_s.length < 1
        fail ArgumentError, 'invalid value for "uid", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if !uid.nil? && uid !~ pattern
        fail ArgumentError, "invalid value for \"uid\", must conform to the pattern #{pattern}."
      end

      @uid = uid
    end

    # Custom attribute writer method with validation
    # @param [Object] version Value to be assigned
    def version=(version)
      if !version.nil? && version < 1
        fail ArgumentError, 'invalid value for "version", must be greater than or equal to 1.'
      end

      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channels == o.channels &&
          description == o.description &&
          disabled == o.disabled &&
          filter_types == o.filter_types &&
          metadata == o.metadata &&
          rate_limit == o.rate_limit &&
          secret == o.secret &&
          uid == o.uid &&
          url == o.url &&
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
      [channels, description, disabled, filter_types, metadata, rate_limit, secret, uid, url, version].hash
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