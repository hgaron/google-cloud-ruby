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


module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          # Detailed information related to the interstitial of a VOD session.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the stitch detail in the specified VOD session, in the form of
          #     `projects/{project}/locations/{location}/vodSessions/{vod_session_id}/vodStitchDetails/{id}`.
          # @!attribute [rw] ad_stitch_details
          #   @return [::Array<::Google::Cloud::Video::Stitcher::V1::AdStitchDetail>]
          #     A list of ad processing details for the fetched ad playlist.
          class VodStitchDetail
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Metadata for a stitched ad.
          # @!attribute [rw] ad_break_id
          #   @return [::String]
          #     Required. The ad break ID of the processed ad.
          # @!attribute [rw] ad_id
          #   @return [::String]
          #     Required. The ad ID of the processed ad.
          # @!attribute [rw] ad_time_offset
          #   @return [::Google::Protobuf::Duration]
          #     Required. The time offset of the processed ad.
          # @!attribute [rw] skip_reason
          #   @return [::String]
          #     Optional. Indicates the reason why the ad has been skipped.
          # @!attribute [rw] media
          #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
          #     Optional. The metadata of the chosen media file for the ad.
          class AdStitchDetail
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Google::Protobuf::Value]
            class MediaEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end

