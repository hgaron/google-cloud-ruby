# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkemulticloud/v1/common_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/gkemulticloud/v1/common_resources.proto\x12\x1dgoogle.cloud.gkemulticloud.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"r\n\x03Jwk\x12\x0b\n\x03kty\x18\x01 \x01(\t\x12\x0b\n\x03\x61lg\x18\x02 \x01(\t\x12\x0b\n\x03use\x18\x03 \x01(\t\x12\x0b\n\x03kid\x18\x04 \x01(\t\x12\t\n\x01n\x18\x05 \x01(\t\x12\t\n\x01\x65\x18\x06 \x01(\t\x12\t\n\x01x\x18\x07 \x01(\t\x12\t\n\x01y\x18\x08 \x01(\t\x12\x0b\n\x03\x63rv\x18\t \x01(\t\"^\n\x16WorkloadIdentityConfig\x12\x12\n\nissuer_uri\x18\x01 \x01(\t\x12\x15\n\rworkload_pool\x18\x02 \x01(\t\x12\x19\n\x11identity_provider\x18\x03 \x01(\t\"4\n\x11MaxPodsConstraint\x12\x1f\n\x11max_pods_per_node\x18\x01 \x01(\x03\x42\x04\xe2\x41\x01\x02\"\x87\x02\n\x11OperationMetadata\x12\x35\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x32\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x14\n\x06target\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1b\n\rstatus_detail\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1a\n\x0c\x65rror_detail\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04verb\x18\x07 \x01(\tB\x04\xe2\x41\x01\x03\x12$\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x03\"\xd5\x01\n\tNodeTaint\x12\x11\n\x03key\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x13\n\x05value\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x45\n\x06\x65\x66\x66\x65\x63t\x18\x03 \x01(\x0e\x32/.google.cloud.gkemulticloud.v1.NodeTaint.EffectB\x04\xe2\x41\x01\x02\"Y\n\x06\x45\x66\x66\x65\x63t\x12\x16\n\x12\x45\x46\x46\x45\x43T_UNSPECIFIED\x10\x00\x12\x0f\n\x0bNO_SCHEDULE\x10\x01\x12\x16\n\x12PREFER_NO_SCHEDULE\x10\x02\x12\x0e\n\nNO_EXECUTE\x10\x03\"8\n\x05\x46leet\x12\x15\n\x07project\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x18\n\nmembership\x18\x02 \x01(\tB\x04\xe2\x41\x01\x03\"`\n\rLoggingConfig\x12O\n\x10\x63omponent_config\x18\x01 \x01(\x0b\x32\x35.google.cloud.gkemulticloud.v1.LoggingComponentConfig\"\xc2\x01\n\x16LoggingComponentConfig\x12Z\n\x11\x65nable_components\x18\x01 \x03(\x0e\x32?.google.cloud.gkemulticloud.v1.LoggingComponentConfig.Component\"L\n\tComponent\x12\x19\n\x15\x43OMPONENT_UNSPECIFIED\x10\x00\x12\x15\n\x11SYSTEM_COMPONENTS\x10\x01\x12\r\n\tWORKLOADS\x10\x02\"m\n\x10MonitoringConfig\x12Y\n\x19managed_prometheus_config\x18\x02 \x01(\x0b\x32\x36.google.cloud.gkemulticloud.v1.ManagedPrometheusConfig\"*\n\x17ManagedPrometheusConfig\x12\x0f\n\x07\x65nabled\x18\x01 \x01(\x08\"\xd8\x01\n\x13\x42inaryAuthorization\x12Z\n\x0f\x65valuation_mode\x18\x01 \x01(\x0e\x32\x41.google.cloud.gkemulticloud.v1.BinaryAuthorization.EvaluationMode\"e\n\x0e\x45valuationMode\x12\x1f\n\x1b\x45VALUATION_MODE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12$\n PROJECT_SINGLETON_POLICY_ENFORCE\x10\x02\x42\xe7\x01\n!com.google.cloud.gkemulticloud.v1B\x14\x43ommonResourcesProtoP\x01ZGcloud.google.com/go/gkemulticloud/apiv1/gkemulticloudpb;gkemulticloudpb\xaa\x02\x1dGoogle.Cloud.GkeMultiCloud.V1\xca\x02\x1dGoogle\\Cloud\\GkeMultiCloud\\V1\xea\x02 Google::Cloud::GkeMultiCloud::V1b\x06proto3"

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
    module GkeMultiCloud
      module V1
        Jwk = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.Jwk").msgclass
        WorkloadIdentityConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.WorkloadIdentityConfig").msgclass
        MaxPodsConstraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.MaxPodsConstraint").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.OperationMetadata").msgclass
        NodeTaint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.NodeTaint").msgclass
        NodeTaint::Effect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.NodeTaint.Effect").enummodule
        Fleet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.Fleet").msgclass
        LoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingConfig").msgclass
        LoggingComponentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingComponentConfig").msgclass
        LoggingComponentConfig::Component = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.LoggingComponentConfig.Component").enummodule
        MonitoringConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.MonitoringConfig").msgclass
        ManagedPrometheusConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ManagedPrometheusConfig").msgclass
        BinaryAuthorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.BinaryAuthorization").msgclass
        BinaryAuthorization::EvaluationMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.BinaryAuthorization.EvaluationMode").enummodule
      end
    end
  end
end
