# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/kms/inventory/v1/key_tracking_service_pb"
require "google/cloud/kms/inventory/v1/key_tracking_service/rest/service_stub"

module Google
  module Cloud
    module Kms
      module Inventory
        module V1
          module KeyTrackingService
            module Rest
              ##
              # REST client for the KeyTrackingService service.
              #
              # Returns information about the resources in an org that are protected by a
              # given Cloud KMS key via CMEK.
              #
              class Client
                include Paths

                # @private
                attr_reader :key_tracking_service_stub

                ##
                # Configure the KeyTrackingService Client class.
                #
                # See {::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @example
                #
                #   # Modify the configuration for all KeyTrackingService clients
                #   ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.configure do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the Client client.
                # @yieldparam config [Client::Configuration]
                #
                # @return [Client::Configuration]
                #
                def self.configure
                  @configure ||= begin
                    namespace = ["Google", "Cloud", "Kms", "Inventory", "V1"]
                    parent_config = while namespace.any?
                                      parent_name = namespace.join "::"
                                      parent_const = const_get parent_name
                                      break parent_const.configure if parent_const.respond_to? :configure
                                      namespace.pop
                                    end
                    default_config = Client::Configuration.new parent_config

                    default_config.rpcs.get_protected_resources_summary.timeout = 60.0

                    default_config.rpcs.search_protected_resources.timeout = 60.0

                    default_config
                  end
                  yield @configure if block_given?
                  @configure
                end

                ##
                # Configure the KeyTrackingService Client instance.
                #
                # The configuration is set to the derived mode, meaning that values can be changed,
                # but structural changes (adding new fields, etc.) are not allowed. Structural changes
                # should be made on {Client.configure}.
                #
                # See {::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @yield [config] Configure the Client client.
                # @yieldparam config [Client::Configuration]
                #
                # @return [Client::Configuration]
                #
                def configure
                  yield @config if block_given?
                  @config
                end

                ##
                # Create a new KeyTrackingService REST client object.
                #
                # @example
                #
                #   # Create a client using the default configuration
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new
                #
                #   # Create a client using a custom configuration
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the KeyTrackingService client.
                # @yieldparam config [Client::Configuration]
                #
                def initialize
                  # Create the configuration object
                  @config = Configuration.new Client.configure

                  # Yield the configuration if needed
                  yield @config if block_given?

                  # Create credentials
                  credentials = @config.credentials
                  # Use self-signed JWT if the endpoint is unchanged from default,
                  # but only if the default endpoint does not have a region prefix.
                  enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                           !@config.endpoint.split(".").first.include?("-")
                  credentials ||= Credentials.default scope: @config.scope,
                                                      enable_self_signed_jwt: enable_self_signed_jwt
                  if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                    credentials = Credentials.new credentials, scope: @config.scope
                  end

                  @quota_project_id = @config.quota_project
                  @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                  @key_tracking_service_stub = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
                end

                # Service calls

                ##
                # Returns aggregate information about the resources protected by the given
                # Cloud KMS {::Google::Cloud::Kms::V1::CryptoKey CryptoKey}. Only resources within
                # the same Cloud organization as the key will be returned. The project that
                # holds the key must be part of an organization in order for this call to
                # succeed.
                #
                # @overload get_protected_resources_summary(request, options = nil)
                #   Pass arguments to `get_protected_resources_summary` via a request object, either of type
                #   {::Google::Cloud::Kms::Inventory::V1::GetProtectedResourcesSummaryRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Kms::Inventory::V1::GetProtectedResourcesSummaryRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload get_protected_resources_summary(name: nil)
                #   Pass arguments to `get_protected_resources_summary` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param name [::String]
                #     Required. The resource name of the
                #     {::Google::Cloud::Kms::V1::CryptoKey CryptoKey}.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Kms::Inventory::V1::ProtectedResourcesSummary]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Kms::Inventory::V1::ProtectedResourcesSummary]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                def get_protected_resources_summary request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::Inventory::V1::GetProtectedResourcesSummaryRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.get_protected_resources_summary.metadata.to_h

                  # Set x-goog-api-client and x-goog-user-project headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Kms::Inventory::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.get_protected_resources_summary.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.get_protected_resources_summary.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @key_tracking_service_stub.get_protected_resources_summary request, options do |result, operation|
                    yield result, operation if block_given?
                    return result
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Returns metadata about the resources protected by the given Cloud KMS
                # {::Google::Cloud::Kms::V1::CryptoKey CryptoKey} in the given Cloud organization.
                #
                # @overload search_protected_resources(request, options = nil)
                #   Pass arguments to `search_protected_resources` via a request object, either of type
                #   {::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload search_protected_resources(scope: nil, crypto_key: nil, page_size: nil, page_token: nil, resource_types: nil)
                #   Pass arguments to `search_protected_resources` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param scope [::String]
                #     Required. Resource name of the organization.
                #     Example: organizations/123
                #   @param crypto_key [::String]
                #     Required. The resource name of the
                #     {::Google::Cloud::Kms::V1::CryptoKey CryptoKey}.
                #   @param page_size [::Integer]
                #     The maximum number of resources to return. The service may return fewer
                #     than this value.
                #     If unspecified, at most 500 resources will be returned.
                #     The maximum value is 500; values above 500 will be coerced to 500.
                #   @param page_token [::String]
                #     A page token, received from a previous
                #     {::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client#search_protected_resources KeyTrackingService.SearchProtectedResources}
                #     call. Provide this to retrieve the subsequent page.
                #
                #     When paginating, all other parameters provided to
                #     {::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client#search_protected_resources KeyTrackingService.SearchProtectedResources}
                #     must match the call that provided the page token.
                #   @param resource_types [::Array<::String>]
                #     Optional. A list of resource types that this request searches for. If
                #     empty, it will search all the [trackable resource
                #     types](https://cloud.google.com/kms/docs/view-key-usage#tracked-resource-types).
                #
                #     Regular expressions are also supported. For example:
                #
                #     * `compute.googleapis.com.*` snapshots resources whose type starts
                #     with `compute.googleapis.com`.
                #     * `.*Image` snapshots resources whose type ends with `Image`.
                #     * `.*Image.*` snapshots resources whose type contains `Image`.
                #
                #     See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported
                #     regular expression syntax. If the regular expression does not match any
                #     supported resource type, an INVALID_ARGUMENT error will be returned.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Kms::Inventory::V1::ProtectedResource>]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Kms::Inventory::V1::ProtectedResource>]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                def search_protected_resources request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.search_protected_resources.metadata.to_h

                  # Set x-goog-api-client and x-goog-user-project headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Kms::Inventory::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.search_protected_resources.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.search_protected_resources.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @key_tracking_service_stub.search_protected_resources request, options do |result, operation|
                    result = ::Gapic::Rest::PagedEnumerable.new @key_tracking_service_stub, :search_protected_resources, "protected_resources", request, result, options
                    yield result, operation if block_given?
                    return result
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Configuration class for the KeyTrackingService REST API.
                #
                # This class represents the configuration for KeyTrackingService REST,
                # providing control over timeouts, retry behavior, logging, transport
                # parameters, and other low-level controls. Certain parameters can also be
                # applied individually to specific RPCs. See
                # {::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client::Configuration::Rpcs}
                # for a list of RPCs that can be configured independently.
                #
                # Configuration can be applied globally to all clients, or to a single client
                # on construction.
                #
                # @example
                #
                #   # Modify the global config, setting the timeout for
                #   # get_protected_resources_summary to 20 seconds,
                #   # and all remaining timeouts to 10 seconds.
                #   ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.configure do |config|
                #     config.timeout = 10.0
                #     config.rpcs.get_protected_resources_summary.timeout = 20.0
                #   end
                #
                #   # Apply the above configuration only to a new client.
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #     config.rpcs.get_protected_resources_summary.timeout = 20.0
                #   end
                #
                # @!attribute [rw] endpoint
                #   The hostname or hostname:port of the service endpoint.
                #   Defaults to `"kmsinventory.googleapis.com"`.
                #   @return [::String]
                # @!attribute [rw] credentials
                #   Credentials to send with calls. You may provide any of the following types:
                #    *  (`String`) The path to a service account key file in JSON format
                #    *  (`Hash`) A service account key as a Hash
                #    *  (`Google::Auth::Credentials`) A googleauth credentials object
                #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
                #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
                #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
                #    *  (`nil`) indicating no credentials
                #   @return [::Object]
                # @!attribute [rw] scope
                #   The OAuth scopes
                #   @return [::Array<::String>]
                # @!attribute [rw] lib_name
                #   The library name as recorded in instrumentation and logging
                #   @return [::String]
                # @!attribute [rw] lib_version
                #   The library version as recorded in instrumentation and logging
                #   @return [::String]
                # @!attribute [rw] timeout
                #   The call timeout in seconds.
                #   @return [::Numeric]
                # @!attribute [rw] metadata
                #   Additional headers to be sent with the call.
                #   @return [::Hash{::Symbol=>::String}]
                # @!attribute [rw] retry_policy
                #   The retry policy. The value is a hash with the following keys:
                #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #       trigger a retry.
                #   @return [::Hash]
                # @!attribute [rw] quota_project
                #   A separate project against which to charge quota.
                #   @return [::String]
                #
                class Configuration
                  extend ::Gapic::Config

                  DEFAULT_ENDPOINT = "kmsinventory.googleapis.com"

                  config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                  config_attr :credentials,   nil do |value|
                    allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                    allowed.any? { |klass| klass === value }
                  end
                  config_attr :scope,         nil, ::String, ::Array, nil
                  config_attr :lib_name,      nil, ::String, nil
                  config_attr :lib_version,   nil, ::String, nil
                  config_attr :timeout,       nil, ::Numeric, nil
                  config_attr :metadata,      nil, ::Hash, nil
                  config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                  config_attr :quota_project, nil, ::String, nil

                  # @private
                  def initialize parent_config = nil
                    @parent_config = parent_config unless parent_config.nil?

                    yield self if block_given?
                  end

                  ##
                  # Configurations for individual RPCs
                  # @return [Rpcs]
                  #
                  def rpcs
                    @rpcs ||= begin
                      parent_rpcs = nil
                      parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                      Rpcs.new parent_rpcs
                    end
                  end

                  ##
                  # Configuration RPC class for the KeyTrackingService API.
                  #
                  # Includes fields providing the configuration for each RPC in this service.
                  # Each configuration object is of type `Gapic::Config::Method` and includes
                  # the following configuration fields:
                  #
                  #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                  #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                  #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                  #     include the following keys:
                  #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                  #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                  #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                  #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                  #         trigger a retry.
                  #
                  class Rpcs
                    ##
                    # RPC-specific configuration for `get_protected_resources_summary`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :get_protected_resources_summary
                    ##
                    # RPC-specific configuration for `search_protected_resources`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :search_protected_resources

                    # @private
                    def initialize parent_rpcs = nil
                      get_protected_resources_summary_config = parent_rpcs.get_protected_resources_summary if parent_rpcs.respond_to? :get_protected_resources_summary
                      @get_protected_resources_summary = ::Gapic::Config::Method.new get_protected_resources_summary_config
                      search_protected_resources_config = parent_rpcs.search_protected_resources if parent_rpcs.respond_to? :search_protected_resources
                      @search_protected_resources = ::Gapic::Config::Method.new search_protected_resources_config

                      yield self if block_given?
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
