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
    module DiscoveryEngine
      module V1
        # UserEvent captures all metadata information Discovery Engine API needs to
        # know about how end users interact with customers' website.
        # @!attribute [rw] event_type
        #   @return [::String]
        #     Required. User event type. Allowed values are:
        #
        #     Generic values:
        #
        #     * `search`: Search for Documents.
        #     * `view-item`: Detailed page view of a Document.
        #     * `view-item-list`: View of a panel or ordered list of Documents.
        #     * `view-home-page`: View of the home page.
        #     * `view-category-page`: View of a category page, e.g. Home > Men > Jeans
        #
        #     Retail-related values:
        #
        #     * `add-to-cart`: Add an item(s) to cart, e.g. in Retail online shopping
        #     * `purchase`: Purchase an item(s)
        #
        #     Media-related values:
        #
        #     * `media-play`: Start/resume watching a video, playing a song, etc.
        #     * `media-complete`: Finished or stopped midway through a video, song, etc.
        # @!attribute [rw] user_pseudo_id
        #   @return [::String]
        #     Required. A unique identifier for tracking visitors.
        #
        #     For example, this could be implemented with an HTTP cookie, which should be
        #     able to uniquely identify a visitor on a single device. This unique
        #     identifier should not change if the visitor log in/out of the website.
        #
        #     Do not set the field to the same fixed ID for different users. This mixes
        #     the event history of those users together, which results in degraded model
        #     quality.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     The field should not contain PII or user-data. We recommend to use Google
        #     Analytics [Client
        #     ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId)
        #     for this field.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Only required for
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client#import_user_events UserEventService.ImportUserEvents}
        #     method. Timestamp of when the user event happened.
        # @!attribute [rw] user_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::UserInfo]
        #     Information about the end user.
        # @!attribute [rw] direct_user_request
        #   @return [::Boolean]
        #     Should set to true if the request is made directly from the end user, in
        #     which case the
        #     {::Google::Cloud::DiscoveryEngine::V1::UserInfo#user_agent UserEvent.user_info.user_agent}
        #     can be populated from the HTTP request.
        #
        #     This flag should be set only if the API request is made directly from the
        #     end user such as a mobile app (and not if a gateway or a server is
        #     processing and pushing the user events).
        #
        #     This should not be set when using the JavaScript tag in
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client#collect_user_event UserEventService.CollectUserEvent}.
        # @!attribute [rw] session_id
        #   @return [::String]
        #     A unique identifier for tracking a visitor session with a length limit of
        #     128 bytes. A session is an aggregation of an end user behavior in a time
        #     span.
        #
        #     A general guideline to populate the session_id:
        #
        #     1. If user has no activity for 30 min, a new session_id should be assigned.
        #     2. The session_id should be unique across users, suggest use uuid or add
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
        #     as prefix.
        # @!attribute [rw] page_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::PageInfo]
        #     Page metadata such as categories and other critical information for certain
        #     event types such as `view-category-page`.
        # @!attribute [rw] attribution_token
        #   @return [::String]
        #     Token to attribute an API response to user action(s) to trigger the event.
        #
        #     Highly recommended for user events that are the result of
        #     [RecommendationService.Recommend][]. This field enables accurate
        #     attribution of recommendation model performance.
        #
        #     The value must be one of:
        #
        #     * [PredictResponse.attribution_token][] for events that are the result of
        #     [RecommendationService.Recommend][].
        #     * {::Google::Cloud::DiscoveryEngine::V1::SearchResponse#attribution_token SearchResponse.attribution_token} for events that are the result of
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchService::Client#search SearchService.Search}.
        #     * [CompleteQueryResponse.attribution_token][] for events that are the
        #     result of
        #     {::Google::Cloud::DiscoveryEngine::V1::CompletionService::Client#complete_query CompletionService.CompleteQuery}.
        #
        #     This token enables us to accurately attribute page view or conversion
        #     completion back to the event and the particular predict response containing
        #     this clicked/purchased product. If user clicks on product K in the
        #     recommendation results, pass [PredictResponse.attribution_token][] as a URL
        #     parameter to product K's page. When recording events on product K's page,
        #     log the [PredictResponse.attribution_token][] to this field.
        # @!attribute [rw] filter
        #   @return [::String]
        #     The filter syntax consists of an expression language for constructing a
        #     predicate from one or more fields of the documents being filtered.
        #
        #     One example is for `search` events, the associated
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest SearchRequest} may contain
        #     a filter expression in [SearchRequest.filter][] conforming to
        #     https://google.aip.dev/160#filtering.
        #
        #     Similarly, for `view-item-list` events that are generated from a
        #     [RecommendationService.RecommendRequest][], this field may be populated
        #     directly from [RecommendationService.RecommendRequest.filter][] conforming
        #     to https://google.aip.dev/160#filtering.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] documents
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::DocumentInfo>]
        #     List of Documents associated with this user event.
        #
        #     This field is optional except for the following event types:
        #
        #     * `view-item`
        #     * `add-to-cart`
        #     * `purchase`
        #     * `media-play`
        #     * `media-complete`
        #
        #     In a `search` event, this field represents the documents returned to the
        #     end user on the current page (the end user may have not finished browsing
        #     the whole page yet). When a new page is returned to the end user, after
        #     pagination/filtering/ordering even for the same query, a new `search` event
        #     with different
        #     {::Google::Cloud::DiscoveryEngine::V1::UserEvent#documents UserEvent.documents}
        #     is desired.
        # @!attribute [rw] panel
        #   @return [::Google::Cloud::DiscoveryEngine::V1::PanelInfo]
        #     Panel metadata associated with this user event.
        # @!attribute [rw] search_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::SearchInfo]
        #     Search API details related to the event.
        #
        #     This field should be set for `search` event.
        # @!attribute [rw] completion_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::CompletionInfo]
        #     CompleteQuery API details related to the event.
        #
        #     This field should be set for `search` event when autocomplete function is
        #     enabled and the user clicks a suggestion for search.
        # @!attribute [rw] transaction_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::TransactionInfo]
        #     The transaction metadata (if any) associated with this user event.
        # @!attribute [rw] tag_ids
        #   @return [::Array<::String>]
        #     A list of identifiers for the independent experiment groups this user event
        #     belongs to. This is used to distinguish between user events associated with
        #     different experiment setups on the customer end.
        # @!attribute [rw] promotion_ids
        #   @return [::Array<::String>]
        #     The promotion IDs if this is an event associated with promotions.
        #     Currently, this field is restricted to at most one ID.
        # @!attribute [rw] attributes
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::DiscoveryEngine::V1::CustomAttribute}]
        #     Extra user event features to include in the recommendation model.
        #     These attributes must NOT contain data that needs to be parsed or processed
        #     further, e.g. JSON or other encodings.
        #
        #     If you provide custom attributes for ingested user events, also include
        #     them in the user events that you associate with prediction requests. Custom
        #     attribute formatting must be consistent between imported events and events
        #     provided with prediction requests. This lets the Discovery Engine API use
        #     those custom attributes when training models and serving predictions, which
        #     helps improve recommendation quality.
        #
        #     This field needs to pass all below criteria, otherwise an
        #     `INVALID_ARGUMENT` error is returned:
        #
        #     * The key must be a UTF-8 encoded string with a length limit of 5,000
        #       characters.
        #     * For text attributes, at most 400 values are allowed. Empty values are not
        #       allowed. Each value must be a UTF-8 encoded string with a length limit of
        #       256 characters.
        #     * For number attributes, at most 400 values are allowed.
        #
        #     For product recommendations, an example of extra user information is
        #     ` traffic_channel`, which is how a user arrives at the site. Users can
        #     arrive
        #     at the site by coming to the site directly, coming through Google
        #     search, or in other ways.
        # @!attribute [rw] media_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1::MediaInfo]
        #     Media-specific info.
        class UserEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::DiscoveryEngine::V1::CustomAttribute]
          class AttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Detailed page information.
        # @!attribute [rw] pageview_id
        #   @return [::String]
        #     A unique ID of a web page view.
        #
        #     This should be kept the same for all user events triggered from the same
        #     pageview. For example, an item detail page view could trigger multiple
        #     events as the user is browsing the page. The `pageViewId` property should
        #     be kept the same for all these events so that they can be grouped together
        #     properly.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically.
        # @!attribute [rw] page_category
        #   @return [::String]
        #     The most specific category associated with a category page.
        #
        #     To represent full path of category, use '>' sign to separate different
        #     hierarchies. If '>' is part of the category name, please replace it with
        #     other character(s).
        #
        #     Category pages include special pages such as sales or promotions. For
        #     instance, a special sale page may have the category hierarchy:
        #     "pageCategory" : "Sales > 2017 Black Friday Deals".
        #
        #     Required for `view-category-page` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Complete URL (window.location.href) of the user's current page.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically. Maximum length 5,000
        #     characters.
        # @!attribute [rw] referrer_uri
        #   @return [::String]
        #     The referrer URL of the current page.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically. However, some browser
        #     privacy restrictions may cause this field to be empty.
        class PageInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed search information.
        # @!attribute [rw] search_query
        #   @return [::String]
        #     The user's search query.
        #
        #     See
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#query SearchRequest.query}
        #     for definition.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     At least one of
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchInfo#search_query search_query} or
        #     {::Google::Cloud::DiscoveryEngine::V1::PageInfo#page_category PageInfo.page_category}
        #     is required for `search` events. Other event types should not set this
        #     field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The order in which products are returned, if applicable.
        #
        #     See [SearchRequest.order_by][] for definition and syntax.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     This can only be set for `search` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] offset
        #   @return [::Integer]
        #     An integer that specifies the current offset for pagination (the 0-indexed
        #     starting location, amongst the products deemed by the API as relevant).
        #
        #     See
        #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#offset SearchRequest.offset}
        #     for definition.
        #
        #     If this field is negative, an INVALID_ARGUMENT is returned.
        #
        #     This can only be set for `search` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        class SearchInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed completion information including completion attribution token and
        # clicked completion info.
        # @!attribute [rw] selected_suggestion
        #   @return [::String]
        #     End user selected [CompleteQueryResponse.CompletionResult.suggestion][].
        # @!attribute [rw] selected_position
        #   @return [::Integer]
        #     End user selected [CompleteQueryResponse.CompletionResult.suggestion][]
        #     position, starting from 0.
        class CompletionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A transaction represents the entire purchase transaction.
        # @!attribute [rw] value
        #   @return [::Float]
        #     Required. Total non-zero value associated with the transaction. This value
        #     may include shipping, tax, or other adjustments to the total value that you
        #     want to include.
        # @!attribute [rw] currency
        #   @return [::String]
        #     Required. Currency code. Use three-character ISO-4217 code.
        # @!attribute [rw] transaction_id
        #   @return [::String]
        #     The transaction ID with a length limit of 128 characters.
        # @!attribute [rw] tax
        #   @return [::Float]
        #     All the taxes associated with the transaction.
        # @!attribute [rw] cost
        #   @return [::Float]
        #     All the costs associated with the products. These can be manufacturing
        #     costs, shipping expenses not borne by the end user, or any other costs,
        #     such that:
        #
        #     * Profit = {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value value} -
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#tax tax} -
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#cost cost}
        # @!attribute [rw] discount_value
        #   @return [::Float]
        #     The total discount(s) value applied to this transaction.
        #     This figure should be excluded from
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value TransactionInfo.value}
        #
        #     For example, if a user paid
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value TransactionInfo.value}
        #     amount, then nominal (pre-discount) value of the transaction is the sum of
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value TransactionInfo.value}
        #     and
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#discount_value TransactionInfo.discount_value}
        #
        #     This means that profit is calculated the same way, regardless of the
        #     discount value, and that
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#discount_value TransactionInfo.discount_value}
        #     can be larger than
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value TransactionInfo.value}:
        #
        #     * Profit = {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#value value} -
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#tax tax} -
        #     {::Google::Cloud::DiscoveryEngine::V1::TransactionInfo#cost cost}
        class TransactionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed document information associated with a user event.
        # @!attribute [rw] id
        #   @return [::String]
        #     Required. The Document resource ID.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The Document resource full name, of the form:
        #     `projects/{project_id}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/branches/{branch_id}/documents/{document_id}`
        # @!attribute [rw] quantity
        #   @return [::Integer]
        #     Quantity of the Document associated with the user event. Defaults to 1.
        #
        #     For example, this field will be 2 if two quantities of the same Document
        #     are involved in a `add-to-cart` event.
        #
        #     Required for events of the following event types:
        #
        #     * `add-to-cart`
        #     * `purchase`
        # @!attribute [rw] promotion_ids
        #   @return [::Array<::String>]
        #     The promotion IDs associated with this Document.
        #     Currently, this field is restricted to at most one ID.
        class DocumentInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed panel information associated with a user event.
        # @!attribute [rw] panel_id
        #   @return [::String]
        #     Required. The panel ID.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name of the panel.
        # @!attribute [rw] panel_position
        #   @return [::Integer]
        #     The ordered position of the panel, if shown to the user with other panels.
        #     If set, then
        #     {::Google::Cloud::DiscoveryEngine::V1::PanelInfo#total_panels total_panels} must
        #     also be set.
        # @!attribute [rw] total_panels
        #   @return [::Integer]
        #     The total number of panels, including this one, shown to the user.
        #     Must be set if
        #     {::Google::Cloud::DiscoveryEngine::V1::PanelInfo#panel_position panel_position}
        #     is set.
        class PanelInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Media-specific user event information.
        # @!attribute [rw] media_progress_duration
        #   @return [::Google::Protobuf::Duration]
        #     The media progress time in seconds, if applicable.
        #     For example, if the end user has finished 90 seconds of a playback video,
        #     then [MediaInfo.media_progress_duration.seconds][Duration.seconds] should
        #     be set to 90.
        # @!attribute [rw] media_progress_percentage
        #   @return [::Float]
        #     Media progress should be computed using only the media_progress_duration
        #     relative to the media total length.
        #
        #     This value must be between `[0, 1.0]` inclusive.
        #
        #     If this is not a playback or the progress cannot be computed (e.g. ongoing
        #     livestream), this field should be unset.
        class MediaInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end