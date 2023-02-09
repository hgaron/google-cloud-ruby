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

require "google/cloud/dialogflow/v2/fulfillment_pb"
require "google/cloud/dialogflow/v2/fulfillment_services_pb"
require "google/cloud/dialogflow/v2/fulfillments"

class ::Google::Cloud::Dialogflow::V2::Fulfillments::ClientTest < Minitest::Test
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

  def test_get_fulfillment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Fulfillment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_fulfillment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_fulfillment, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetFulfillmentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_fulfillment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Fulfillments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_fulfillment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_fulfillment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_fulfillment ::Google::Cloud::Dialogflow::V2::GetFulfillmentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_fulfillment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_fulfillment(::Google::Cloud::Dialogflow::V2::GetFulfillmentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_fulfillment_client_stub.call_rpc_count
    end
  end

  def test_update_fulfillment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Fulfillment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    fulfillment = {}
    update_mask = {}

    update_fulfillment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_fulfillment, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::UpdateFulfillmentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Fulfillment), request["fulfillment"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_fulfillment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Fulfillments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_fulfillment({ fulfillment: fulfillment, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_fulfillment fulfillment: fulfillment, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_fulfillment ::Google::Cloud::Dialogflow::V2::UpdateFulfillmentRequest.new(fulfillment: fulfillment, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_fulfillment({ fulfillment: fulfillment, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_fulfillment(::Google::Cloud::Dialogflow::V2::UpdateFulfillmentRequest.new(fulfillment: fulfillment, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_fulfillment_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::Fulfillments::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Fulfillments::Client::Configuration, config
  end
end
