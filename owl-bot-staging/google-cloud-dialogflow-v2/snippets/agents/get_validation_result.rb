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

# [START dialogflow_v2_generated_Agents_GetValidationResult_sync]
require "google/cloud/dialogflow/v2"

##
# Snippet for the get_validation_result call in the Agents service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::V2::Agents::Client#get_validation_result. It may
# require modification in order to execute successfully.
#
def get_validation_result
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::V2::Agents::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dialogflow::V2::GetValidationResultRequest.new

  # Call the get_validation_result method.
  result = client.get_validation_result request

  # The returned object is of type Google::Cloud::Dialogflow::V2::ValidationResult.
  p result
end
# [END dialogflow_v2_generated_Agents_GetValidationResult_sync]
