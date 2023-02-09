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

require "google/cloud/deploy/v1/version"

require "google/cloud/deploy/v1/cloud_deploy/credentials"
require "google/cloud/deploy/v1/cloud_deploy/paths"
require "google/cloud/deploy/v1/cloud_deploy/operations"
require "google/cloud/deploy/v1/cloud_deploy/client"

module Google
  module Cloud
    module Deploy
      module V1
        ##
        # CloudDeploy service creates and manages Continuous Delivery operations
        # on Google Cloud Platform via Skaffold (https://skaffold.dev).
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/deploy/v1/cloud_deploy"
        #     client = ::Google::Cloud::Deploy::V1::CloudDeploy::Client.new
        #
        module CloudDeploy
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_deploy", "helpers.rb"
require "google/cloud/deploy/v1/cloud_deploy/helpers" if ::File.file? helper_path

