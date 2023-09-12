# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/ssh_key.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n/google/cloud/baremetalsolution/v2/ssh_key.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x98\x01\n\x06SSHKey\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x12\n\npublic_key\x18\x02 \x01(\t:g\xea\x41\x64\n\'baremetalsolution.googleapis.com/SshKey\x12\x39projects/{project}/locations/{location}/sshKeys/{ssh_key}\"v\n\x12ListSSHKeysRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"k\n\x13ListSSHKeysResponse\x12;\n\x08ssh_keys\x18\x01 \x03(\x0b\x32).google.cloud.baremetalsolution.v2.SSHKey\x12\x17\n\x0fnext_page_token\x18Z \x01(\t\"\xaa\x01\n\x13\x43reateSSHKeyRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12?\n\x07ssh_key\x18\x02 \x01(\x0b\x32).google.cloud.baremetalsolution.v2.SSHKeyB\x03\xe0\x41\x02\x12\x17\n\nssh_key_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"T\n\x13\x44\x65leteSSHKeyRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'baremetalsolution.googleapis.com/SshKeyB\xfa\x01\n%com.google.cloud.baremetalsolution.v2B\x0bSshKeyProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
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
    module BareMetalSolution
      module V2
        SSHKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.SSHKey").msgclass
        ListSSHKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListSSHKeysRequest").msgclass
        ListSSHKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListSSHKeysResponse").msgclass
        CreateSSHKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.CreateSSHKeyRequest").msgclass
        DeleteSSHKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.DeleteSSHKeyRequest").msgclass
      end
    end
  end
end