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

# [START privateca_v1_generated_CertificateAuthorityService_FetchCaCerts_sync]
require "google/cloud/security/private_ca/v1"

##
# Snippet for the fetch_ca_certs call in the CertificateAuthorityService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Security::PrivateCA::V1::CertificateAuthorityService::Client#fetch_ca_certs.
# It may require modification in order to execute successfully.
#
def fetch_ca_certs
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Security::PrivateCA::V1::CertificateAuthorityService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Security::PrivateCA::V1::FetchCaCertsRequest.new

  # Call the fetch_ca_certs method.
  result = client.fetch_ca_certs request

  # The returned object is of type Google::Cloud::Security::PrivateCA::V1::FetchCaCertsResponse.
  p result
end
# [END privateca_v1_generated_CertificateAuthorityService_FetchCaCerts_sync]
