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

# [START servicemanagement_v1_generated_ServiceManager_CreateServiceConfig_sync]
require "google/cloud/service_management/v1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest.new

# Call the create_service_config method.
result = client.create_service_config request

# The returned object is of type Google::Api::Service.
p result
# [END servicemanagement_v1_generated_ServiceManager_CreateServiceConfig_sync]
