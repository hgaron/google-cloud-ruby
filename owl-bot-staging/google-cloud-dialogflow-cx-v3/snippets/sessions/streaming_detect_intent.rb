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

# [START dialogflow_v3_generated_Sessions_StreamingDetectIntent_sync]
require "google/cloud/dialogflow/cx/v3"

##
# Snippet for the streaming_detect_intent call in the Sessions service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::CX::V3::Sessions::Client#streaming_detect_intent.
# It may require modification in order to execute successfully.
#
def streaming_detect_intent
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new

  # Create an input stream.
  input = Gapic::StreamInput.new

  # Call the streaming_detect_intent method to start streaming.
  output = client.streaming_detect_intent input

  # Send requests on the stream. For each request object, set fields by
  # passing keyword arguments. Be sure to close the stream when done.
  input << Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new
  input << Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new
  input.close

  # The returned object is a streamed enumerable yielding elements of type
  # ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse
  output.each do |current_response|
    p current_response
  end
end
# [END dialogflow_v3_generated_Sessions_StreamingDetectIntent_sync]
