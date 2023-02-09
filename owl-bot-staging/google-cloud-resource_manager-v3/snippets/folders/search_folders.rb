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

# [START cloudresourcemanager_v3_generated_Folders_SearchFolders_sync]
require "google/cloud/resource_manager/v3"

##
# Snippet for the search_folders call in the Folders service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ResourceManager::V3::Folders::Client#search_folders. It may
# require modification in order to execute successfully.
#
def search_folders
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ResourceManager::V3::Folders::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ResourceManager::V3::SearchFoldersRequest.new

  # Call the search_folders method.
  result = client.search_folders request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::ResourceManager::V3::Folder.
    p item
  end
end
# [END cloudresourcemanager_v3_generated_Folders_SearchFolders_sync]
