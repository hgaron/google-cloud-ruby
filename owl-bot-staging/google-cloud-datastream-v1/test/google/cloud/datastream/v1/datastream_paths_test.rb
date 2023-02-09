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

require "google/cloud/datastream/v1/datastream"

class ::Google::Cloud::Datastream::V1::Datastream::ClientPathsTest < Minitest::Test
  def test_connection_profile_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.connection_profile_path project: "value0", location: "value1", connection_profile: "value2"
      assert_equal "projects/value0/locations/value1/connectionProfiles/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_networks_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.networks_path project: "value0", network: "value1"
      assert_equal "projects/value0/global/networks/value1", path
    end
  end

  def test_private_connection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.private_connection_path project: "value0", location: "value1", private_connection: "value2"
      assert_equal "projects/value0/locations/value1/privateConnections/value2", path
    end
  end

  def test_route_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.route_path project: "value0", location: "value1", private_connection: "value2", route: "value3"
      assert_equal "projects/value0/locations/value1/privateConnections/value2/routes/value3", path
    end
  end

  def test_stream_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.stream_path project: "value0", location: "value1", stream: "value2"
      assert_equal "projects/value0/locations/value1/streams/value2", path
    end
  end

  def test_stream_object_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Datastream::V1::Datastream::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.stream_object_path project: "value0", location: "value1", stream: "value2", object: "value3"
      assert_equal "projects/value0/locations/value1/streams/value2/objects/value3", path
    end
  end
end
