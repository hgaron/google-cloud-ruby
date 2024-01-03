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

# [START meet_v2beta_generated_ConferenceRecordsService_GetConferenceRecord_sync]
require "google/apps/meet/v2beta"

##
# Snippet for the get_conference_record call in the ConferenceRecordsService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Apps::Meet::V2beta::ConferenceRecordsService::Client#get_conference_record.
# It may require modification in order to execute successfully.
#
def get_conference_record
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Apps::Meet::V2beta::ConferenceRecordsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Apps::Meet::V2beta::GetConferenceRecordRequest.new

  # Call the get_conference_record method.
  result = client.get_conference_record request

  # The returned object is of type Google::Apps::Meet::V2beta::ConferenceRecord.
  p result
end
# [END meet_v2beta_generated_ConferenceRecordsService_GetConferenceRecord_sync]