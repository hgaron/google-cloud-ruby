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
    module Dataplex
      module V1
        # DataQualityScan related setting.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityRule>]
        #     The list of rules to evaluate against a data source. At least one rule is
        #     required.
        class DataQualitySpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The output of a DataQualityScan.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Overall data quality result -- `true` if all rules passed.
        # @!attribute [rw] dimensions
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityDimensionResult>]
        #     A list of results at the dimension level.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityRuleResult>]
        #     A list of all the rules in a job, and their results.
        # @!attribute [rw] row_count
        #   @return [::Integer]
        #     The count of rows processed.
        # @!attribute [rw] scanned_data
        #   @return [::Google::Cloud::Dataplex::V1::ScannedData]
        #     The data scanned for this result.
        class DataQualityResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DataQualityRuleResult provides a more detailed, per-rule view of the results.
        # @!attribute [rw] rule
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule]
        #     The rule specified in the DataQualitySpec, as is.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Whether the rule passed or failed.
        # @!attribute [rw] evaluated_count
        #   @return [::Integer]
        #     The number of rows a rule was evaluated against. This field is only valid
        #     for ColumnMap type rules.
        #
        #     Evaluated count can be configured to either
        #
        #     * include all rows (default) - with `null` rows automatically failing rule
        #     evaluation, or
        #     * exclude `null` rows from the `evaluated_count`, by setting
        #     `ignore_nulls = true`.
        # @!attribute [rw] passed_count
        #   @return [::Integer]
        #     The number of rows which passed a rule evaluation.
        #     This field is only valid for ColumnMap type rules.
        # @!attribute [rw] null_count
        #   @return [::Integer]
        #     The number of rows with null values in the specified column.
        # @!attribute [rw] pass_ratio
        #   @return [::Float]
        #     The ratio of **passed_count / evaluated_count**.
        #     This field is only valid for ColumnMap type rules.
        # @!attribute [rw] failing_rows_query
        #   @return [::String]
        #     The query to find rows that did not pass this rule.
        #     Only applies to ColumnMap and RowCondition rules.
        class DataQualityRuleResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DataQualityDimensionResult provides a more detailed, per-dimension view of
        # the results.
        # @!attribute [rw] passed
        #   @return [::Boolean]
        #     Whether the dimension passed or failed.
        class DataQualityDimensionResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A rule captures data quality intent about a data source.
        # @!attribute [rw] range_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RangeExpectation]
        #     ColumnMap rule which evaluates whether each column value lies between a
        #     specified range.
        # @!attribute [rw] non_null_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::NonNullExpectation]
        #     ColumnMap rule which evaluates whether each column value is null.
        # @!attribute [rw] set_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::SetExpectation]
        #     ColumnMap rule which evaluates whether each column value is contained by
        #     a specified set.
        # @!attribute [rw] regex_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RegexExpectation]
        #     ColumnMap rule which evaluates whether each column value matches a
        #     specified regex.
        # @!attribute [rw] uniqueness_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::UniquenessExpectation]
        #     ColumnAggregate rule which evaluates whether the column has duplicates.
        # @!attribute [rw] statistic_range_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::StatisticRangeExpectation]
        #     ColumnAggregate rule which evaluates whether the column aggregate
        #     statistic lies between a specified range.
        # @!attribute [rw] row_condition_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::RowConditionExpectation]
        #     Table rule which evaluates whether each row passes the specified
        #     condition.
        # @!attribute [rw] table_condition_expectation
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::TableConditionExpectation]
        #     Table rule which evaluates whether the provided expression is true.
        # @!attribute [rw] column
        #   @return [::String]
        #     Optional. The unnested column which this rule is evaluated against.
        # @!attribute [rw] ignore_null
        #   @return [::Boolean]
        #     Optional. Rows with `null` values will automatically fail a rule, unless
        #     `ignore_null` is `true`. In that case, such `null` rows are trivially
        #     considered passing.
        #
        #     Only applicable to ColumnMap rules.
        # @!attribute [rw] dimension
        #   @return [::String]
        #     Required. The dimension a rule belongs to. Results are also aggregated at
        #     the dimension level. Supported dimensions are **["COMPLETENESS",
        #     "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"]**
        # @!attribute [rw] threshold
        #   @return [::Float]
        #     Optional. The minimum ratio of **passing_rows / total_rows** required to
        #     pass this rule, with a range of [0.0, 1.0].
        #
        #     0 indicates default value (i.e. 1.0).
        class DataQualityRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Evaluates whether each column value lies between a specified range.
          # @!attribute [rw] min_value
          #   @return [::String]
          #     Optional. The minimum column value allowed for a row to pass this
          #     validation. At least one of `min_value` and `max_value` need to be
          #     provided.
          # @!attribute [rw] max_value
          #   @return [::String]
          #     Optional. The maximum column value allowed for a row to pass this
          #     validation. At least one of `min_value` and `max_value` need to be
          #     provided.
          # @!attribute [rw] strict_min_enabled
          #   @return [::Boolean]
          #     Optional. Whether each value needs to be strictly greater than ('>') the
          #     minimum, or if equality is allowed.
          #
          #     Only relevant if a `min_value` has been defined. Default = false.
          # @!attribute [rw] strict_max_enabled
          #   @return [::Boolean]
          #     Optional. Whether each value needs to be strictly lesser than ('<') the
          #     maximum, or if equality is allowed.
          #
          #     Only relevant if a `max_value` has been defined. Default = false.
          class RangeExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value is null.
          class NonNullExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value is contained by a specified set.
          # @!attribute [rw] values
          #   @return [::Array<::String>]
          #     Expected values for the column value.
          class SetExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether each column value matches a specified regex.
          # @!attribute [rw] regex
          #   @return [::String]
          #     A regular expression the column value is expected to match.
          class RegexExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the column has duplicates.
          class UniquenessExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the column aggregate statistic lies between a specified
          # range.
          # @!attribute [rw] statistic
          #   @return [::Google::Cloud::Dataplex::V1::DataQualityRule::StatisticRangeExpectation::ColumnStatistic]
          #     The aggregate metric to evaluate.
          # @!attribute [rw] min_value
          #   @return [::String]
          #     The minimum column statistic value allowed for a row to pass this
          #     validation.
          #
          #     At least one of `min_value` and `max_value` need to be provided.
          # @!attribute [rw] max_value
          #   @return [::String]
          #     The maximum column statistic value allowed for a row to pass this
          #     validation.
          #
          #     At least one of `min_value` and `max_value` need to be provided.
          # @!attribute [rw] strict_min_enabled
          #   @return [::Boolean]
          #     Whether column statistic needs to be strictly greater than ('>')
          #     the minimum, or if equality is allowed.
          #
          #     Only relevant if a `min_value` has been defined. Default = false.
          # @!attribute [rw] strict_max_enabled
          #   @return [::Boolean]
          #     Whether column statistic needs to be strictly lesser than ('<') the
          #     maximum, or if equality is allowed.
          #
          #     Only relevant if a `max_value` has been defined. Default = false.
          class StatisticRangeExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The list of aggregate metrics a rule can be evaluated against.
            module ColumnStatistic
              # Unspecified statistic type
              STATISTIC_UNDEFINED = 0

              # Evaluate the column mean
              MEAN = 1

              # Evaluate the column min
              MIN = 2

              # Evaluate the column max
              MAX = 3
            end
          end

          # Evaluates whether each row passes the specified condition.
          #
          # The SQL expression needs to use BigQuery standard SQL syntax and should
          # produce a boolean value per row as the result.
          #
          # Example: col1 >= 0 AND col2 < 10
          # @!attribute [rw] sql_expression
          #   @return [::String]
          #     The SQL expression.
          class RowConditionExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Evaluates whether the provided expression is true.
          #
          # The SQL expression needs to use BigQuery standard SQL syntax and should
          # produce a scalar boolean result.
          #
          # Example: MIN(col1) >= 0
          # @!attribute [rw] sql_expression
          #   @return [::String]
          #     The SQL expression.
          class TableConditionExpectation
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
