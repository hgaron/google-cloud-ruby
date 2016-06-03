# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "delegate"

module Gcloud
  module Pubsub
    class Topic
      ##
      # Topic::List is a special case Array with additional values.
      class List < DelegateClass(::Array)
        ##
        # If not empty, indicates that there are more topics
        # that match the request and this value should be passed to
        # the next {Gcloud::Pubsub::Project#topics} to continue.
        attr_accessor :token

        ##
        # @private Create a new Topic::List with an array of values.
        def initialize arr = []
          super arr
        end

        ##
        # Whether there a next page of topics.
        def next?
          !token.nil?
        end

        ##
        # Retrieve the next page of topics.
        def next
          return nil unless next?
          ensure_service!
          options = { token: token, max: @max }
          grpc = @service.list_topics options
          self.class.from_grpc grpc, @service, @max
        rescue GRPC::BadStatus => e
          raise Error.from_error(e)
        end

        ##
        # Retrieves all topic by repeatedly loading {#next} until {#next?}
        # returns `false`. Calls the given block once for each topic, which is
        # passed as the parameter.
        #
        # An Enumerator is returned if no block is given.
        #
        # This method may make several API calls until all topics are retrieved.
        # Be sure to use as narrow a search criteria as possible. Please use
        # with caution.
        #
        # @example Iterating each topic by passing a block:
        #   require "gcloud"
        #
        #   gcloud = Gcloud.new
        #   pubsub = gcloud.pubsub
        #
        #   topics = pubsub.topics
        #   topics.all do |topic|
        #     puts topic.name
        #   end
        #
        # @example Using the enumerator by not passing a block:
        #   require "gcloud"
        #
        #   gcloud = Gcloud.new
        #   pubsub = gcloud.pubsub
        #
        #   topics = pubsub.topics
        #   all_names = topics.all.map do |topic|
        #     topic.name
        #   end
        #
        # @example Limit the number of API calls made:
        #   require "gcloud"
        #
        #   gcloud = Gcloud.new
        #   pubsub = gcloud.pubsub
        #
        #   topics = pubsub.topics
        #   topics.all(max_api_calls: 10) do |topic|
        #     puts topic.name
        #   end
        #
        def all max_api_calls: nil
          max_api_calls = max_api_calls.to_i if max_api_calls
          unless block_given?
            return enum_for(:all, max_api_calls: max_api_calls)
          end
          results = self
          loop do
            results.each { |r| yield r }
            if max_api_calls
              max_api_calls -= 1
              break if max_api_calls < 0
            end
            break unless results.next?
            results = results.next
          end
        end

        ##
        # @private New Topic::List from a Google::Pubsub::V1::ListTopicsResponse
        # object.
        def self.from_grpc grpc_list, service, max = nil
          topics = new(Array(grpc_list.topics).map do |grpc|
            Topic.from_grpc grpc, service
          end)
          token = grpc_list.next_page_token
          token = nil if token == ""
          topics.instance_variable_set "@token",   token
          topics.instance_variable_set "@service", service
          topics.instance_variable_set "@max",     max
          topics
        end

        protected

        ##
        # @private Raise an error unless an active connection to the service is
        # available.
        def ensure_service!
          fail "Must have active connection to service" unless @service
        end
      end
    end
  end
end
