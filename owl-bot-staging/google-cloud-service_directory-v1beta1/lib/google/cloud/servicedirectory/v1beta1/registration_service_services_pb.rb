# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/servicedirectory/v1beta1/registration_service.proto for package 'Google.Cloud.ServiceDirectory.V1beta1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/servicedirectory/v1beta1/registration_service_pb'

module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        module RegistrationService
          # Service Directory API for registering services. It defines the following
          # resource model:
          #
          # - The API has a collection of
          # [Namespace][google.cloud.servicedirectory.v1beta1.Namespace]
          # resources, named `projects/*/locations/*/namespaces/*`.
          #
          # - Each Namespace has a collection of
          # [Service][google.cloud.servicedirectory.v1beta1.Service] resources, named
          # `projects/*/locations/*/namespaces/*/services/*`.
          #
          # - Each Service has a collection of
          # [Endpoint][google.cloud.servicedirectory.v1beta1.Endpoint]
          # resources, named
          # `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.servicedirectory.v1beta1.RegistrationService'

            # Creates a namespace, and returns the new namespace.
            rpc :CreateNamespace, ::Google::Cloud::ServiceDirectory::V1beta1::CreateNamespaceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Namespace
            # Lists all namespaces.
            rpc :ListNamespaces, ::Google::Cloud::ServiceDirectory::V1beta1::ListNamespacesRequest, ::Google::Cloud::ServiceDirectory::V1beta1::ListNamespacesResponse
            # Gets a namespace.
            rpc :GetNamespace, ::Google::Cloud::ServiceDirectory::V1beta1::GetNamespaceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Namespace
            # Updates a namespace.
            rpc :UpdateNamespace, ::Google::Cloud::ServiceDirectory::V1beta1::UpdateNamespaceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Namespace
            # Deletes a namespace. This also deletes all services and endpoints in
            # the namespace.
            rpc :DeleteNamespace, ::Google::Cloud::ServiceDirectory::V1beta1::DeleteNamespaceRequest, ::Google::Protobuf::Empty
            # Creates a service, and returns the new service.
            rpc :CreateService, ::Google::Cloud::ServiceDirectory::V1beta1::CreateServiceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Service
            # Lists all services belonging to a namespace.
            rpc :ListServices, ::Google::Cloud::ServiceDirectory::V1beta1::ListServicesRequest, ::Google::Cloud::ServiceDirectory::V1beta1::ListServicesResponse
            # Gets a service.
            rpc :GetService, ::Google::Cloud::ServiceDirectory::V1beta1::GetServiceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Service
            # Updates a service.
            rpc :UpdateService, ::Google::Cloud::ServiceDirectory::V1beta1::UpdateServiceRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Service
            # Deletes a service. This also deletes all endpoints associated with
            # the service.
            rpc :DeleteService, ::Google::Cloud::ServiceDirectory::V1beta1::DeleteServiceRequest, ::Google::Protobuf::Empty
            # Creates an endpoint, and returns the new endpoint.
            rpc :CreateEndpoint, ::Google::Cloud::ServiceDirectory::V1beta1::CreateEndpointRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Endpoint
            # Lists all endpoints.
            rpc :ListEndpoints, ::Google::Cloud::ServiceDirectory::V1beta1::ListEndpointsRequest, ::Google::Cloud::ServiceDirectory::V1beta1::ListEndpointsResponse
            # Gets an endpoint.
            rpc :GetEndpoint, ::Google::Cloud::ServiceDirectory::V1beta1::GetEndpointRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Endpoint
            # Updates an endpoint.
            rpc :UpdateEndpoint, ::Google::Cloud::ServiceDirectory::V1beta1::UpdateEndpointRequest, ::Google::Cloud::ServiceDirectory::V1beta1::Endpoint
            # Deletes an endpoint.
            rpc :DeleteEndpoint, ::Google::Cloud::ServiceDirectory::V1beta1::DeleteEndpointRequest, ::Google::Protobuf::Empty
            # Gets the IAM Policy for a resource (namespace or service only).
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Sets the IAM Policy for a resource (namespace or service only).
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Tests IAM permissions for a resource (namespace or service only).
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
