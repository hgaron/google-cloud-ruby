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

require "google/cloud/video/transcoder/v1/transcoder_service"

class ::Google::Cloud::Video::Transcoder::V1::TranscoderService::ClientPathsTest < Minitest::Test
  def test_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Video::Transcoder::V1::TranscoderService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.job_path project: "value0", location: "value1", job: "value2"
      assert_equal "projects/value0/locations/value1/jobs/value2", path
    end
  end

  def test_job_template_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Video::Transcoder::V1::TranscoderService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.job_template_path project: "value0", location: "value1", job_template: "value2"
      assert_equal "projects/value0/locations/value1/jobTemplates/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Video::Transcoder::V1::TranscoderService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
