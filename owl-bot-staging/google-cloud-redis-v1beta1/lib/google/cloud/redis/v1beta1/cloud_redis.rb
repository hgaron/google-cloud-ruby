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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/redis/v1beta1/version"

require "google/cloud/redis/v1beta1/cloud_redis/credentials"
require "google/cloud/redis/v1beta1/cloud_redis/paths"
require "google/cloud/redis/v1beta1/cloud_redis/operations"
require "google/cloud/redis/v1beta1/cloud_redis/client"

module Google
  module Cloud
    module Redis
      module V1beta1
        ##
        # Configures and manages Cloud Memorystore for Redis instances
        #
        # Google Cloud Memorystore for Redis v1beta1
        #
        # The `redis.googleapis.com` service implements the Google Cloud Memorystore
        # for Redis API and defines the following resource model for managing Redis
        # instances:
        # * The service works with a collection of cloud projects, named: `/projects/*`
        # * Each project has a collection of available locations, named: `/locations/*`
        # * Each location has a collection of Redis instances, named: `/instances/*`
        # * As such, Redis instances are resources of the form:
        #   `/projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #
        # Note that location_id must be referring to a GCP `region`; for example:
        # * `projects/redpepper-1290/locations/us-central1/instances/my-redis`
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/redis/v1beta1/cloud_redis"
        #     client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new
        #
        module CloudRedis
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_redis", "helpers.rb"
require "google/cloud/redis/v1beta1/cloud_redis/helpers" if ::File.file? helper_path

