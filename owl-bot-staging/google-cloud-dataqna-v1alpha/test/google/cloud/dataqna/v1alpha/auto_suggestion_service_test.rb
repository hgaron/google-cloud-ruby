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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dataqna/v1alpha/auto_suggestion_service_pb"
require "google/cloud/dataqna/v1alpha/auto_suggestion_service_services_pb"
require "google/cloud/dataqna/v1alpha/auto_suggestion_service"

class ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_suggest_queries
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataQnA::V1alpha::SuggestQueriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    scopes = ["hello world"]
    query = "hello world"
    suggestion_types = [:SUGGESTION_TYPE_UNSPECIFIED]

    suggest_queries_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_queries, name
      assert_kind_of ::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["scopes"]
      assert_equal "hello world", request["query"]
      assert_equal [:SUGGESTION_TYPE_UNSPECIFIED], request["suggestion_types"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_queries_client_stub do
      # Create client
      client = ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_queries({ parent: parent, scopes: scopes, query: query, suggestion_types: suggestion_types }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_queries parent: parent, scopes: scopes, query: query, suggestion_types: suggestion_types do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_queries ::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest.new(parent: parent, scopes: scopes, query: query, suggestion_types: suggestion_types) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_queries({ parent: parent, scopes: scopes, query: query, suggestion_types: suggestion_types }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_queries(::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest.new(parent: parent, scopes: scopes, query: query, suggestion_types: suggestion_types), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_queries_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client::Configuration, config
  end
end
