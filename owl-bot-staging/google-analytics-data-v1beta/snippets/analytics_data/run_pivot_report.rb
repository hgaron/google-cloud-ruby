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

# [START analyticsdata_v1beta_generated_AnalyticsData_RunPivotReport_sync]
require "google/analytics/data/v1beta"

# Create a client object. The client can be reused for multiple calls.
client = Google::Analytics::Data::V1beta::AnalyticsData::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Analytics::Data::V1beta::RunPivotReportRequest.new

# Call the run_pivot_report method.
result = client.run_pivot_report request

# The returned object is of type Google::Analytics::Data::V1beta::RunPivotReportResponse.
p result
# [END analyticsdata_v1beta_generated_AnalyticsData_RunPivotReport_sync]
