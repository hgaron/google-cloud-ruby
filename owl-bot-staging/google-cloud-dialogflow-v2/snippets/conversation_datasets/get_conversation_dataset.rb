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

# [START dialogflow_v2_generated_ConversationDatasets_GetConversationDataset_sync]
require "google/cloud/dialogflow/v2"

##
# Snippet for the get_conversation_dataset call in the ConversationDatasets service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::V2::ConversationDatasets::Client#get_conversation_dataset.
# It may require modification in order to execute successfully.
#
def get_conversation_dataset
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::V2::ConversationDatasets::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dialogflow::V2::GetConversationDatasetRequest.new

  # Call the get_conversation_dataset method.
  result = client.get_conversation_dataset request

  # The returned object is of type Google::Cloud::Dialogflow::V2::ConversationDataset.
  p result
end
# [END dialogflow_v2_generated_ConversationDatasets_GetConversationDataset_sync]
