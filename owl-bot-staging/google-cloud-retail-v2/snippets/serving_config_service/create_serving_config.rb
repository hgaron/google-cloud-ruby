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

# [START retail_v2_generated_ServingConfigService_CreateServingConfig_sync]
require "google/cloud/retail/v2"

##
# Snippet for the create_serving_config call in the ServingConfigService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Retail::V2::ServingConfigService::Client#create_serving_config.
# It may require modification in order to execute successfully.
#
def create_serving_config
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Retail::V2::ServingConfigService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Retail::V2::CreateServingConfigRequest.new

  # Call the create_serving_config method.
  result = client.create_serving_config request

  # The returned object is of type Google::Cloud::Retail::V2::ServingConfig.
  p result
end
# [END retail_v2_generated_ServingConfigService_CreateServingConfig_sync]
