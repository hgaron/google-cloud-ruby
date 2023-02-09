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
    module Run
      module V2
        module Revisions
          # Path helper methods for the Revisions API.
          module Paths
            ##
            # Create a fully-qualified Revision resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/services/{service}/revisions/{revision}`
            #
            # @param project [String]
            # @param location [String]
            # @param service [String]
            # @param revision [String]
            #
            # @return [::String]
            def revision_path project:, location:, service:, revision:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "service cannot contain /" if service.to_s.include? "/"

              "projects/#{project}/locations/#{location}/services/#{service}/revisions/#{revision}"
            end

            ##
            # Create a fully-qualified Service resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/services/{service}`
            #
            # @param project [String]
            # @param location [String]
            # @param service [String]
            #
            # @return [::String]
            def service_path project:, location:, service:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/services/#{service}"
            end

            extend self
          end
        end
      end
    end
  end
end

