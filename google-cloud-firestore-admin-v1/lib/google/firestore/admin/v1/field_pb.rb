# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/field.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/firestore/admin/v1/index_pb'


descriptor_data = "\n%google/firestore/admin/v1/field.proto\x12\x19google.firestore.admin.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a%google/firestore/admin/v1/index.proto\"\xc7\x04\n\x05\x46ield\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x42\n\x0cindex_config\x18\x02 \x01(\x0b\x32,.google.firestore.admin.v1.Field.IndexConfig\x12>\n\nttl_config\x18\x03 \x01(\x0b\x32*.google.firestore.admin.v1.Field.TtlConfig\x1a\x89\x01\n\x0bIndexConfig\x12\x31\n\x07indexes\x18\x01 \x03(\x0b\x32 .google.firestore.admin.v1.Index\x12\x1c\n\x14uses_ancestor_config\x18\x02 \x01(\x08\x12\x16\n\x0e\x61ncestor_field\x18\x03 \x01(\t\x12\x11\n\treverting\x18\x04 \x01(\x08\x1a\x9e\x01\n\tTtlConfig\x12\x45\n\x05state\x18\x01 \x01(\x0e\x32\x30.google.firestore.admin.v1.Field.TtlConfig.StateB\x04\xe2\x41\x01\x03\"J\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x10\n\x0cNEEDS_REPAIR\x10\x03:y\xea\x41v\n\x1e\x66irestore.googleapis.com/Field\x12Tprojects/{project}/databases/{database}/collectionGroups/{collection}/fields/{field}B\xd9\x01\n\x1d\x63om.google.firestore.admin.v1B\nFieldProtoP\x01Z9cloud.google.com/go/firestore/apiv1/admin/adminpb;adminpb\xa2\x02\x04GCFS\xaa\x02\x1fGoogle.Cloud.Firestore.Admin.V1\xca\x02\x1fGoogle\\Cloud\\Firestore\\Admin\\V1\xea\x02#Google::Cloud::Firestore::Admin::V1b\x06proto3"

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
    ["google.firestore.admin.v1.Index", "google/firestore/admin/v1/index.proto"],
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
    module Firestore
      module Admin
        module V1
          Field = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field").msgclass
          Field::IndexConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.IndexConfig").msgclass
          Field::TtlConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.TtlConfig").msgclass
          Field::TtlConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Field.TtlConfig.State").enummodule
        end
      end
    end
  end
end
