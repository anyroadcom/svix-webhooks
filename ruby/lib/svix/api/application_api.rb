=begin
#Svix API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'cgi'

module Svix
  class ApplicationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get App Usage Stats
    # Get basic statistics for all applications.
    # @param since [Time] Filter the range to data after this date
    # @param _until [Time] Filter the range to data before this date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items (default to 50)
    # @option opts [String] :iterator The iterator to use (depends on the chosen ordering)
    # @return [ListResponseApplicationStats]
    def get_app_usage_stats_api_v1_app_stats_usage_get(since, _until, opts = {})
      data, _status_code, _headers = get_app_usage_stats_api_v1_app_stats_usage_get_with_http_info(since, _until, opts)
      data
    end

    # Get App Usage Stats
    # Get basic statistics for all applications.
    # @param since [Time] Filter the range to data after this date
    # @param _until [Time] Filter the range to data before this date
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items
    # @option opts [String] :iterator The iterator to use (depends on the chosen ordering)
    # @return [Array<(ListResponseApplicationStats, Integer, Hash)>] ListResponseApplicationStats data, response status code and response headers
    def get_app_usage_stats_api_v1_app_stats_usage_get_with_http_info(since, _until, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.get_app_usage_stats_api_v1_app_stats_usage_get ...'
      end
      # verify the required parameter 'since' is set
      if @api_client.config.client_side_validation && since.nil?
        fail ArgumentError, "Missing the required parameter 'since' when calling ApplicationApi.get_app_usage_stats_api_v1_app_stats_usage_get"
      end
      # verify the required parameter '_until' is set
      if @api_client.config.client_side_validation && _until.nil?
        fail ArgumentError, "Missing the required parameter '_until' when calling ApplicationApi.get_app_usage_stats_api_v1_app_stats_usage_get"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApplicationApi.get_app_usage_stats_api_v1_app_stats_usage_get, must be smaller than or equal to 250.'
      end

      # resource path
      local_var_path = '/api/v1/app/stats/usage/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = since
      query_params[:'until'] = _until
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'iterator'] = opts[:'iterator'] if !opts[:'iterator'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListResponseApplicationStats'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.get_app_usage_stats_api_v1_app_stats_usage_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#get_app_usage_stats_api_v1_app_stats_usage_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Application
    # Create a new application.
    # @param application_in [ApplicationIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :get_if_exists Get an existing application, or create a new one if doesn&#39;t exist. It&#39;s two separate functions in the libs. (default to false)
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [ApplicationOut]
    def v1_application_create(application_in, opts = {})
      data, _status_code, _headers = v1_application_create_with_http_info(application_in, opts)
      data
    end

    # Create Application
    # Create a new application.
    # @param application_in [ApplicationIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :get_if_exists Get an existing application, or create a new one if doesn&#39;t exist. It&#39;s two separate functions in the libs.
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(ApplicationOut, Integer, Hash)>] ApplicationOut data, response status code and response headers
    def v1_application_create_with_http_info(application_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_create ...'
      end
      # verify the required parameter 'application_in' is set
      if @api_client.config.client_side_validation && application_in.nil?
        fail ArgumentError, "Missing the required parameter 'application_in' when calling ApplicationApi.v1_application_create"
      end
      # resource path
      local_var_path = '/api/v1/app/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'get_if_exists'] = opts[:'get_if_exists'] if !opts[:'get_if_exists'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(application_in)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Application
    # Delete an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def v1_application_delete(app_id, opts = {})
      v1_application_delete_with_http_info(app_id, opts)
      nil
    end

    # Delete Application
    # Delete an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_application_delete_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_delete ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ApplicationApi.v1_application_delete"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_delete, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_delete, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling ApplicationApi.v1_application_delete, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/app/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
        :operation => :"ApplicationApi.v1_application_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Application
    # Get an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [ApplicationOut]
    def v1_application_get(app_id, opts = {})
      data, _status_code, _headers = v1_application_get_with_http_info(app_id, opts)
      data
    end

    # Get Application
    # Get an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationOut, Integer, Hash)>] ApplicationOut data, response status code and response headers
    def v1_application_get_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_get ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ApplicationApi.v1_application_get"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_get, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_get, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling ApplicationApi.v1_application_get, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/app/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApplicationOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get App Stats
    # Get basic statistics for the application
    # @param since [Time] Filter the range to data starting from this date
    # @param _until [Time] Filter the range to data ending by this date
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [ApplicationStats]
    def v1_application_get_stats(since, _until, app_id, opts = {})
      data, _status_code, _headers = v1_application_get_stats_with_http_info(since, _until, app_id, opts)
      data
    end

    # Get App Stats
    # Get basic statistics for the application
    # @param since [Time] Filter the range to data starting from this date
    # @param _until [Time] Filter the range to data ending by this date
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationStats, Integer, Hash)>] ApplicationStats data, response status code and response headers
    def v1_application_get_stats_with_http_info(since, _until, app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_get_stats ...'
      end
      # verify the required parameter 'since' is set
      if @api_client.config.client_side_validation && since.nil?
        fail ArgumentError, "Missing the required parameter 'since' when calling ApplicationApi.v1_application_get_stats"
      end
      # verify the required parameter '_until' is set
      if @api_client.config.client_side_validation && _until.nil?
        fail ArgumentError, "Missing the required parameter '_until' when calling ApplicationApi.v1_application_get_stats"
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ApplicationApi.v1_application_get_stats"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_get_stats, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_get_stats, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling ApplicationApi.v1_application_get_stats, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/app/{app_id}/stats/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'since'] = since
      query_params[:'until'] = _until

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationStats'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_get_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_get_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Applications
    # List of all the organization's applications.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items
    # @option opts [String] :iterator The iterator returned from a prior invocation
    # @option opts [Ordering] :order The sorting order of the returned items
    # @return [ListResponseApplicationOut]
    def v1_application_list(opts = {})
      data, _status_code, _headers = v1_application_list_with_http_info(opts)
      data
    end

    # List Applications
    # List of all the organization&#39;s applications.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Limit the number of returned items
    # @option opts [String] :iterator The iterator returned from a prior invocation
    # @option opts [Ordering] :order The sorting order of the returned items
    # @return [Array<(ListResponseApplicationOut, Integer, Hash)>] ListResponseApplicationOut data, response status code and response headers
    def v1_application_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApplicationApi.v1_application_list, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApplicationApi.v1_application_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api/v1/app/'

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
      return_type = opts[:debug_return_type] || 'ListResponseApplicationOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Application
    # Partially update an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_patch [ApplicationPatch] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationOut]
    def v1_application_patch(app_id, application_patch, opts = {})
      data, _status_code, _headers = v1_application_patch_with_http_info(app_id, application_patch, opts)
      data
    end

    # Patch Application
    # Partially update an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_patch [ApplicationPatch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationOut, Integer, Hash)>] ApplicationOut data, response status code and response headers
    def v1_application_patch_with_http_info(app_id, application_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_patch ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ApplicationApi.v1_application_patch"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_patch, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_patch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling ApplicationApi.v1_application_patch, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'application_patch' is set
      if @api_client.config.client_side_validation && application_patch.nil?
        fail ArgumentError, "Missing the required parameter 'application_patch' when calling ApplicationApi.v1_application_patch"
      end
      # resource path
      local_var_path = '/api/v1/app/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(application_patch)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Application
    # Update an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_in [ApplicationIn] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationOut]
    def v1_application_update(app_id, application_in, opts = {})
      data, _status_code, _headers = v1_application_update_with_http_info(app_id, application_in, opts)
      data
    end

    # Update Application
    # Update an application.
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_in [ApplicationIn] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationOut, Integer, Hash)>] ApplicationOut data, response status code and response headers
    def v1_application_update_with_http_info(app_id, application_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationApi.v1_application_update ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling ApplicationApi.v1_application_update"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_update, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling ApplicationApi.v1_application_update, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling ApplicationApi.v1_application_update, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'application_in' is set
      if @api_client.config.client_side_validation && application_in.nil?
        fail ArgumentError, "Missing the required parameter 'application_in' when calling ApplicationApi.v1_application_update"
      end
      # resource path
      local_var_path = '/api/v1/app/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(application_in)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"ApplicationApi.v1_application_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationApi#v1_application_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end