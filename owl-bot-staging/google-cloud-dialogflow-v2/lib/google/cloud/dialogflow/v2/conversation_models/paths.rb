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
      module V2
        module ConversationModels
          # Path helper methods for the ConversationModels API.
          module Paths
            ##
            # Create a fully-qualified ConversationDataset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/conversationDatasets/{conversation_dataset}`
            #
            # @param project [String]
            # @param location [String]
            # @param conversation_dataset [String]
            #
            # @return [::String]
            def conversation_dataset_path project:, location:, conversation_dataset:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/conversationDatasets/#{conversation_dataset}"
            end

            ##
            # Create a fully-qualified ConversationModel resource string.
            #
            # @overload conversation_model_path(project:, location:, conversation_model:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/conversationModels/{conversation_model}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param conversation_model [String]
            #
            # @overload conversation_model_path(project:, conversation_model:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/conversationModels/{conversation_model}`
            #
            #   @param project [String]
            #   @param conversation_model [String]
            #
            # @return [::String]
            def conversation_model_path **args
              resources = {
                "conversation_model:location:project" => (proc do |project:, location:, conversation_model:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/conversationModels/#{conversation_model}"
                end),
                "conversation_model:project" => (proc do |project:, conversation_model:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/conversationModels/#{conversation_model}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified ConversationModelEvaluation resource string.
            #
            # @overload conversation_model_evaluation_path(project:, conversation_model:, evaluation:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/conversationModels/{conversation_model}/evaluations/{evaluation}`
            #
            #   @param project [String]
            #   @param conversation_model [String]
            #   @param evaluation [String]
            #
            # @overload conversation_model_evaluation_path(project:, location:, conversation_model:, evaluation:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/conversationModels/{conversation_model}/evaluations/{evaluation}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param conversation_model [String]
            #   @param evaluation [String]
            #
            # @return [::String]
            def conversation_model_evaluation_path **args
              resources = {
                "conversation_model:evaluation:project" => (proc do |project:, conversation_model:, evaluation:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "conversation_model cannot contain /" if conversation_model.to_s.include? "/"

                  "projects/#{project}/conversationModels/#{conversation_model}/evaluations/#{evaluation}"
                end),
                "conversation_model:evaluation:location:project" => (proc do |project:, location:, conversation_model:, evaluation:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "conversation_model cannot contain /" if conversation_model.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/conversationModels/#{conversation_model}/evaluations/#{evaluation}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Document resource string.
            #
            # @overload document_path(project:, knowledge_base:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}`
            #
            #   @param project [String]
            #   @param knowledge_base [String]
            #   @param document [String]
            #
            # @overload document_path(project:, location:, knowledge_base:, document:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/knowledgeBases/{knowledge_base}/documents/{document}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param knowledge_base [String]
            #   @param document [String]
            #
            # @return [::String]
            def document_path **args
              resources = {
                "document:knowledge_base:project" => (proc do |project:, knowledge_base:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "knowledge_base cannot contain /" if knowledge_base.to_s.include? "/"

                  "projects/#{project}/knowledgeBases/#{knowledge_base}/documents/#{document}"
                end),
                "document:knowledge_base:location:project" => (proc do |project:, location:, knowledge_base:, document:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                  raise ::ArgumentError, "knowledge_base cannot contain /" if knowledge_base.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/knowledgeBases/#{knowledge_base}/documents/#{document}"
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

