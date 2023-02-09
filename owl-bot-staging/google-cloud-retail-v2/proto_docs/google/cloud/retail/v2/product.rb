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
    module Retail
      module V2
        # Product captures all metadata information of items to be recommended or
        # searched.
        # @!attribute [rw] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when this product becomes unavailable for
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search}. Note
        #     that this is only applicable to
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY} and
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION}, and
        #     ignored for {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}.
        #     In general, we suggest the users to delete the stale products explicitly,
        #     instead of using this field to determine staleness.
        #
        #     If it is set, the {::Google::Cloud::Retail::V2::Product Product} is not
        #     available for
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} after
        #     {::Google::Cloud::Retail::V2::Product#expire_time expire_time}. However, the
        #     product can still be retrieved by
        #     {::Google::Cloud::Retail::V2::ProductService::Client#get_product ProductService.GetProduct}
        #     and
        #     {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}.
        #
        #     {::Google::Cloud::Retail::V2::Product#expire_time expire_time} must be later
        #     than {::Google::Cloud::Retail::V2::Product#available_time available_time} and
        #     {::Google::Cloud::Retail::V2::Product#publish_time publish_time}, otherwise an
        #     INVALID_ARGUMENT error is thrown.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [expiration_date](https://support.google.com/merchants/answer/6324499).
        # @!attribute [rw] ttl
        #   @return [::Google::Protobuf::Duration]
        #     Input only. The TTL (time to live) of the product. Note that this is only
        #     applicable to {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
        #     and {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION},
        #     and ignored for
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}. In general,
        #     we suggest the users to delete the stale products explicitly, instead of
        #     using this field to determine staleness.
        #
        #     If it is set, it must be a non-negative value, and
        #     {::Google::Cloud::Retail::V2::Product#expire_time expire_time} is set as
        #     current timestamp plus {::Google::Cloud::Retail::V2::Product#ttl ttl}. The
        #     derived {::Google::Cloud::Retail::V2::Product#expire_time expire_time} is
        #     returned in the output and {::Google::Cloud::Retail::V2::Product#ttl ttl} is
        #     left blank when retrieving the {::Google::Cloud::Retail::V2::Product Product}.
        #
        #     If it is set, the product is not available for
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search} after
        #     current timestamp plus {::Google::Cloud::Retail::V2::Product#ttl ttl}.
        #     However, the product can still be retrieved by
        #     {::Google::Cloud::Retail::V2::ProductService::Client#get_product ProductService.GetProduct}
        #     and
        #     {::Google::Cloud::Retail::V2::ProductService::Client#list_products ProductService.ListProducts}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Full resource name of the product, such as
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # @!attribute [rw] id
        #   @return [::String]
        #     Immutable. {::Google::Cloud::Retail::V2::Product Product} identifier, which is
        #     the final component of {::Google::Cloud::Retail::V2::Product#name name}. For
        #     example, this field is "id_1", if
        #     {::Google::Cloud::Retail::V2::Product#name name} is
        #     `projects/*/locations/global/catalogs/default_catalog/branches/default_branch/products/id_1`.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [id](https://support.google.com/merchants/answer/6324405). Schema.org
        #     property [Product.sku](https://schema.org/sku).
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Retail::V2::Product::Type]
        #     Immutable. The type of the product. Default to
        #     {::Google::Cloud::Retail::V2::ProductLevelConfig#ingestion_product_type Catalog.product_level_config.ingestion_product_type}
        #     if unset.
        # @!attribute [rw] primary_product_id
        #   @return [::String]
        #     Variant group identifier. Must be an
        #     {::Google::Cloud::Retail::V2::Product#id id}, with the same parent branch with
        #     this product. Otherwise, an error is thrown.
        #
        #     For {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product}s, this field can only be empty or
        #     set to the same value as {::Google::Cloud::Retail::V2::Product#id id}.
        #
        #     For VARIANT {::Google::Cloud::Retail::V2::Product Product}s, this field cannot
        #     be empty. A maximum of 2,000 products are allowed to share the same
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product}. Otherwise, an INVALID_ARGUMENT
        #     error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [item_group_id](https://support.google.com/merchants/answer/6324507).
        #     Schema.org property
        #     [Product.inProductGroupWithID](https://schema.org/inProductGroupWithID).
        # @!attribute [rw] collection_member_ids
        #   @return [::Array<::String>]
        #     The {::Google::Cloud::Retail::V2::Product#id id} of the collection members when
        #     {::Google::Cloud::Retail::V2::Product#type type} is
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION}.
        #
        #     Non-existent product ids are allowed.
        #     The {::Google::Cloud::Retail::V2::Product#type type} of the members must be
        #     either {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY} or
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT} otherwise an
        #     INVALID_ARGUMENT error is thrown. Should not set it for other types. A
        #     maximum of 1000 values are allowed. Otherwise, an INVALID_ARGUMENT error is
        #     return.
        # @!attribute [rw] gtin
        #   @return [::String]
        #     The Global Trade Item Number (GTIN) of the product.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     This field must be a Unigram. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [gtin](https://support.google.com/merchants/answer/6324461).
        #     Schema.org property
        #     [Product.isbn](https://schema.org/isbn),
        #     [Product.gtin8](https://schema.org/gtin8),
        #     [Product.gtin12](https://schema.org/gtin12),
        #     [Product.gtin13](https://schema.org/gtin13), or
        #     [Product.gtin14](https://schema.org/gtin14).
        #
        #     If the value is not a valid GTIN, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] categories
        #   @return [::Array<::String>]
        #     Product categories. This field is repeated for supporting one product
        #     belonging to several parallel categories. Strongly recommended using the
        #     full path for better search / recommendation quality.
        #
        #
        #     To represent full path of category, use '>' sign to separate different
        #     hierarchies. If '>' is part of the category name, replace it with
        #     other character(s).
        #
        #     For example, if a shoes product belongs to both
        #     ["Shoes & Accessories" -> "Shoes"] and
        #     ["Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be
        #     represented as:
        #
        #          "categories": [
        #            "Shoes & Accessories > Shoes",
        #            "Sports & Fitness > Athletic Clothing > Shoes"
        #          ]
        #
        #     Must be set for {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product} otherwise an INVALID_ARGUMENT
        #     error is returned.
        #
        #     At most 250 values are allowed per
        #     {::Google::Cloud::Retail::V2::Product Product}. Empty values are not allowed.
        #     Each value must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [google_product_category][mc_google_product_category]. Schema.org property
        #     [Product.category] (https://schema.org/category).
        #
        #     [mc_google_product_category]:
        #     https://support.google.com/merchants/answer/6324436
        # @!attribute [rw] title
        #   @return [::String]
        #     Required. Product title.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [title](https://support.google.com/merchants/answer/6324415). Schema.org
        #     property [Product.name](https://schema.org/name).
        # @!attribute [rw] brands
        #   @return [::Array<::String>]
        #     The brands of the product.
        #
        #     A maximum of 30 brands are allowed. Each brand must be a UTF-8 encoded
        #     string with a length limit of 1,000 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [brand](https://support.google.com/merchants/answer/6324351). Schema.org
        #     property [Product.brand](https://schema.org/brand).
        # @!attribute [rw] description
        #   @return [::String]
        #     Product description.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [description](https://support.google.com/merchants/answer/6324468).
        #     Schema.org property [Product.description](https://schema.org/description).
        # @!attribute [rw] language_code
        #   @return [::String]
        #     Language of the title/description and other string attributes. Use language
        #     tags defined by [BCP 47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
        #
        #     For product prediction, this field is ignored and the model automatically
        #     detects the text language. The {::Google::Cloud::Retail::V2::Product Product}
        #     can include text in different languages, but duplicating
        #     {::Google::Cloud::Retail::V2::Product Product}s to provide text in multiple
        #     languages can result in degraded model performance.
        #
        #     For product search this field is in use. It defaults to "en-US" if unset.
        # @!attribute [rw] attributes
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Retail::V2::CustomAttribute}]
        #     Highly encouraged. Extra product attributes to be included. For example,
        #     for products, this could include the store name, vendor, style, color, etc.
        #     These are very strong signals for recommendation model, thus we highly
        #     recommend providing the attributes here.
        #
        #     Features that can take on one of a limited number of possible values. Two
        #     types of features can be set are:
        #
        #     Textual features. some examples would be the brand/maker of a product, or
        #     country of a customer. Numerical features. Some examples would be the
        #     height/weight of a product, or age of a customer.
        #
        #     For example: `{ "vendor": {"text": ["vendor123", "vendor456"]},
        #     "lengths_cm": \\{"numbers":[2.3, 15.4]}, "heights_cm": \\{"numbers":[8.1, 6.4]}
        #     }`.
        #
        #     This field needs to pass all below criteria, otherwise an INVALID_ARGUMENT
        #     error is returned:
        #
        #     * Max entries count: 200.
        #     * The key must be a UTF-8 encoded string with a length limit of 128
        #       characters.
        #     * For indexable attribute, the key must match the pattern:
        #       `[a-zA-Z0-9][a-zA-Z0-9_]*`. For example, `key0LikeThis` or
        #       `KEY_1_LIKE_THIS`.
        #     * For text attributes, at most 400 values are allowed. Empty values are not
        #       allowed. Each value must be a non-empty UTF-8 encoded string with a
        #       length limit of 256 characters.
        #     * For number attributes, at most 400 values are allowed.
        # @!attribute [rw] tags
        #   @return [::Array<::String>]
        #     Custom tags associated with the product.
        #
        #     At most 250 values are allowed per
        #     {::Google::Cloud::Retail::V2::Product Product}. This value must be a UTF-8
        #     encoded string with a length limit of 1,000 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     This tag can be used for filtering recommendation results by passing the
        #     tag as part of the
        #     {::Google::Cloud::Retail::V2::PredictRequest#filter PredictRequest.filter}.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [custom_label_0–4](https://support.google.com/merchants/answer/6324473).
        # @!attribute [rw] price_info
        #   @return [::Google::Cloud::Retail::V2::PriceInfo]
        #     Product price and cost information.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [price](https://support.google.com/merchants/answer/6324371).
        # @!attribute [rw] rating
        #   @return [::Google::Cloud::Retail::V2::Rating]
        #     The rating of this product.
        # @!attribute [rw] available_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when this {::Google::Cloud::Retail::V2::Product Product} becomes
        #     available for
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search}. Note
        #     that this is only applicable to
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY} and
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION}, and
        #     ignored for {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}.
        # @!attribute [rw] availability
        #   @return [::Google::Cloud::Retail::V2::Product::Availability]
        #     The online availability of the {::Google::Cloud::Retail::V2::Product Product}.
        #     Default to
        #     {::Google::Cloud::Retail::V2::Product::Availability::IN_STOCK Availability.IN_STOCK}.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [availability](https://support.google.com/merchants/answer/6324448).
        #     Schema.org property [Offer.availability](https://schema.org/availability).
        # @!attribute [rw] available_quantity
        #   @return [::Google::Protobuf::Int32Value]
        #     The available quantity of the item.
        # @!attribute [rw] fulfillment_info
        #   @return [::Array<::Google::Cloud::Retail::V2::FulfillmentInfo>]
        #     Fulfillment information, such as the store IDs for in-store pickup or
        #     region IDs for different shipping methods.
        #
        #     All the elements must have distinct
        #     {::Google::Cloud::Retail::V2::FulfillmentInfo#type FulfillmentInfo.type}.
        #     Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Canonical URL directly linking to the product detail page.
        #
        #     It is strongly recommended to provide a valid uri for the product,
        #     otherwise the service performance could be significantly degraded.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [link](https://support.google.com/merchants/answer/6324416). Schema.org
        #     property [Offer.url](https://schema.org/url).
        # @!attribute [rw] images
        #   @return [::Array<::Google::Cloud::Retail::V2::Image>]
        #     Product images for the product. We highly recommend putting the main
        #     image first.
        #
        #     A maximum of 300 images are allowed.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [image_link](https://support.google.com/merchants/answer/6324350).
        #     Schema.org property [Product.image](https://schema.org/image).
        # @!attribute [rw] audience
        #   @return [::Google::Cloud::Retail::V2::Audience]
        #     The target group associated with a given audience (e.g. male, veterans,
        #     car owners, musicians, etc.) of the product.
        # @!attribute [rw] color_info
        #   @return [::Google::Cloud::Retail::V2::ColorInfo]
        #     The color of the product.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [color](https://support.google.com/merchants/answer/6324487). Schema.org
        #     property [Product.color](https://schema.org/color).
        # @!attribute [rw] sizes
        #   @return [::Array<::String>]
        #     The size of the product. To represent different size systems or size types,
        #     consider using this format: [[[size_system:]size_type:]size_value].
        #
        #     For example, in "US:MENS:M", "US" represents size system; "MENS" represents
        #     size type; "M" represents size value. In "GIRLS:27", size system is empty;
        #     "GIRLS" represents size type; "27" represents size value. In "32 inches",
        #     both size system and size type are empty, while size value is "32 inches".
        #
        #     A maximum of 20 values are allowed per
        #     {::Google::Cloud::Retail::V2::Product Product}. Each value must be a UTF-8
        #     encoded string with a length limit of 128 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [size](https://support.google.com/merchants/answer/6324492),
        #     [size_type](https://support.google.com/merchants/answer/6324497), and
        #     [size_system](https://support.google.com/merchants/answer/6324502).
        #     Schema.org property [Product.size](https://schema.org/size).
        # @!attribute [rw] materials
        #   @return [::Array<::String>]
        #     The material of the product. For example, "leather", "wooden".
        #
        #     A maximum of 20 values are allowed. Each value must be a UTF-8 encoded
        #     string with a length limit of 200 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [material](https://support.google.com/merchants/answer/6324410). Schema.org
        #     property [Product.material](https://schema.org/material).
        # @!attribute [rw] patterns
        #   @return [::Array<::String>]
        #     The pattern or graphic print of the product. For example, "striped", "polka
        #     dot", "paisley".
        #
        #     A maximum of 20 values are allowed per
        #     {::Google::Cloud::Retail::V2::Product Product}. Each value must be a UTF-8
        #     encoded string with a length limit of 128 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [pattern](https://support.google.com/merchants/answer/6324483). Schema.org
        #     property [Product.pattern](https://schema.org/pattern).
        # @!attribute [rw] conditions
        #   @return [::Array<::String>]
        #     The condition of the product. Strongly encouraged to use the standard
        #     values: "new", "refurbished", "used".
        #
        #     A maximum of 1 value is allowed per
        #     {::Google::Cloud::Retail::V2::Product Product}. Each value must be a UTF-8
        #     encoded string with a length limit of 128 characters. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        #
        #     Corresponding properties: Google Merchant Center property
        #     [condition](https://support.google.com/merchants/answer/6324469).
        #     Schema.org property
        #     [Offer.itemCondition](https://schema.org/itemCondition).
        # @!attribute [rw] promotions
        #   @return [::Array<::Google::Cloud::Retail::V2::Promotion>]
        #     The promotions applied to the product. A maximum of 10 values are allowed
        #     per {::Google::Cloud::Retail::V2::Product Product}. Only
        #     {::Google::Cloud::Retail::V2::Promotion#promotion_id Promotion.promotion_id}
        #     will be used, other fields will be ignored if set.
        # @!attribute [rw] publish_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The timestamp when the product is published by the retailer for the first
        #     time, which indicates the freshness of the products. Note that this field
        #     is different from
        #     {::Google::Cloud::Retail::V2::Product#available_time available_time}, given it
        #     purely describes product freshness regardless of when it is available on
        #     search and recommendation.
        # @!attribute [rw] retrievable_fields
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the {::Google::Cloud::Retail::V2::Product Product}s
        #     are returned in {::Google::Cloud::Retail::V2::SearchResponse SearchResponse}.
        #
        #     Supported fields for all {::Google::Cloud::Retail::V2::Product#type type}s:
        #
        #     * {::Google::Cloud::Retail::V2::Product#audience audience}
        #     * {::Google::Cloud::Retail::V2::Product#availability availability}
        #     * {::Google::Cloud::Retail::V2::Product#brands brands}
        #     * {::Google::Cloud::Retail::V2::Product#color_info color_info}
        #     * {::Google::Cloud::Retail::V2::Product#conditions conditions}
        #     * {::Google::Cloud::Retail::V2::Product#gtin gtin}
        #     * {::Google::Cloud::Retail::V2::Product#materials materials}
        #     * {::Google::Cloud::Retail::V2::Product#name name}
        #     * {::Google::Cloud::Retail::V2::Product#patterns patterns}
        #     * {::Google::Cloud::Retail::V2::Product#price_info price_info}
        #     * {::Google::Cloud::Retail::V2::Product#rating rating}
        #     * {::Google::Cloud::Retail::V2::Product#sizes sizes}
        #     * {::Google::Cloud::Retail::V2::Product#title title}
        #     * {::Google::Cloud::Retail::V2::Product#uri uri}
        #
        #     Supported fields only for
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY} and
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION}:
        #
        #     * {::Google::Cloud::Retail::V2::Product#categories categories}
        #     * {::Google::Cloud::Retail::V2::Product#description description}
        #     * {::Google::Cloud::Retail::V2::Product#images images}
        #
        #     Supported fields only for
        #     {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}:
        #
        #     * Only the first image in {::Google::Cloud::Retail::V2::Product#images images}
        #
        #     To mark {::Google::Cloud::Retail::V2::Product#attributes attributes} as
        #     retrievable, include paths of the form "attributes.key" where "key" is the
        #     key of a custom attribute, as specified in
        #     {::Google::Cloud::Retail::V2::Product#attributes attributes}.
        #
        #     For {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY} and
        #     {::Google::Cloud::Retail::V2::Product::Type::COLLECTION Type.COLLECTION}, the
        #     following fields are always returned in
        #     {::Google::Cloud::Retail::V2::SearchResponse SearchResponse} by default:
        #
        #     * {::Google::Cloud::Retail::V2::Product#name name}
        #
        #     For {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}, the
        #     following fields are always returned in by default:
        #
        #     * {::Google::Cloud::Retail::V2::Product#name name}
        #     * {::Google::Cloud::Retail::V2::Product#color_info color_info}
        #
        #     The maximum number of paths is 30. Otherwise, an INVALID_ARGUMENT error is
        #     returned.
        #
        #     Note: Returning more fields in
        #     {::Google::Cloud::Retail::V2::SearchResponse SearchResponse} can increase
        #     response payload size and serving latency.
        #
        #     This field is deprecated. Use the retrievable site-wide control instead.
        # @!attribute [r] variants
        #   @return [::Array<::Google::Cloud::Retail::V2::Product>]
        #     Output only. Product variants grouped together on primary product which
        #     share similar product attributes. It's automatically grouped by
        #     {::Google::Cloud::Retail::V2::Product#primary_product_id primary_product_id} for
        #     all the product variants. Only populated for
        #     {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
        #     {::Google::Cloud::Retail::V2::Product Product}s.
        #
        #     Note: This field is OUTPUT_ONLY for
        #     {::Google::Cloud::Retail::V2::ProductService::Client#get_product ProductService.GetProduct}.
        #     Do not set this field in API requests.
        # @!attribute [r] local_inventories
        #   @return [::Array<::Google::Cloud::Retail::V2::LocalInventory>]
        #     Output only. A list of local inventories specific to different places.
        #
        #     This is only available for users who have Retail Search enabled, and it can
        #     be managed by
        #     {::Google::Cloud::Retail::V2::ProductService::Client#add_local_inventories ProductService.AddLocalInventories}
        #     and
        #     {::Google::Cloud::Retail::V2::ProductService::Client#remove_local_inventories ProductService.RemoveLocalInventories}
        #     APIs.
        class Product
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Retail::V2::CustomAttribute]
          class AttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The type of this product.
          module Type

            # Default value. Default to
            # {::Google::Cloud::Retail::V2::ProductLevelConfig#ingestion_product_type Catalog.product_level_config.ingestion_product_type}
            # if unset.
            TYPE_UNSPECIFIED = 0

            # The primary type.
            #
            # As the primary unit for predicting, indexing and search serving, a
            # {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
            # {::Google::Cloud::Retail::V2::Product Product} is grouped with multiple
            # {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}
            # {::Google::Cloud::Retail::V2::Product Product}s.
            PRIMARY = 1

            # The variant type.
            #
            # {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}
            # {::Google::Cloud::Retail::V2::Product Product}s usually share some common
            # attributes on the same
            # {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
            # {::Google::Cloud::Retail::V2::Product Product}s, but they have variant
            # attributes like different colors, sizes and prices, etc.
            VARIANT = 2

            # The collection type. Collection products are bundled
            # {::Google::Cloud::Retail::V2::Product::Type::PRIMARY Type.PRIMARY}
            # {::Google::Cloud::Retail::V2::Product Product}s or
            # {::Google::Cloud::Retail::V2::Product::Type::VARIANT Type.VARIANT}
            # {::Google::Cloud::Retail::V2::Product Product}s that are sold together, such
            # as a jewelry set with necklaces, earrings and rings, etc.
            COLLECTION = 3
          end

          # Product availability. If this field is unspecified, the product is
          # assumed to be in stock.
          module Availability

            # Default product availability. Default to
            # {::Google::Cloud::Retail::V2::Product::Availability::IN_STOCK Availability.IN_STOCK}
            # if unset.
            AVAILABILITY_UNSPECIFIED = 0

            # Product in stock.
            IN_STOCK = 1

            # Product out of stock.
            OUT_OF_STOCK = 2

            # Product that is in pre-order state.
            PREORDER = 3

            # Product that is back-ordered (i.e. temporarily out of stock).
            BACKORDER = 4
          end
        end
      end
    end
  end
end

