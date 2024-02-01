# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/eventarc.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/eventarc/v1/channel_pb'
require 'google/cloud/eventarc/v1/channel_connection_pb'
require 'google/cloud/eventarc/v1/discovery_pb'
require 'google/cloud/eventarc/v1/google_channel_config_pb'
require 'google/cloud/eventarc/v1/trigger_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\'google/cloud/eventarc/v1/eventarc.proto\x12\x18google.cloud.eventarc.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/eventarc/v1/channel.proto\x1a\x31google/cloud/eventarc/v1/channel_connection.proto\x1a(google/cloud/eventarc/v1/discovery.proto\x1a\x34google/cloud/eventarc/v1/google_channel_config.proto\x1a&google/cloud/eventarc/v1/trigger.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"K\n\x11GetTriggerRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Trigger\"\x98\x01\n\x13ListTriggersRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x65ventarc.googleapis.com/Trigger\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"y\n\x14ListTriggersResponse\x12\x33\n\x08triggers\x18\x01 \x03(\x0b\x32!.google.cloud.eventarc.v1.Trigger\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xc1\x01\n\x14\x43reateTriggerRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x65ventarc.googleapis.com/Trigger\x12\x38\n\x07trigger\x18\x02 \x01(\x0b\x32!.google.cloud.eventarc.v1.TriggerB\x04\xe2\x41\x01\x02\x12\x18\n\ntrigger_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x02\"\xaf\x01\n\x14UpdateTriggerRequest\x12\x32\n\x07trigger\x18\x01 \x01(\x0b\x32!.google.cloud.eventarc.v1.Trigger\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x02\"\x90\x01\n\x14\x44\x65leteTriggerRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Trigger\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\x12\x15\n\rallow_missing\x18\x03 \x01(\x08\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x02\"K\n\x11GetChannelRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Channel\"\x88\x01\n\x13ListChannelsRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x65ventarc.googleapis.com/Channel\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\"y\n\x14ListChannelsResponse\x12\x33\n\x08\x63hannels\x18\x01 \x03(\x0b\x32!.google.cloud.eventarc.v1.Channel\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xc1\x01\n\x14\x43reateChannelRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x65ventarc.googleapis.com/Channel\x12\x38\n\x07\x63hannel\x18\x02 \x01(\x0b\x32!.google.cloud.eventarc.v1.ChannelB\x04\xe2\x41\x01\x02\x12\x18\n\nchannel_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x02\"\x98\x01\n\x14UpdateChannelRequest\x12\x32\n\x07\x63hannel\x18\x01 \x01(\x0b\x32!.google.cloud.eventarc.v1.Channel\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x02\"k\n\x14\x44\x65leteChannelRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Channel\x12\x1b\n\rvalidate_only\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x02\"M\n\x12GetProviderRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe2\x41\x01\x02\xfa\x41\"\n eventarc.googleapis.com/Provider\"\x9a\x01\n\x14ListProvidersRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe2\x41\x01\x02\xfa\x41\"\x12 eventarc.googleapis.com/Provider\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"|\n\x15ListProvidersResponse\x12\x35\n\tproviders\x18\x01 \x03(\x0b\x32\".google.cloud.eventarc.v1.Provider\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"_\n\x1bGetChannelConnectionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe2\x41\x01\x02\xfa\x41+\n)eventarc.googleapis.com/ChannelConnection\"\x8a\x01\n\x1dListChannelConnectionsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe2\x41\x01\x02\xfa\x41+\x12)eventarc.googleapis.com/ChannelConnection\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x98\x01\n\x1eListChannelConnectionsResponse\x12H\n\x13\x63hannel_connections\x18\x01 \x03(\x0b\x32+.google.cloud.eventarc.v1.ChannelConnection\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xd8\x01\n\x1e\x43reateChannelConnectionRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe2\x41\x01\x02\xfa\x41+\x12)eventarc.googleapis.com/ChannelConnection\x12M\n\x12\x63hannel_connection\x18\x02 \x01(\x0b\x32+.google.cloud.eventarc.v1.ChannelConnectionB\x04\xe2\x41\x01\x02\x12#\n\x15\x63hannel_connection_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\"b\n\x1e\x44\x65leteChannelConnectionRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe2\x41\x01\x02\xfa\x41+\n)eventarc.googleapis.com/ChannelConnection\"\xa7\x01\n UpdateGoogleChannelConfigRequest\x12R\n\x15google_channel_config\x18\x01 \x01(\x0b\x32-.google.cloud.eventarc.v1.GoogleChannelConfigB\x04\xe2\x41\x01\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"c\n\x1dGetGoogleChannelConfigRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+eventarc.googleapis.com/GoogleChannelConfig\"\x87\x02\n\x11OperationMetadata\x12\x35\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x32\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x14\n\x06target\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04verb\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1c\n\x0estatus_message\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03\x12$\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x61pi_version\x18\x07 \x01(\tB\x04\xe2\x41\x01\x03\x32\xcf\x1d\n\x08\x45ventarc\x12\x99\x01\n\nGetTrigger\x12+.google.cloud.eventarc.v1.GetTriggerRequest\x1a!.google.cloud.eventarc.v1.Trigger\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/triggers/*}\x12\xac\x01\n\x0cListTriggers\x12-.google.cloud.eventarc.v1.ListTriggersRequest\x1a..google.cloud.eventarc.v1.ListTriggersResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/triggers\x12\xd8\x01\n\rCreateTrigger\x12..google.cloud.eventarc.v1.CreateTriggerRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07Trigger\x12\x11OperationMetadata\xda\x41\x19parent,trigger,trigger_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/triggers:\x07trigger\x12\xe9\x01\n\rUpdateTrigger\x12..google.cloud.eventarc.v1.UpdateTriggerRequest\x1a\x1d.google.longrunning.Operation\"\x88\x01\xca\x41\x1c\n\x07Trigger\x12\x11OperationMetadata\xda\x41!trigger,update_mask,allow_missing\x82\xd3\xe4\x93\x02?24/v1/{trigger.name=projects/*/locations/*/triggers/*}:\x07trigger\x12\xc8\x01\n\rDeleteTrigger\x12..google.cloud.eventarc.v1.DeleteTriggerRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41\x1c\n\x07Trigger\x12\x11OperationMetadata\xda\x41\x12name,allow_missing\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/triggers/*}\x12\x99\x01\n\nGetChannel\x12+.google.cloud.eventarc.v1.GetChannelRequest\x1a!.google.cloud.eventarc.v1.Channel\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/channels/*}\x12\xac\x01\n\x0cListChannels\x12-.google.cloud.eventarc.v1.ListChannelsRequest\x1a..google.cloud.eventarc.v1.ListChannelsResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/channels\x12\xd8\x01\n\rCreateChannel\x12..google.cloud.eventarc.v1.CreateChannelRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07\x43hannel\x12\x11OperationMetadata\xda\x41\x19parent,channel,channel_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/channels:\x07\x63hannel\x12\xda\x01\n\rUpdateChannel\x12..google.cloud.eventarc.v1.UpdateChannelRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1c\n\x07\x43hannel\x12\x11OperationMetadata\xda\x41\x13\x63hannel,update_mask\x82\xd3\xe4\x93\x02?24/v1/{channel.name=projects/*/locations/*/channels/*}:\x07\x63hannel\x12\xba\x01\n\rDeleteChannel\x12..google.cloud.eventarc.v1.DeleteChannelRequest\x1a\x1d.google.longrunning.Operation\"Z\xca\x41\x1c\n\x07\x43hannel\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/channels/*}\x12\x9d\x01\n\x0bGetProvider\x12,.google.cloud.eventarc.v1.GetProviderRequest\x1a\".google.cloud.eventarc.v1.Provider\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/providers/*}\x12\xb0\x01\n\rListProviders\x12..google.cloud.eventarc.v1.ListProvidersRequest\x1a/.google.cloud.eventarc.v1.ListProvidersResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/providers\x12\xc1\x01\n\x14GetChannelConnection\x12\x35.google.cloud.eventarc.v1.GetChannelConnectionRequest\x1a+.google.cloud.eventarc.v1.ChannelConnection\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{name=projects/*/locations/*/channelConnections/*}\x12\xd4\x01\n\x16ListChannelConnections\x12\x37.google.cloud.eventarc.v1.ListChannelConnectionsRequest\x1a\x38.google.cloud.eventarc.v1.ListChannelConnectionsResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{parent=projects/*/locations/*}/channelConnections\x12\xa2\x02\n\x17\x43reateChannelConnection\x12\x38.google.cloud.eventarc.v1.CreateChannelConnectionRequest\x1a\x1d.google.longrunning.Operation\"\xad\x01\xca\x41&\n\x11\x43hannelConnection\x12\x11OperationMetadata\xda\x41/parent,channel_connection,channel_connection_id\x82\xd3\xe4\x93\x02L\"6/v1/{parent=projects/*/locations/*}/channelConnections:\x12\x63hannel_connection\x12\xe2\x01\n\x17\x44\x65leteChannelConnection\x12\x38.google.cloud.eventarc.v1.DeleteChannelConnectionRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41&\n\x11\x43hannelConnection\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38*6/v1/{name=projects/*/locations/*/channelConnections/*}\x12\xc6\x01\n\x16GetGoogleChannelConfig\x12\x37.google.cloud.eventarc.v1.GetGoogleChannelConfigRequest\x1a-.google.cloud.eventarc.v1.GoogleChannelConfig\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{name=projects/*/locations/*/googleChannelConfig}\x12\x97\x02\n\x19UpdateGoogleChannelConfig\x12:.google.cloud.eventarc.v1.UpdateGoogleChannelConfigRequest\x1a-.google.cloud.eventarc.v1.GoogleChannelConfig\"\x8e\x01\xda\x41!google_channel_config,update_mask\x82\xd3\xe4\x93\x02\x64\x32K/v1/{google_channel_config.name=projects/*/locations/*/googleChannelConfig}:\x15google_channel_config\x1aK\xca\x41\x17\x65ventarc.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xbd\x01\n\x1c\x63om.google.cloud.eventarc.v1B\rEventarcProtoP\x01Z8cloud.google.com/go/eventarc/apiv1/eventarcpb;eventarcpb\xaa\x02\x18Google.Cloud.Eventarc.V1\xca\x02\x18Google\\Cloud\\Eventarc\\V1\xea\x02\x1bGoogle::Cloud::Eventarc::V1b\x06proto3"

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
    ["google.cloud.eventarc.v1.Trigger", "google/cloud/eventarc/v1/trigger.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.eventarc.v1.Channel", "google/cloud/eventarc/v1/channel.proto"],
    ["google.cloud.eventarc.v1.Provider", "google/cloud/eventarc/v1/discovery.proto"],
    ["google.cloud.eventarc.v1.ChannelConnection", "google/cloud/eventarc/v1/channel_connection.proto"],
    ["google.cloud.eventarc.v1.GoogleChannelConfig", "google/cloud/eventarc/v1/google_channel_config.proto"],
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
        GetTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetTriggerRequest").msgclass
        ListTriggersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersRequest").msgclass
        ListTriggersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersResponse").msgclass
        CreateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateTriggerRequest").msgclass
        UpdateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateTriggerRequest").msgclass
        DeleteTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteTriggerRequest").msgclass
        GetChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetChannelRequest").msgclass
        ListChannelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelsRequest").msgclass
        ListChannelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelsResponse").msgclass
        CreateChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateChannelRequest").msgclass
        UpdateChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateChannelRequest").msgclass
        DeleteChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteChannelRequest").msgclass
        GetProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetProviderRequest").msgclass
        ListProvidersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListProvidersRequest").msgclass
        ListProvidersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListProvidersResponse").msgclass
        GetChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetChannelConnectionRequest").msgclass
        ListChannelConnectionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelConnectionsRequest").msgclass
        ListChannelConnectionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListChannelConnectionsResponse").msgclass
        CreateChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateChannelConnectionRequest").msgclass
        DeleteChannelConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteChannelConnectionRequest").msgclass
        UpdateGoogleChannelConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateGoogleChannelConfigRequest").msgclass
        GetGoogleChannelConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetGoogleChannelConfigRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.OperationMetadata").msgclass
      end
    end
  end
end
