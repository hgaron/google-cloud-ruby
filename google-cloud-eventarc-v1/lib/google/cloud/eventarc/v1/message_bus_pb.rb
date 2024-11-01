# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/message_bus.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/eventarc/v1/logging_config_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n*google/cloud/eventarc/v1/message_bus.proto\x12\x18google.cloud.eventarc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a-google/cloud/eventarc/v1/logging_config.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd9\x05\n\nMessageBus\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04\x65tag\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x45\n\x06labels\x18\x06 \x03(\x0b\x32\x30.google.cloud.eventarc.v1.MessageBus.LabelsEntryB\x03\xe0\x41\x01\x12O\n\x0b\x61nnotations\x18\x07 \x03(\x0b\x32\x35.google.cloud.eventarc.v1.MessageBus.AnnotationsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12\x42\n\x0f\x63rypto_key_name\x18\n \x01(\tB)\xe0\x41\x01\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x44\n\x0elogging_config\x18\x0b \x01(\x0b\x32\'.google.cloud.eventarc.v1.LoggingConfigB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x86\x01\xea\x41\x82\x01\n\"eventarc.googleapis.com/MessageBus\x12\x42projects/{project}/locations/{location}/messageBuses/{message_bus}*\x0cmessageBuses2\nmessageBusB\xbf\x01\n\x1c\x63om.google.cloud.eventarc.v1B\x0fMessageBusProtoP\x01Z8cloud.google.com/go/eventarc/apiv1/eventarcpb;eventarcpb\xaa\x02\x18Google.Cloud.Eventarc.V1\xca\x02\x18Google\\Cloud\\Eventarc\\V1\xea\x02\x1bGoogle::Cloud::Eventarc::V1b\x06proto3"

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
    ["google.cloud.eventarc.v1.LoggingConfig", "google/cloud/eventarc/v1/logging_config.proto"],
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
        MessageBus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.MessageBus").msgclass
      end
    end
  end
end
