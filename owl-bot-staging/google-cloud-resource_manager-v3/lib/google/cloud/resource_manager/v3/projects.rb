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

require "google/cloud/resource_manager/v3/version"

require "google/cloud/resource_manager/v3/projects/credentials"
require "google/cloud/resource_manager/v3/projects/paths"
require "google/cloud/resource_manager/v3/projects/operations"
require "google/cloud/resource_manager/v3/projects/client"

module Google
  module Cloud
    module ResourceManager
      module V3
        ##
        # Manages Google Cloud Projects.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/resource_manager/v3/projects"
        #     client = ::Google::Cloud::ResourceManager::V3::Projects::Client.new
        #
        module Projects
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "projects", "helpers.rb"
require "google/cloud/resource_manager/v3/projects/helpers" if ::File.file? helper_path

