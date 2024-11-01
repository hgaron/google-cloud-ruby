# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/channel.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/cloud/eventarc/v1/channel.proto\x12\x18google.cloud.eventarc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xcb\x04\n\x07\x43hannel\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x10\n\x08provider\x18\x07 \x01(\t\x12\x1b\n\x0cpubsub_topic\x18\x08 \x01(\tB\x03\xe0\x41\x03H\x00\x12;\n\x05state\x18\t \x01(\x0e\x32\'.google.cloud.eventarc.v1.Channel.StateB\x03\xe0\x41\x03\x12\x1d\n\x10\x61\x63tivation_token\x18\n \x01(\tB\x03\xe0\x41\x03\x12?\n\x0f\x63rypto_key_name\x18\x0b \x01(\tB&\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x1a\n\rsatisfies_pzs\x18\x0c \x01(\x08\x42\x03\xe0\x41\x03\"E\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08INACTIVE\x10\x03:s\xea\x41p\n\x1f\x65ventarc.googleapis.com/Channel\x12:projects/{project}/locations/{location}/channels/{channel}*\x08\x63hannels2\x07\x63hannelB\x0b\n\ttransportB\xbc\x01\n\x1c\x63om.google.cloud.eventarc.v1B\x0c\x43hannelProtoP\x01Z8cloud.google.com/go/eventarc/apiv1/eventarcpb;eventarcpb\xaa\x02\x18Google.Cloud.Eventarc.V1\xca\x02\x18Google\\Cloud\\Eventarc\\V1\xea\x02\x1bGoogle::Cloud::Eventarc::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Eventarc
      module V1
        Channel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Channel").msgclass
        Channel::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Channel.State").enummodule
      end
    end
  end
end
