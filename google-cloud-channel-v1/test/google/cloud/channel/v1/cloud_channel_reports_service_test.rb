# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/channel/v1/reports_service_pb"
require "google/cloud/channel/v1/reports_service_services_pb"
require "google/cloud/channel/v1/cloud_channel_reports_service"

class ::Google::Cloud::Channel::V1::CloudChannelReportsService::ClientTest < Minitest::Test
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

  def test_run_report_job
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    date_range = {}
    filter = "hello world"
    language_code = "hello world"

    run_report_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :run_report_job, name
      assert_kind_of ::Google::Cloud::Channel::V1::RunReportJobRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Channel::V1::DateRange), request["date_range"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, run_report_job_client_stub do
      # Create client
      client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.run_report_job({ name: name, date_range: date_range, filter: filter, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.run_report_job name: name, date_range: date_range, filter: filter, language_code: language_code do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.run_report_job ::Google::Cloud::Channel::V1::RunReportJobRequest.new(name: name, date_range: date_range, filter: filter, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.run_report_job({ name: name, date_range: date_range, filter: filter, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.run_report_job(::Google::Cloud::Channel::V1::RunReportJobRequest.new(name: name, date_range: date_range, filter: filter, language_code: language_code), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, run_report_job_client_stub.call_rpc_count
    end
  end

  def test_fetch_report_results
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Channel::V1::FetchReportResultsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    report_job = "hello world"
    page_size = 42
    page_token = "hello world"
    partition_keys = ["hello world"]

    fetch_report_results_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_report_results, name
      assert_kind_of ::Google::Cloud::Channel::V1::FetchReportResultsRequest, request
      assert_equal "hello world", request["report_job"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal ["hello world"], request["partition_keys"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_report_results_client_stub do
      # Create client
      client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_report_results({ report_job: report_job, page_size: page_size, page_token: page_token, partition_keys: partition_keys }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_report_results report_job: report_job, page_size: page_size, page_token: page_token, partition_keys: partition_keys do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_report_results ::Google::Cloud::Channel::V1::FetchReportResultsRequest.new(report_job: report_job, page_size: page_size, page_token: page_token, partition_keys: partition_keys) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_report_results({ report_job: report_job, page_size: page_size, page_token: page_token, partition_keys: partition_keys }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_report_results(::Google::Cloud::Channel::V1::FetchReportResultsRequest.new(report_job: report_job, page_size: page_size, page_token: page_token, partition_keys: partition_keys), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_report_results_client_stub.call_rpc_count
    end
  end

  def test_list_reports
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Channel::V1::ListReportsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    language_code = "hello world"

    list_reports_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_reports, name
      assert_kind_of ::Google::Cloud::Channel::V1::ListReportsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_reports_client_stub do
      # Create client
      client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_reports({ parent: parent, page_size: page_size, page_token: page_token, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_reports parent: parent, page_size: page_size, page_token: page_token, language_code: language_code do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_reports ::Google::Cloud::Channel::V1::ListReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_reports({ parent: parent, page_size: page_size, page_token: page_token, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_reports(::Google::Cloud::Channel::V1::ListReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, language_code: language_code), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_reports_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Channel::V1::CloudChannelReportsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Channel::V1::CloudChannelReportsService::Operations, client.operations_client
  end
end
