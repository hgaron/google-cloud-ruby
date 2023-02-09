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

require "google/cloud/video/stitcher/v1/version"

require "google/cloud/video/stitcher/v1/video_stitcher_service/credentials"
require "google/cloud/video/stitcher/v1/video_stitcher_service/paths"
require "google/cloud/video/stitcher/v1/video_stitcher_service/client"

module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          ##
          # Video-On-Demand content stitching API allows you to insert ads
          # into (VoD) video on demand files. You will be able to render custom
          # scrubber bars with highlighted ads, enforce ad policies, allow
          # seamless playback and tracking on native players and monetize
          # content with any standard VMAP compliant ad server.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/video/stitcher/v1/video_stitcher_service"
          #     client = ::Google::Cloud::Video::Stitcher::V1::VideoStitcherService::Client.new
          #
          module VideoStitcherService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "video_stitcher_service", "helpers.rb"
require "google/cloud/video/stitcher/v1/video_stitcher_service/helpers" if ::File.file? helper_path

