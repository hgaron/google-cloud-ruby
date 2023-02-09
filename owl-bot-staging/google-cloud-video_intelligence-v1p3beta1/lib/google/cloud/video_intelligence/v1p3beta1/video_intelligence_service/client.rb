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
require "google/cloud/videointelligence/v1p3beta1/video_intelligence_pb"

module Google
  module Cloud
    module VideoIntelligence
      module V1p3beta1
        module VideoIntelligenceService
          ##
          # Client for the VideoIntelligenceService service.
          #
          # Service that implements the Video Intelligence API.
          #
          class Client
            # @private
            attr_reader :video_intelligence_service_stub

            ##
            # Configure the VideoIntelligenceService Client class.
            #
            # See {::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all VideoIntelligenceService clients
            #   ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "VideoIntelligence", "V1p3beta1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                    default_config.rpcs.annotate_video.timeout = 600.0
                    default_config.rpcs.annotate_video.retry_policy ={
                initial_delay: 1.0, max_delay: 120.0, multiplier: 2.5, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the VideoIntelligenceService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client::Configuration}
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
            # Create a new VideoIntelligenceService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the VideoIntelligenceService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/videointelligence/v1p3beta1/video_intelligence_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              # Use self-signed JWT if the endpoint is unchanged from default,
              # but only if the default endpoint does not have a region prefix.
              enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                       !@config.endpoint.split(".").first.include?("-")
              credentials ||= Credentials.default scope: @config.scope,
                                                  enable_self_signed_jwt: enable_self_signed_jwt
              if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
              end

              @video_intelligence_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Performs asynchronous video annotation. Progress and results can be
            # retrieved through the `google.longrunning.Operations` interface.
            # `Operation.metadata` contains `AnnotateVideoProgress` (progress).
            # `Operation.response` contains `AnnotateVideoResponse` (results).
            #
            # @overload annotate_video(request, options = nil)
            #   Pass arguments to `annotate_video` via a request object, either of type
            #   {::Google::Cloud::VideoIntelligence::V1p3beta1::AnnotateVideoRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::VideoIntelligence::V1p3beta1::AnnotateVideoRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload annotate_video(input_uri: nil, input_content: nil, features: nil, video_context: nil, output_uri: nil, location_id: nil)
            #   Pass arguments to `annotate_video` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param input_uri [::String]
            #     Input video location. Currently, only
            #     [Cloud Storage](https://cloud.google.com/storage/) URIs are
            #     supported. URIs must be specified in the following format:
            #     `gs://bucket-id/object-id` (other URI formats return
            #     [google.rpc.Code.INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT]). For
            #     more information, see [Request
            #     URIs](https://cloud.google.com/storage/docs/request-endpoints). To identify
            #     multiple videos, a video URI may include wildcards in the `object-id`.
            #     Supported wildcards: '*' to match 0 or more characters;
            #     '?' to match 1 character. If unset, the input video should be embedded
            #     in the request as `input_content`. If set, `input_content` must be unset.
            #   @param input_content [::String]
            #     The video data bytes.
            #     If unset, the input video(s) should be specified via the `input_uri`.
            #     If set, `input_uri` must be unset.
            #   @param features [::Array<::Google::Cloud::VideoIntelligence::V1p3beta1::Feature>]
            #     Required. Requested video annotation features.
            #   @param video_context [::Google::Cloud::VideoIntelligence::V1p3beta1::VideoContext, ::Hash]
            #     Additional video context and/or feature-specific parameters.
            #   @param output_uri [::String]
            #     Optional. Location where the output (in JSON format) should be stored.
            #     Currently, only [Cloud Storage](https://cloud.google.com/storage/)
            #     URIs are supported. These must be specified in the following format:
            #     `gs://bucket-id/object-id` (other URI formats return
            #     [google.rpc.Code.INVALID_ARGUMENT][google.rpc.Code.INVALID_ARGUMENT]). For
            #     more information, see [Request
            #     URIs](https://cloud.google.com/storage/docs/request-endpoints).
            #   @param location_id [::String]
            #     Optional. Cloud region where annotation should take place. Supported cloud
            #     regions are: `us-east1`, `us-west1`, `europe-west1`, `asia-east1`. If no
            #     region is specified, the region will be determined based on video file
            #     location.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/video_intelligence/v1p3beta1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::VideoIntelligence::V1p3beta1::AnnotateVideoRequest.new
            #
            #   # Call the annotate_video method.
            #   result = client.annotate_video request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def annotate_video request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::VideoIntelligence::V1p3beta1::AnnotateVideoRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.annotate_video.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::VideoIntelligence::V1p3beta1::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.annotate_video.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.annotate_video.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @video_intelligence_service_stub.call_rpc :annotate_video, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the VideoIntelligenceService API.
            #
            # This class represents the configuration for VideoIntelligenceService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # annotate_video to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.annotate_video.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::VideoIntelligence::V1p3beta1::VideoIntelligenceService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.annotate_video.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"videointelligence.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
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

              config_attr :endpoint,      "videointelligence.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  {"grpc.service_config_disable_resolution"=>1}, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
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
              # Configuration RPC class for the VideoIntelligenceService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                # RPC-specific configuration for `annotate_video`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :annotate_video

                # @private
                def initialize parent_rpcs = nil
                  annotate_video_config = parent_rpcs.annotate_video if parent_rpcs.respond_to? :annotate_video
                  @annotate_video = ::Gapic::Config::Method.new annotate_video_config

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

