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

# [START vision_v1p4beta1_generated_ProductSearch_ListProductsInProductSet_sync]
require "google/cloud/vision/v1p4beta1"

##
# Snippet for the list_products_in_product_set call in the ProductSearch service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Vision::V1p4beta1::ProductSearch::Client#list_products_in_product_set.
# It may require modification in order to execute successfully.
#
def list_products_in_product_set
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Vision::V1p4beta1::ProductSearch::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Vision::V1p4beta1::ListProductsInProductSetRequest.new

  # Call the list_products_in_product_set method.
  result = client.list_products_in_product_set request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Vision::V1p4beta1::Product.
    p item
  end
end
# [END vision_v1p4beta1_generated_ProductSearch_ListProductsInProductSet_sync]
