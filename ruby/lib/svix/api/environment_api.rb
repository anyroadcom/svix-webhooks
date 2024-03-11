=begin
#Svix API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'cgi'

module Svix
  class EnvironmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Export Environment Configuration
    # Download a JSON file containing all org-settings and event types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [EnvironmentOut]
    def v1_environment_export(opts = {})
      data, _status_code, _headers = v1_environment_export_with_http_info(opts)
      data
    end

    # Export Environment Configuration
    # Download a JSON file containing all org-settings and event types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(EnvironmentOut, Integer, Hash)>] EnvironmentOut data, response status code and response headers
    def v1_environment_export_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentApi.v1_environment_export ...'
      end
      # resource path
      local_var_path = '/api/v1/environment/export/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'idempotency-key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EnvironmentOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"EnvironmentApi.v1_environment_export",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentApi#v1_environment_export\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Export Environment Configuration
    # Download a JSON file containing all org-settings and event types
    # @param [Hash] opts the optional parameters
    # @return [EnvironmentOut]
    def v1_environment_export_get(opts = {})
      data, _status_code, _headers = v1_environment_export_get_with_http_info(opts)
      data
    end

    # Export Environment Configuration
    # Download a JSON file containing all org-settings and event types
    # @param [Hash] opts the optional parameters
    # @return [Array<(EnvironmentOut, Integer, Hash)>] EnvironmentOut data, response status code and response headers
    def v1_environment_export_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentApi.v1_environment_export_get ...'
      end
      # resource path
      local_var_path = '/api/v1/environment/export/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EnvironmentOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"EnvironmentApi.v1_environment_export_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentApi#v1_environment_export_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import Environment Configuration
    # Import a configuration into the active organization. It doesn't delete anything, only adds/updates what was passed to it.
    # @param environment_in [EnvironmentIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [nil]
    def v1_environment_import(environment_in, opts = {})
      v1_environment_import_with_http_info(environment_in, opts)
      nil
    end

    # Import Environment Configuration
    # Import a configuration into the active organization. It doesn&#39;t delete anything, only adds/updates what was passed to it.
    # @param environment_in [EnvironmentIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_environment_import_with_http_info(environment_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EnvironmentApi.v1_environment_import ...'
      end
      # verify the required parameter 'environment_in' is set
      if @api_client.config.client_side_validation && environment_in.nil?
        fail ArgumentError, "Missing the required parameter 'environment_in' when calling EnvironmentApi.v1_environment_import"
      end
      # resource path
      local_var_path = '/api/v1/environment/import/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'idempotency-key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(environment_in)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"EnvironmentApi.v1_environment_import",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EnvironmentApi#v1_environment_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
