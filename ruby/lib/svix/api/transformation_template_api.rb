=begin
#Svix API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'cgi'

module Svix
  class TransformationTemplateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Transformation Template
    # Create a new transformation template
    # @param template_in [TemplateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [TemplateOut]
    def v1_transformation_template_create(template_in, opts = {})
      data, _status_code, _headers = v1_transformation_template_create_with_http_info(template_in, opts)
      data
    end

    # Create Transformation Template
    # Create a new transformation template
    # @param template_in [TemplateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(TemplateOut, Integer, Hash)>] TemplateOut data, response status code and response headers
    def v1_transformation_template_create_with_http_info(template_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_create ...'
      end
      # verify the required parameter 'template_in' is set
      if @api_client.config.client_side_validation && template_in.nil?
        fail ArgumentError, "Missing the required parameter 'template_in' when calling TransformationTemplateApi.v1_transformation_template_create"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(template_in)

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Transformation Template
    # Delete a transformation template
    # @param transformation_template_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_transformation_template_delete(transformation_template_id, opts = {})
      v1_transformation_template_delete_with_http_info(transformation_template_id, opts)
      nil
    end

    # Delete Transformation Template
    # Delete a transformation template
    # @param transformation_template_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_transformation_template_delete_with_http_info(transformation_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_delete ...'
      end
      # verify the required parameter 'transformation_template_id' is set
      if @api_client.config.client_side_validation && transformation_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'transformation_template_id' when calling TransformationTemplateApi.v1_transformation_template_delete"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/{transformation_template_id}'.sub('{' + 'transformation_template_id' + '}', CGI.escape(transformation_template_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate
    # Use OpenAI's Completion API to generate code for a transformation template
    # @param generate_in [GenerateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [GenerateOut]
    def v1_transformation_template_generate(generate_in, opts = {})
      data, _status_code, _headers = v1_transformation_template_generate_with_http_info(generate_in, opts)
      data
    end

    # Generate
    # Use OpenAI&#39;s Completion API to generate code for a transformation template
    # @param generate_in [GenerateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(GenerateOut, Integer, Hash)>] GenerateOut data, response status code and response headers
    def v1_transformation_template_generate_with_http_info(generate_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_generate ...'
      end
      # verify the required parameter 'generate_in' is set
      if @api_client.config.client_side_validation && generate_in.nil?
        fail ArgumentError, "Missing the required parameter 'generate_in' when calling TransformationTemplateApi.v1_transformation_template_generate"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/generate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(generate_in)

      # return_type
      return_type = opts[:debug_return_type] || 'GenerateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_generate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_generate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Transformation Template
    # Get a transformation template
    # @param transformation_template_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [TemplateOut]
    def v1_transformation_template_get(transformation_template_id, opts = {})
      data, _status_code, _headers = v1_transformation_template_get_with_http_info(transformation_template_id, opts)
      data
    end

    # Get Transformation Template
    # Get a transformation template
    # @param transformation_template_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateOut, Integer, Hash)>] TemplateOut data, response status code and response headers
    def v1_transformation_template_get_with_http_info(transformation_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_get ...'
      end
      # verify the required parameter 'transformation_template_id' is set
      if @api_client.config.client_side_validation && transformation_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'transformation_template_id' when calling TransformationTemplateApi.v1_transformation_template_get"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/{transformation_template_id}'.sub('{' + 'transformation_template_id' + '}', CGI.escape(transformation_template_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TemplateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Transformation Templates
    # List all transformation templates for an application
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items
    # @option opts [String] :iterator The iterator returned from a prior invocation
    # @option opts [Ordering] :order The sorting order of the returned items
    # @return [ListResponseTemplateOut]
    def v1_transformation_template_list(opts = {})
      data, _status_code, _headers = v1_transformation_template_list_with_http_info(opts)
      data
    end

    # List Transformation Templates
    # List all transformation templates for an application
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items
    # @option opts [String] :iterator The iterator returned from a prior invocation
    # @option opts [Ordering] :order The sorting order of the returned items
    # @return [Array<(ListResponseTemplateOut, Integer, Hash)>] ListResponseTemplateOut data, response status code and response headers
    def v1_transformation_template_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransformationTemplateApi.v1_transformation_template_list, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransformationTemplateApi.v1_transformation_template_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/v1/transformation-template/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'iterator'] = opts[:'iterator'] if !opts[:'iterator'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListResponseTemplateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authorize Discord
    # Get Discord Incoming webhook URL
    # @param oauth_payload_in [OauthPayloadIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [OauthPayloadOut]
    def v1_transformation_template_oauth_discord(oauth_payload_in, opts = {})
      data, _status_code, _headers = v1_transformation_template_oauth_discord_with_http_info(oauth_payload_in, opts)
      data
    end

    # Authorize Discord
    # Get Discord Incoming webhook URL
    # @param oauth_payload_in [OauthPayloadIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(OauthPayloadOut, Integer, Hash)>] OauthPayloadOut data, response status code and response headers
    def v1_transformation_template_oauth_discord_with_http_info(oauth_payload_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_oauth_discord ...'
      end
      # verify the required parameter 'oauth_payload_in' is set
      if @api_client.config.client_side_validation && oauth_payload_in.nil?
        fail ArgumentError, "Missing the required parameter 'oauth_payload_in' when calling TransformationTemplateApi.v1_transformation_template_oauth_discord"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/oauth/discord'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(oauth_payload_in)

      # return_type
      return_type = opts[:debug_return_type] || 'OauthPayloadOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_oauth_discord",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_oauth_discord\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authorize Slack
    # Get Slack Incoming webhook URL
    # @param oauth_payload_in [OauthPayloadIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [OauthPayloadOut]
    def v1_transformation_template_oauth_slack(oauth_payload_in, opts = {})
      data, _status_code, _headers = v1_transformation_template_oauth_slack_with_http_info(oauth_payload_in, opts)
      data
    end

    # Authorize Slack
    # Get Slack Incoming webhook URL
    # @param oauth_payload_in [OauthPayloadIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(OauthPayloadOut, Integer, Hash)>] OauthPayloadOut data, response status code and response headers
    def v1_transformation_template_oauth_slack_with_http_info(oauth_payload_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_oauth_slack ...'
      end
      # verify the required parameter 'oauth_payload_in' is set
      if @api_client.config.client_side_validation && oauth_payload_in.nil?
        fail ArgumentError, "Missing the required parameter 'oauth_payload_in' when calling TransformationTemplateApi.v1_transformation_template_oauth_slack"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/oauth/slack'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(oauth_payload_in)

      # return_type
      return_type = opts[:debug_return_type] || 'OauthPayloadOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_oauth_slack",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_oauth_slack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Transformation Template
    # Partially update a transformation template
    # @param transformation_template_id [String] 
    # @param template_patch [TemplatePatch] 
    # @param [Hash] opts the optional parameters
    # @return [TemplateOut]
    def v1_transformation_template_patch(transformation_template_id, template_patch, opts = {})
      data, _status_code, _headers = v1_transformation_template_patch_with_http_info(transformation_template_id, template_patch, opts)
      data
    end

    # Patch Transformation Template
    # Partially update a transformation template
    # @param transformation_template_id [String] 
    # @param template_patch [TemplatePatch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateOut, Integer, Hash)>] TemplateOut data, response status code and response headers
    def v1_transformation_template_patch_with_http_info(transformation_template_id, template_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_patch ...'
      end
      # verify the required parameter 'transformation_template_id' is set
      if @api_client.config.client_side_validation && transformation_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'transformation_template_id' when calling TransformationTemplateApi.v1_transformation_template_patch"
      end
      # verify the required parameter 'template_patch' is set
      if @api_client.config.client_side_validation && template_patch.nil?
        fail ArgumentError, "Missing the required parameter 'template_patch' when calling TransformationTemplateApi.v1_transformation_template_patch"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/{transformation_template_id}'.sub('{' + 'transformation_template_id' + '}', CGI.escape(transformation_template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(template_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Simulate
    # Simulate running the transformation on the payload and code
    # @param transformation_simulate_in [TransformationSimulateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [TransformationSimulateOut]
    def v1_transformation_template_simulate(transformation_simulate_in, opts = {})
      data, _status_code, _headers = v1_transformation_template_simulate_with_http_info(transformation_simulate_in, opts)
      data
    end

    # Simulate
    # Simulate running the transformation on the payload and code
    # @param transformation_simulate_in [TransformationSimulateIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(TransformationSimulateOut, Integer, Hash)>] TransformationSimulateOut data, response status code and response headers
    def v1_transformation_template_simulate_with_http_info(transformation_simulate_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_simulate ...'
      end
      # verify the required parameter 'transformation_simulate_in' is set
      if @api_client.config.client_side_validation && transformation_simulate_in.nil?
        fail ArgumentError, "Missing the required parameter 'transformation_simulate_in' when calling TransformationTemplateApi.v1_transformation_template_simulate"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/simulate'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(transformation_simulate_in)

      # return_type
      return_type = opts[:debug_return_type] || 'TransformationSimulateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_simulate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_simulate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Transformation Template
    # Update a transformation template
    # @param transformation_template_id [String] 
    # @param template_update [TemplateUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [TemplateOut]
    def v1_transformation_template_update(transformation_template_id, template_update, opts = {})
      data, _status_code, _headers = v1_transformation_template_update_with_http_info(transformation_template_id, template_update, opts)
      data
    end

    # Update Transformation Template
    # Update a transformation template
    # @param transformation_template_id [String] 
    # @param template_update [TemplateUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateOut, Integer, Hash)>] TemplateOut data, response status code and response headers
    def v1_transformation_template_update_with_http_info(transformation_template_id, template_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransformationTemplateApi.v1_transformation_template_update ...'
      end
      # verify the required parameter 'transformation_template_id' is set
      if @api_client.config.client_side_validation && transformation_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'transformation_template_id' when calling TransformationTemplateApi.v1_transformation_template_update"
      end
      # verify the required parameter 'template_update' is set
      if @api_client.config.client_side_validation && template_update.nil?
        fail ArgumentError, "Missing the required parameter 'template_update' when calling TransformationTemplateApi.v1_transformation_template_update"
      end
      # resource path
      local_var_path = '/api/v1/transformation-template/{transformation_template_id}'.sub('{' + 'transformation_template_id' + '}', CGI.escape(transformation_template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(template_update)

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"TransformationTemplateApi.v1_transformation_template_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransformationTemplateApi#v1_transformation_template_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end