# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/secretmanager/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/secretmanager/v1/resources_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/secretmanager/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.secretmanager.v1.ListSecretsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.secretmanager.v1.ListSecretsResponse" do
      repeated :secrets, :message, 1, "google.cloud.secretmanager.v1.Secret"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.secretmanager.v1.CreateSecretRequest" do
      optional :parent, :string, 1
      optional :secret_id, :string, 2
      optional :secret, :message, 3, "google.cloud.secretmanager.v1.Secret"
    end
    add_message "google.cloud.secretmanager.v1.AddSecretVersionRequest" do
      optional :parent, :string, 1
      optional :payload, :message, 2, "google.cloud.secretmanager.v1.SecretPayload"
    end
    add_message "google.cloud.secretmanager.v1.GetSecretRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.secretmanager.v1.ListSecretVersionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.secretmanager.v1.ListSecretVersionsResponse" do
      repeated :versions, :message, 1, "google.cloud.secretmanager.v1.SecretVersion"
      optional :next_page_token, :string, 2
      optional :total_size, :int32, 3
    end
    add_message "google.cloud.secretmanager.v1.GetSecretVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.secretmanager.v1.UpdateSecretRequest" do
      optional :secret, :message, 1, "google.cloud.secretmanager.v1.Secret"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.secretmanager.v1.AccessSecretVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.secretmanager.v1.AccessSecretVersionResponse" do
      optional :name, :string, 1
      optional :payload, :message, 2, "google.cloud.secretmanager.v1.SecretPayload"
    end
    add_message "google.cloud.secretmanager.v1.DeleteSecretRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
    add_message "google.cloud.secretmanager.v1.DisableSecretVersionRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
    add_message "google.cloud.secretmanager.v1.EnableSecretVersionRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
    add_message "google.cloud.secretmanager.v1.DestroySecretVersionRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
  end
end

module Google
  module Cloud
    module SecretManager
      module V1
        ListSecretsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ListSecretsRequest").msgclass
        ListSecretsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ListSecretsResponse").msgclass
        CreateSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.CreateSecretRequest").msgclass
        AddSecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.AddSecretVersionRequest").msgclass
        GetSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.GetSecretRequest").msgclass
        ListSecretVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ListSecretVersionsRequest").msgclass
        ListSecretVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.ListSecretVersionsResponse").msgclass
        GetSecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.GetSecretVersionRequest").msgclass
        UpdateSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.UpdateSecretRequest").msgclass
        AccessSecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.AccessSecretVersionRequest").msgclass
        AccessSecretVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.AccessSecretVersionResponse").msgclass
        DeleteSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.DeleteSecretRequest").msgclass
        DisableSecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.DisableSecretVersionRequest").msgclass
        EnableSecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.EnableSecretVersionRequest").msgclass
        DestroySecretVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.secretmanager.v1.DestroySecretVersionRequest").msgclass
      end
    end
  end
end
