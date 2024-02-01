# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/essentialcontacts/v1/enums.proto

require 'google/protobuf'


descriptor_data = "\n-google/cloud/essentialcontacts/v1/enums.proto\x12!google.cloud.essentialcontacts.v1*\xb9\x01\n\x14NotificationCategory\x12%\n!NOTIFICATION_CATEGORY_UNSPECIFIED\x10\x00\x12\x07\n\x03\x41LL\x10\x02\x12\x0e\n\nSUSPENSION\x10\x03\x12\x0c\n\x08SECURITY\x10\x05\x12\r\n\tTECHNICAL\x10\x06\x12\x0b\n\x07\x42ILLING\x10\x07\x12\t\n\x05LEGAL\x10\x08\x12\x13\n\x0fPRODUCT_UPDATES\x10\t\x12\x17\n\x13TECHNICAL_INCIDENTS\x10\n*K\n\x0fValidationState\x12 \n\x1cVALIDATION_STATE_UNSPECIFIED\x10\x00\x12\t\n\x05VALID\x10\x01\x12\x0b\n\x07INVALID\x10\x02\x42\xf9\x01\n%com.google.cloud.essentialcontacts.v1B\nEnumsProtoP\x01ZScloud.google.com/go/essentialcontacts/apiv1/essentialcontactspb;essentialcontactspb\xaa\x02!Google.Cloud.EssentialContacts.V1\xca\x02!Google\\Cloud\\EssentialContacts\\V1\xea\x02$Google::Cloud::EssentialContacts::V1b\x06proto3"

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
    module EssentialContacts
      module V1
        NotificationCategory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.essentialcontacts.v1.NotificationCategory").enummodule
        ValidationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.essentialcontacts.v1.ValidationState").enummodule
      end
    end
  end
end
