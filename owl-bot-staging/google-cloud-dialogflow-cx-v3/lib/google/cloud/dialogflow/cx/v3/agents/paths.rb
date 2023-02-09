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
    module Dialogflow
      module CX
        module V3
          module Agents
            # Path helper methods for the Agents API.
            module Paths
              ##
              # Create a fully-qualified Agent resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              #
              # @return [::String]
              def agent_path project:, location:, agent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}"
              end

              ##
              # Create a fully-qualified AgentValidationResult resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/validationResult`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              #
              # @return [::String]
              def agent_validation_result_path project:, location:, agent:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/validationResult"
              end

              ##
              # Create a fully-qualified Environment resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/environments/{environment}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param environment [String]
              #
              # @return [::String]
              def environment_path project:, location:, agent:, environment:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/environments/#{environment}"
              end

              ##
              # Create a fully-qualified Flow resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/agents/{agent}/flows/{flow}`
              #
              # @param project [String]
              # @param location [String]
              # @param agent [String]
              # @param flow [String]
              #
              # @return [::String]
              def flow_path project:, location:, agent:, flow:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "agent cannot contain /" if agent.to_s.include? "/"

                "projects/#{project}/locations/#{location}/agents/#{agent}/flows/#{flow}"
              end

              ##
              # Create a fully-qualified Location resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}`
              #
              # @param project [String]
              # @param location [String]
              #
              # @return [::String]
              def location_path project:, location:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/locations/#{location}"
              end

              ##
              # Create a fully-qualified SecuritySettings resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/securitySettings/{security_settings}`
              #
              # @param project [String]
              # @param location [String]
              # @param security_settings [String]
              #
              # @return [::String]
              def security_settings_path project:, location:, security_settings:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/securitySettings/#{security_settings}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end

