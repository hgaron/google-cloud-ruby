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
    module ResourceSettings
      module V1
        module ResourceSettingsService
          # Path helper methods for the ResourceSettingsService API.
          module Paths
            ##
            # Create a fully-qualified Setting resource string.
            #
            # @overload setting_path(project_number:, setting_name:)
            #   The resource will be in the following format:
            #
            #   `projects/{project_number}/settings/{setting_name}`
            #
            #   @param project_number [String]
            #   @param setting_name [String]
            #
            # @overload setting_path(folder:, setting_name:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/settings/{setting_name}`
            #
            #   @param folder [String]
            #   @param setting_name [String]
            #
            # @overload setting_path(organization:, setting_name:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/settings/{setting_name}`
            #
            #   @param organization [String]
            #   @param setting_name [String]
            #
            # @return [::String]
            def setting_path **args
              resources = {
                "project_number:setting_name" => (proc do |project_number:, setting_name:|
                  raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"

                  "projects/#{project_number}/settings/#{setting_name}"
                end),
                "folder:setting_name" => (proc do |folder:, setting_name:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/settings/#{setting_name}"
                end),
                "organization:setting_name" => (proc do |organization:, setting_name:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/settings/#{setting_name}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            extend self
          end
        end
      end
    end
  end
end

