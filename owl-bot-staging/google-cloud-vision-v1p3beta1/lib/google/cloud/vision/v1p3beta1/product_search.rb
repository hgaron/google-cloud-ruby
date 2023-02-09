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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/vision/v1p3beta1/version"

require "google/cloud/vision/v1p3beta1/product_search/credentials"
require "google/cloud/vision/v1p3beta1/product_search/paths"
require "google/cloud/vision/v1p3beta1/product_search/operations"
require "google/cloud/vision/v1p3beta1/product_search/client"

module Google
  module Cloud
    module Vision
      module V1p3beta1
        ##
        # Manages Products and ProductSets of reference images for use in product
        # search. It uses the following resource model:
        #
        # - The API has a collection of {::Google::Cloud::Vision::V1p3beta1::ProductSet ProductSet} resources, named
        # `projects/*/locations/*/productSets/*`, which acts as a way to put different
        # products into groups to limit identification.
        #
        # In parallel,
        #
        # - The API has a collection of {::Google::Cloud::Vision::V1p3beta1::Product Product} resources, named
        #   `projects/*/locations/*/products/*`
        #
        # - Each {::Google::Cloud::Vision::V1p3beta1::Product Product} has a collection of {::Google::Cloud::Vision::V1p3beta1::ReferenceImage ReferenceImage} resources, named
        #   `projects/*/locations/*/products/*/referenceImages/*`
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/vision/v1p3beta1/product_search"
        #     client = ::Google::Cloud::Vision::V1p3beta1::ProductSearch::Client.new
        #
        module ProductSearch
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "product_search", "helpers.rb"
require "google/cloud/vision/v1p3beta1/product_search/helpers" if ::File.file? helper_path

