=begin
#Svix API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.1.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0

=end

require 'cgi'

module Svix
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Consumer App Portal Access
    # Use this function to get magic links (and authentication codes) for connecting your users to the Consumer Application Portal.
    # @param app_id [String] The app&#39;s ID or UID
    # @param app_portal_access_in [AppPortalAccessIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [AppPortalAccessOut]
    def v1_authentication_app_portal_access(app_id, app_portal_access_in, opts = {})
      data, _status_code, _headers = v1_authentication_app_portal_access_with_http_info(app_id, app_portal_access_in, opts)
      data
    end

    # Get Consumer App Portal Access
    # Use this function to get magic links (and authentication codes) for connecting your users to the Consumer Application Portal.
    # @param app_id [String] The app&#39;s ID or UID
    # @param app_portal_access_in [AppPortalAccessIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(AppPortalAccessOut, Integer, Hash)>] AppPortalAccessOut data, response status code and response headers
    def v1_authentication_app_portal_access_with_http_info(app_id, app_portal_access_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.v1_authentication_app_portal_access ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AuthenticationApi.v1_authentication_app_portal_access"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_app_portal_access, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_app_portal_access, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling AuthenticationApi.v1_authentication_app_portal_access, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'app_portal_access_in' is set
      if @api_client.config.client_side_validation && app_portal_access_in.nil?
        fail ArgumentError, "Missing the required parameter 'app_portal_access_in' when calling AuthenticationApi.v1_authentication_app_portal_access"
      end
      # resource path
      local_var_path = '/api/v1/auth/app-portal-access/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(app_portal_access_in)

      # return_type
      return_type = opts[:debug_return_type] || 'AppPortalAccessOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.v1_authentication_app_portal_access",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_app_portal_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Dashboard Access
    # DEPRECATED: Please use `app-portal-access` instead.  Use this function to get magic links (and authentication codes) for connecting your users to the Consumer Application Portal.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [DashboardAccessOut]
    def v1_authentication_dashboard_access(app_id, opts = {})
      data, _status_code, _headers = v1_authentication_dashboard_access_with_http_info(app_id, opts)
      data
    end

    # Dashboard Access
    # DEPRECATED: Please use &#x60;app-portal-access&#x60; instead.  Use this function to get magic links (and authentication codes) for connecting your users to the Consumer Application Portal.
    # @param app_id [String] The app&#39;s ID or UID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(DashboardAccessOut, Integer, Hash)>] DashboardAccessOut data, response status code and response headers
    def v1_authentication_dashboard_access_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.v1_authentication_dashboard_access ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AuthenticationApi.v1_authentication_dashboard_access"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_dashboard_access, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_dashboard_access, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling AuthenticationApi.v1_authentication_dashboard_access, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/auth/dashboard-access/{app_id}/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DashboardAccessOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.v1_authentication_dashboard_access",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_dashboard_access\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Exchange One Time Token
    # This is a one time token
    # @param one_time_token_in [OneTimeTokenIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [OneTimeTokenOut]
    def v1_authentication_exchange_one_time_token(one_time_token_in, opts = {})
      data, _status_code, _headers = v1_authentication_exchange_one_time_token_with_http_info(one_time_token_in, opts)
      data
    end

    # Exchange One Time Token
    # This is a one time token
    # @param one_time_token_in [OneTimeTokenIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(OneTimeTokenOut, Integer, Hash)>] OneTimeTokenOut data, response status code and response headers
    def v1_authentication_exchange_one_time_token_with_http_info(one_time_token_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.v1_authentication_exchange_one_time_token ...'
      end
      # verify the required parameter 'one_time_token_in' is set
      if @api_client.config.client_side_validation && one_time_token_in.nil?
        fail ArgumentError, "Missing the required parameter 'one_time_token_in' when calling AuthenticationApi.v1_authentication_exchange_one_time_token"
      end
      # resource path
      local_var_path = '/api/v1/auth/one-time-token/'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(one_time_token_in)

      # return_type
      return_type = opts[:debug_return_type] || 'OneTimeTokenOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.v1_authentication_exchange_one_time_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_exchange_one_time_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire All
    # Expire all of the tokens associated with a specific Application
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_token_expire_in [ApplicationTokenExpireIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [nil]
    def v1_authentication_expire_all(app_id, application_token_expire_in, opts = {})
      v1_authentication_expire_all_with_http_info(app_id, application_token_expire_in, opts)
      nil
    end

    # Expire All
    # Expire all of the tokens associated with a specific Application
    # @param app_id [String] The app&#39;s ID or UID
    # @param application_token_expire_in [ApplicationTokenExpireIn] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_authentication_expire_all_with_http_info(app_id, application_token_expire_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.v1_authentication_expire_all ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling AuthenticationApi.v1_authentication_expire_all"
      end
      if @api_client.config.client_side_validation && app_id.to_s.length > 256
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_expire_all, the character length must be smaller than or equal to 256.'
      end

      if @api_client.config.client_side_validation && app_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "app_id" when calling AuthenticationApi.v1_authentication_expire_all, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\-_.]+$/)
      if @api_client.config.client_side_validation && app_id !~ pattern
        fail ArgumentError, "invalid value for 'app_id' when calling AuthenticationApi.v1_authentication_expire_all, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'application_token_expire_in' is set
      if @api_client.config.client_side_validation && application_token_expire_in.nil?
        fail ArgumentError, "Missing the required parameter 'application_token_expire_in' when calling AuthenticationApi.v1_authentication_expire_all"
      end
      # resource path
      local_var_path = '/api/v1/auth/app/{app_id}/expire-all/'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(application_token_expire_in)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.v1_authentication_expire_all",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_expire_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logout
    # Logout an app token.  Trying to log out other tokens will fail.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [nil]
    def v1_authentication_logout(opts = {})
      v1_authentication_logout_with_http_info(opts)
      nil
    end

    # Logout
    # Logout an app token.  Trying to log out other tokens will fail.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The request&#39;s idempotency key
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def v1_authentication_logout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.v1_authentication_logout ...'
      end
      # resource path
      local_var_path = '/api/v1/auth/logout/'

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['HTTPBearer']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.v1_authentication_logout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#v1_authentication_logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end