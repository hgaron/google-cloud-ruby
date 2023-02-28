# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Bigtable
      module V2
        # Request message for Bigtable.ReadRows.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table from which to read.
        #     Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. This API only accepts the
        #     empty value of app_profile_id.
        # @!attribute [rw] rows
        #   @return [::Google::Cloud::Bigtable::V2::RowSet]
        #     The row keys and/or ranges to read sequentially. If not specified, reads
        #     from all rows.
        # @!attribute [rw] filter
        #   @return [::Google::Cloud::Bigtable::V2::RowFilter]
        #     The filter to apply to the contents of the specified row(s). If unset,
        #     reads the entirety of each row.
        # @!attribute [rw] rows_limit
        #   @return [::Integer]
        #     The read will stop after committing to N rows' worth of results. The
        #     default (zero) is to return all results.
        # @!attribute [rw] request_stats_view
        #   @return [::Google::Cloud::Bigtable::V2::ReadRowsRequest::RequestStatsView]
        #     The view into RequestStats, as described above.
        class ReadRowsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The desired view into RequestStats that should be returned in the response.
          #
          # See also: RequestStats message.
          module RequestStatsView
            # The default / unset value. The API will default to the NONE option below.
            REQUEST_STATS_VIEW_UNSPECIFIED = 0

            # Do not include any RequestStats in the response. This will leave the
            # RequestStats embedded message unset in the response.
            REQUEST_STATS_NONE = 1

            # Include the full set of available RequestStats in the response,
            # applicable to this read.
            REQUEST_STATS_FULL = 2
          end
        end

        # Response message for Bigtable.ReadRows.
        # @!attribute [rw] chunks
        #   @return [::Array<::Google::Cloud::Bigtable::V2::ReadRowsResponse::CellChunk>]
        #     A collection of a row's contents as part of the read request.
        # @!attribute [rw] last_scanned_row_key
        #   @return [::String]
        #     Optionally the server might return the row key of the last row it
        #     has scanned.  The client can use this to construct a more
        #     efficient retry request if needed: any row keys or portions of
        #     ranges less than this row key can be dropped from the request.
        #     This is primarily useful for cases where the server has read a
        #     lot of data that was filtered out since the last committed row
        #     key, allowing the client to skip that work on a retry.
        # @!attribute [rw] request_stats
        #   @return [::Google::Cloud::Bigtable::V2::RequestStats]
        #     If requested, provide enhanced query performance statistics. The semantics
        #     dictate:
        #       * request_stats is empty on every (streamed) response, except
        #       * request_stats has non-empty information after all chunks have been
        #         streamed, where the ReadRowsResponse message only contains
        #         request_stats.
        #           * For example, if a read request would have returned an empty
        #             response instead a single ReadRowsResponse is streamed with empty
        #             chunks and request_stats filled.
        #
        #     Visually, response messages will stream as follows:
        #        ... -> \\{chunks: [...]} -> \\{chunks: [], request_stats: \\{...}}
        #       \______________________/  \________________________________/
        #           Primary response         Trailer of RequestStats info
        #
        #     Or if the read did not return any values:
        #       \\{chunks: [], request_stats: \\{...}}
        #       \________________________________/
        #          Trailer of RequestStats info
        class ReadRowsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies a piece of a row's contents returned as part of the read
          # response stream.
          # @!attribute [rw] row_key
          #   @return [::String]
          #     The row key for this chunk of data.  If the row key is empty,
          #     this CellChunk is a continuation of the same row as the previous
          #     CellChunk in the response stream, even if that CellChunk was in a
          #     previous ReadRowsResponse message.
          # @!attribute [rw] family_name
          #   @return [::Google::Protobuf::StringValue]
          #     The column family name for this chunk of data.  If this message
          #     is not present this CellChunk is a continuation of the same column
          #     family as the previous CellChunk.  The empty string can occur as a
          #     column family name in a response so clients must check
          #     explicitly for the presence of this message, not just for
          #     `family_name.value` being non-empty.
          # @!attribute [rw] qualifier
          #   @return [::Google::Protobuf::BytesValue]
          #     The column qualifier for this chunk of data.  If this message
          #     is not present, this CellChunk is a continuation of the same column
          #     as the previous CellChunk.  Column qualifiers may be empty so
          #     clients must check for the presence of this message, not just
          #     for `qualifier.value` being non-empty.
          # @!attribute [rw] timestamp_micros
          #   @return [::Integer]
          #     The cell's stored timestamp, which also uniquely identifies it
          #     within its column.  Values are always expressed in
          #     microseconds, but individual tables may set a coarser
          #     granularity to further restrict the allowed values. For
          #     example, a table which specifies millisecond granularity will
          #     only allow values of `timestamp_micros` which are multiples of
          #     1000.  Timestamps are only set in the first CellChunk per cell
          #     (for cells split into multiple chunks).
          # @!attribute [rw] labels
          #   @return [::Array<::String>]
          #     Labels applied to the cell by a
          #     {::Google::Cloud::Bigtable::V2::RowFilter RowFilter}.  Labels are only set
          #     on the first CellChunk per cell.
          # @!attribute [rw] value
          #   @return [::String]
          #     The value stored in the cell.  Cell values can be split across
          #     multiple CellChunks.  In that case only the value field will be
          #     set in CellChunks after the first: the timestamp and labels
          #     will only be present in the first CellChunk, even if the first
          #     CellChunk came in a previous ReadRowsResponse.
          # @!attribute [rw] value_size
          #   @return [::Integer]
          #     If this CellChunk is part of a chunked cell value and this is
          #     not the final chunk of that cell, value_size will be set to the
          #     total length of the cell value.  The client can use this size
          #     to pre-allocate memory to hold the full cell value.
          # @!attribute [rw] reset_row
          #   @return [::Boolean]
          #     Indicates that the client should drop all previous chunks for
          #     `row_key`, as it will be re-read from the beginning.
          # @!attribute [rw] commit_row
          #   @return [::Boolean]
          #     Indicates that the client can safely process all previous chunks for
          #     `row_key`, as its data has been fully read.
          class CellChunk
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request message for Bigtable.SampleRowKeys.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table from which to sample row keys.
        #     Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        class SampleRowKeysRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for Bigtable.SampleRowKeys.
        # @!attribute [rw] row_key
        #   @return [::String]
        #     Sorted streamed sequence of sample row keys in the table. The table might
        #     have contents before the first row key in the list and after the last one,
        #     but a key containing the empty string indicates "end of table" and will be
        #     the last response given, if present.
        #     Note that row keys in this list may not have ever been written to or read
        #     from, and users should therefore not make any assumptions about the row key
        #     structure that are specific to their use case.
        # @!attribute [rw] offset_bytes
        #   @return [::Integer]
        #     Approximate total storage space used by all rows in the table which precede
        #     `row_key`. Buffering the contents of all rows between two subsequent
        #     samples would require space roughly equal to the difference in their
        #     `offset_bytes` fields.
        class SampleRowKeysResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for Bigtable.MutateRow.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table to which the mutation should be
        #     applied. Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        # @!attribute [rw] row_key
        #   @return [::String]
        #     Required. The key of the row to which the mutation should be applied.
        # @!attribute [rw] mutations
        #   @return [::Array<::Google::Cloud::Bigtable::V2::Mutation>]
        #     Required. Changes to be atomically applied to the specified row. Entries
        #     are applied in order, meaning that earlier mutations can be masked by later
        #     ones. Must contain at least one entry and at most 100000.
        class MutateRowRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for Bigtable.MutateRow.
        class MutateRowResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for BigtableService.MutateRows.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table to which the mutations should be
        #     applied.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        # @!attribute [rw] entries
        #   @return [::Array<::Google::Cloud::Bigtable::V2::MutateRowsRequest::Entry>]
        #     Required. The row keys and corresponding mutations to be applied in bulk.
        #     Each entry is applied as an atomic mutation, but the entries may be
        #     applied in arbitrary order (even between entries for the same row).
        #     At least one entry must be specified, and in total the entries can
        #     contain at most 100000 mutations.
        class MutateRowsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A mutation for a given row.
          # @!attribute [rw] row_key
          #   @return [::String]
          #     The key of the row to which the `mutations` should be applied.
          # @!attribute [rw] mutations
          #   @return [::Array<::Google::Cloud::Bigtable::V2::Mutation>]
          #     Required. Changes to be atomically applied to the specified row.
          #     Mutations are applied in order, meaning that earlier mutations can be
          #     masked by later ones. You must specify at least one mutation.
          class Entry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for BigtableService.MutateRows.
        # @!attribute [rw] entries
        #   @return [::Array<::Google::Cloud::Bigtable::V2::MutateRowsResponse::Entry>]
        #     One or more results for Entries from the batch request.
        class MutateRowsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The result of applying a passed mutation in the original request.
          # @!attribute [rw] index
          #   @return [::Integer]
          #     The index into the original request's `entries` list of the Entry
          #     for which a result is being reported.
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The result of the request Entry identified by `index`.
          #     Depending on how requests are batched during execution, it is possible
          #     for one Entry to fail due to an error with another Entry. In the event
          #     that this occurs, the same error will be reported for both entries.
          class Entry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request message for Bigtable.CheckAndMutateRow.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table to which the conditional mutation
        #     should be applied. Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        # @!attribute [rw] row_key
        #   @return [::String]
        #     Required. The key of the row to which the conditional mutation should be
        #     applied.
        # @!attribute [rw] predicate_filter
        #   @return [::Google::Cloud::Bigtable::V2::RowFilter]
        #     The filter to be applied to the contents of the specified row. Depending
        #     on whether or not any results are yielded, either `true_mutations` or
        #     `false_mutations` will be executed. If unset, checks that the row contains
        #     any values at all.
        # @!attribute [rw] true_mutations
        #   @return [::Array<::Google::Cloud::Bigtable::V2::Mutation>]
        #     Changes to be atomically applied to the specified row if `predicate_filter`
        #     yields at least one cell when applied to `row_key`. Entries are applied in
        #     order, meaning that earlier mutations can be masked by later ones.
        #     Must contain at least one entry if `false_mutations` is empty, and at most
        #     100000.
        # @!attribute [rw] false_mutations
        #   @return [::Array<::Google::Cloud::Bigtable::V2::Mutation>]
        #     Changes to be atomically applied to the specified row if `predicate_filter`
        #     does not yield any cells when applied to `row_key`. Entries are applied in
        #     order, meaning that earlier mutations can be masked by later ones.
        #     Must contain at least one entry if `true_mutations` is empty, and at most
        #     100000.
        class CheckAndMutateRowRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for Bigtable.CheckAndMutateRow.
        # @!attribute [rw] predicate_matched
        #   @return [::Boolean]
        #     Whether or not the request's `predicate_filter` yielded any results for
        #     the specified row.
        class CheckAndMutateRowResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for client connection keep-alive and warming.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The unique name of the instance to check permissions for as well
        #     as respond. Values are of the form
        #     `projects/<project>/instances/<instance>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        class PingAndWarmRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for Bigtable.PingAndWarm connection keepalive and warming.
        class PingAndWarmResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for Bigtable.ReadModifyWriteRow.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table to which the read/modify/write rules
        #     should be applied. Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        # @!attribute [rw] row_key
        #   @return [::String]
        #     Required. The key of the row to which the read/modify/write rules should be
        #     applied.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::Bigtable::V2::ReadModifyWriteRule>]
        #     Required. Rules specifying how the specified row's contents are to be
        #     transformed into writes. Entries are applied in order, meaning that earlier
        #     rules will affect the results of later ones.
        class ReadModifyWriteRowRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for Bigtable.ReadModifyWriteRow.
        # @!attribute [rw] row
        #   @return [::Google::Cloud::Bigtable::V2::Row]
        #     A Row containing the new contents of all cells modified by the request.
        class ReadModifyWriteRowResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # NOTE: This API is intended to be used by Apache Beam BigtableIO.
        # Request message for Bigtable.GenerateInitialChangeStreamPartitions.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table from which to get change stream
        #     partitions. Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        #     Change streaming must be enabled on the table.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        #     Single cluster routing must be configured on the profile.
        class GenerateInitialChangeStreamPartitionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # NOTE: This API is intended to be used by Apache Beam BigtableIO.
        # Response message for Bigtable.GenerateInitialChangeStreamPartitions.
        # @!attribute [rw] partition
        #   @return [::Google::Cloud::Bigtable::V2::StreamPartition]
        #     A partition of the change stream.
        class GenerateInitialChangeStreamPartitionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # NOTE: This API is intended to be used by Apache Beam BigtableIO.
        # Request message for Bigtable.ReadChangeStream.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Required. The unique name of the table from which to read a change stream.
        #     Values are of the form
        #     `projects/<project>/instances/<instance>/tables/<table>`.
        #     Change streaming must be enabled on the table.
        # @!attribute [rw] app_profile_id
        #   @return [::String]
        #     This value specifies routing for replication. If not specified, the
        #     "default" application profile will be used.
        #     Single cluster routing must be configured on the profile.
        # @!attribute [rw] partition
        #   @return [::Google::Cloud::Bigtable::V2::StreamPartition]
        #     The partition to read changes from.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Start reading the stream at the specified timestamp. This timestamp must
        #     be within the change stream retention period, less than or equal to the
        #     current time, and after change stream creation, whichever is greater.
        #     This value is inclusive and will be truncated to microsecond granularity.
        # @!attribute [rw] continuation_tokens
        #   @return [::Google::Cloud::Bigtable::V2::StreamContinuationTokens]
        #     Tokens that describe how to resume reading a stream where reading
        #     previously left off. If specified, changes will be read starting at the
        #     the position. Tokens are delivered on the stream as part of `Heartbeat`
        #     and `CloseStream` messages.
        #
        #     If a single token is provided, the token’s partition must exactly match
        #     the request’s partition. If multiple tokens are provided, as in the case
        #     of a partition merge, the union of the token partitions must exactly
        #     cover the request’s partition. Otherwise, INVALID_ARGUMENT will be
        #     returned.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     If specified, OK will be returned when the stream advances beyond
        #     this time. Otherwise, changes will be continuously delivered on the stream.
        #     This value is inclusive and will be truncated to microsecond granularity.
        # @!attribute [rw] heartbeat_duration
        #   @return [::Google::Protobuf::Duration]
        #     If specified, the duration between `Heartbeat` messages on the stream.
        #     Otherwise, defaults to 5 seconds.
        class ReadChangeStreamRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # NOTE: This API is intended to be used by Apache Beam BigtableIO.
        # Response message for Bigtable.ReadChangeStream.
        # @!attribute [rw] data_change
        #   @return [::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::DataChange]
        #     A mutation to the partition.
        # @!attribute [rw] heartbeat
        #   @return [::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::Heartbeat]
        #     A periodic heartbeat message.
        # @!attribute [rw] close_stream
        #   @return [::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::CloseStream]
        #     An indication that the stream should be closed.
        class ReadChangeStreamResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A partial or complete mutation.
          # @!attribute [rw] chunk_info
          #   @return [::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::MutationChunk::ChunkInfo]
          #     If set, then the mutation is a `SetCell` with a chunked value across
          #     multiple messages.
          # @!attribute [rw] mutation
          #   @return [::Google::Cloud::Bigtable::V2::Mutation]
          #     If this is a continuation of a chunked message (`chunked_value_offset` >
          #     0), ignore all fields except the `SetCell`'s value and merge it with
          #     the previous message by concatenating the value fields.
          class MutationChunk
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Information about the chunking of this mutation.
            # Only `SetCell` mutations can be chunked, and all chunks for a `SetCell`
            # will be delivered contiguously with no other mutation types interleaved.
            # @!attribute [rw] chunked_value_size
            #   @return [::Integer]
            #     The total value size of all the chunks that make up the `SetCell`.
            # @!attribute [rw] chunked_value_offset
            #   @return [::Integer]
            #     The byte offset of this chunk into the total value size of the
            #     mutation.
            # @!attribute [rw] last_chunk
            #   @return [::Boolean]
            #     When true, this is the last chunk of a chunked `SetCell`.
            class ChunkInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # A message corresponding to one or more mutations to the partition
          # being streamed. A single logical `DataChange` message may also be split
          # across a sequence of multiple individual messages. Messages other than
          # the first in a sequence will only have the `type` and `chunks` fields
          # populated, with the final message in the sequence also containing `done`
          # set to true.
          # @!attribute [rw] type
          #   @return [::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::DataChange::Type]
          #     The type of the mutation.
          # @!attribute [rw] source_cluster_id
          #   @return [::String]
          #     The cluster where the mutation was applied.
          #     Not set when `type` is `GARBAGE_COLLECTION`.
          # @!attribute [rw] row_key
          #   @return [::String]
          #     The row key for all mutations that are part of this `DataChange`.
          #     If the `DataChange` is chunked across multiple messages, then this field
          #     will only be set for the first message.
          # @!attribute [rw] commit_timestamp
          #   @return [::Google::Protobuf::Timestamp]
          #     The timestamp at which the mutation was applied on the Bigtable server.
          # @!attribute [rw] tiebreaker
          #   @return [::Integer]
          #     A value that lets stream consumers reconstruct Bigtable's
          #     conflict resolution semantics.
          #     https://cloud.google.com/bigtable/docs/writes#conflict-resolution
          #     In the event that the same row key, column family, column qualifier,
          #     timestamp are modified on different clusters at the same
          #     `commit_timestamp`, the mutation with the larger `tiebreaker` will be the
          #     one chosen for the eventually consistent state of the system.
          # @!attribute [rw] chunks
          #   @return [::Array<::Google::Cloud::Bigtable::V2::ReadChangeStreamResponse::MutationChunk>]
          #     The mutations associated with this change to the partition.
          #     May contain complete mutations or chunks of a multi-message chunked
          #     `DataChange` record.
          # @!attribute [rw] done
          #   @return [::Boolean]
          #     When true, indicates that the entire `DataChange` has been read
          #     and the client can safely process the message.
          # @!attribute [rw] token
          #   @return [::String]
          #     An encoded position for this stream's partition to restart reading from.
          #     This token is for the StreamPartition from the request.
          # @!attribute [rw] estimated_low_watermark
          #   @return [::Google::Protobuf::Timestamp]
          #     An estimate of the commit timestamp that is usually lower than or equal
          #     to any timestamp for a record that will be delivered in the future on the
          #     stream. It is possible that, under particular circumstances that a future
          #     record has a timestamp is is lower than a previously seen timestamp. For
          #     an example usage see
          #     https://beam.apache.org/documentation/basics/#watermarks
          class DataChange
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The type of mutation.
            module Type
              # The type is unspecified.
              TYPE_UNSPECIFIED = 0

              # A user-initiated mutation.
              USER = 1

              # A system-initiated mutation as part of garbage collection.
              # https://cloud.google.com/bigtable/docs/garbage-collection
              GARBAGE_COLLECTION = 2

              # This is a continuation of a multi-message change.
              CONTINUATION = 3
            end
          end

          # A periodic message with information that can be used to checkpoint
          # the state of a stream.
          # @!attribute [rw] continuation_token
          #   @return [::Google::Cloud::Bigtable::V2::StreamContinuationToken]
          #     A token that can be provided to a subsequent `ReadChangeStream` call
          #     to pick up reading at the current stream position.
          # @!attribute [rw] estimated_low_watermark
          #   @return [::Google::Protobuf::Timestamp]
          #     An estimate of the commit timestamp that is usually lower than or equal
          #     to any timestamp for a record that will be delivered in the future on the
          #     stream. It is possible that, under particular circumstances that a future
          #     record has a timestamp is is lower than a previously seen timestamp. For
          #     an example usage see
          #     https://beam.apache.org/documentation/basics/#watermarks
          class Heartbeat
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A message indicating that the client should stop reading from the stream.
          # If status is OK and `continuation_tokens` & `new_partitions` are empty, the
          # stream has finished (for example if there was an `end_time` specified).
          # If `continuation_tokens` & `new_partitions` are present, then a change in
          # partitioning requires the client to open a new stream for each token to
          # resume reading. Example:
          #                                  [B,      D) ends
          #                                       |
          #                                       v
          #               new_partitions:  [A,  C) [C,  E)
          # continuation_tokens.partitions:  [B,C) [C,D)
          #                                  ^---^ ^---^
          #                                  ^     ^
          #                                  |     |
          #                                  |     StreamContinuationToken 2
          #                                  |
          #                                  StreamContinuationToken 1
          # To read the new partition [A,C), supply the continuation tokens whose
          # ranges cover the new partition, for example ContinuationToken[A,B) &
          # ContinuationToken[B,C).
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The status of the stream.
          # @!attribute [rw] continuation_tokens
          #   @return [::Array<::Google::Cloud::Bigtable::V2::StreamContinuationToken>]
          #     If non-empty, contains the information needed to resume reading their
          #     associated partitions.
          # @!attribute [rw] new_partitions
          #   @return [::Array<::Google::Cloud::Bigtable::V2::StreamPartition>]
          #     If non-empty, contains the new partitions to start reading from, which
          #     are related to but not necessarily identical to the partitions for the
          #     above `continuation_tokens`.
          class CloseStream
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
