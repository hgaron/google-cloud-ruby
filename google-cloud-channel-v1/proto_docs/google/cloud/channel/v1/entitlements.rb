# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Channel
      module V1
        # An entitlement is a representation of a customer's ability to use a service.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Resource name of an entitlement in the form:
        #     accounts/\\{account_id}/customers/\\{customer_id}/entitlements/\\{entitlement_id}.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the entitlement is created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the entitlement is updated.
        # @!attribute [rw] offer
        #   @return [::String]
        #     Required. The offer resource name for which the entitlement is to be
        #     created. Takes the form: accounts/\\{account_id}/offers/\\{offer_id}.
        # @!attribute [rw] commitment_settings
        #   @return [::Google::Cloud::Channel::V1::CommitmentSettings]
        #     Commitment settings for a commitment-based Offer.
        #     Required for commitment based offers.
        # @!attribute [r] provisioning_state
        #   @return [::Google::Cloud::Channel::V1::Entitlement::ProvisioningState]
        #     Output only. Current provisioning state of the entitlement.
        # @!attribute [r] provisioned_service
        #   @return [::Google::Cloud::Channel::V1::ProvisionedService]
        #     Output only. Service provisioning details for the entitlement.
        # @!attribute [r] suspension_reasons
        #   @return [::Array<::Google::Cloud::Channel::V1::Entitlement::SuspensionReason>]
        #     Output only. Enumerable of all current suspension reasons for an
        #     entitlement.
        # @!attribute [rw] purchase_order_id
        #   @return [::String]
        #     Optional. This purchase order (PO) information is for resellers to use for
        #     their company tracking usage. If a purchaseOrderId value is given, it
        #     appears in the API responses and shows up in the invoice. The property
        #     accepts up to 80 plain text characters. This is only supported for Google
        #     Workspace entitlements.
        # @!attribute [r] trial_settings
        #   @return [::Google::Cloud::Channel::V1::TrialSettings]
        #     Output only. Settings for trial offers.
        # @!attribute [rw] association_info
        #   @return [::Google::Cloud::Channel::V1::AssociationInfo]
        #     Association information to other entitlements.
        # @!attribute [rw] parameters
        #   @return [::Array<::Google::Cloud::Channel::V1::Parameter>]
        #     Extended entitlement parameters. When creating an entitlement, valid
        #     parameter names and values are defined in the
        #     {::Google::Cloud::Channel::V1::Offer#parameter_definitions Offer.parameter_definitions}.
        #
        #     For Google Workspace, the following Parameters may be accepted as input:
        #
        #     - max_units: The maximum assignable units for a flexible offer
        #
        #     OR
        #
        #     - num_units: The total commitment for commitment-based offers
        #
        #     The response may additionally include the following output-only Parameters:
        #
        #     - assigned_units: The number of licenses assigned to users.
        #
        #     For Google Cloud billing subaccounts, the following Parameter may be
        #     accepted as input:
        #
        #     - display_name: The display name of the billing subaccount.
        # @!attribute [rw] billing_account
        #   @return [::String]
        #     Optional. The billing account resource name that is used to pay for this
        #     entitlement.
        class Entitlement
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Indicates the current provisioning state of the entitlement.
          module ProvisioningState
            # Not used.
            PROVISIONING_STATE_UNSPECIFIED = 0

            # The entitlement is currently active.
            ACTIVE = 1

            # The entitlement is currently suspended.
            SUSPENDED = 5
          end

          # Suspension reason for an entitlement if
          # {::Google::Cloud::Channel::V1::Entitlement#provisioning_state provisioning_state}
          # = SUSPENDED.
          module SuspensionReason
            # Not used.
            SUSPENSION_REASON_UNSPECIFIED = 0

            # Entitlement was manually suspended by the Reseller.
            RESELLER_INITIATED = 1

            # Trial ended.
            TRIAL_ENDED = 2

            # Entitlement renewal was canceled.
            RENEWAL_WITH_TYPE_CANCEL = 3

            # Entitlement was automatically suspended on creation for pending ToS
            # acceptance on customer.
            PENDING_TOS_ACCEPTANCE = 4

            # Other reasons (internal reasons, abuse, etc.).
            OTHER = 100
          end
        end

        # Definition for extended entitlement parameters.
        # @!attribute [rw] name
        #   @return [::String]
        #     Name of the parameter.
        # @!attribute [rw] value
        #   @return [::Google::Cloud::Channel::V1::Value]
        #     Value of the parameter.
        # @!attribute [r] editable
        #   @return [::Boolean]
        #     Output only. Specifies whether this parameter is allowed to be changed. For
        #     example, for a Google Workspace Business Starter entitlement in commitment
        #     plan, num_units is editable when entitlement is active.
        class Parameter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Association links that an entitlement has to other entitlements.
        # @!attribute [rw] base_entitlement
        #   @return [::String]
        #     The name of the base entitlement, for which this entitlement is an add-on.
        class AssociationInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Service provisioned for an entitlement.
        # @!attribute [r] provisioning_id
        #   @return [::String]
        #     Output only. Provisioning ID of the entitlement. For Google Workspace, this
        #     is the underlying Subscription ID. For Google Cloud, this is the Billing
        #     Account ID of the billing subaccount."
        # @!attribute [r] product_id
        #   @return [::String]
        #     Output only. The product pertaining to the provisioning resource as
        #     specified in the Offer.
        # @!attribute [r] sku_id
        #   @return [::String]
        #     Output only. The SKU pertaining to the provisioning resource as specified
        #     in the Offer.
        class ProvisionedService
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Commitment settings for commitment-based offers.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Commitment start timestamp.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Commitment end timestamp.
        # @!attribute [rw] renewal_settings
        #   @return [::Google::Cloud::Channel::V1::RenewalSettings]
        #     Optional. Renewal settings applicable for a commitment-based Offer.
        class CommitmentSettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Renewal settings for renewable Offers.
        # @!attribute [rw] enable_renewal
        #   @return [::Boolean]
        #     If false, the plan will be completed at the end date.
        # @!attribute [rw] resize_unit_count
        #   @return [::Boolean]
        #     If true and enable_renewal = true, the unit (for example seats or licenses)
        #     will be set to the number of active units at renewal time.
        # @!attribute [rw] payment_plan
        #   @return [::Google::Cloud::Channel::V1::PaymentPlan]
        #     Describes how a reseller will be billed.
        # @!attribute [rw] payment_cycle
        #   @return [::Google::Cloud::Channel::V1::Period]
        #     Describes how frequently the reseller will be billed, such as
        #     once per month.
        class RenewalSettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Settings for trial offers.
        # @!attribute [rw] trial
        #   @return [::Boolean]
        #     Determines if the entitlement is in a trial or not:
        #
        #     * `true` - The entitlement is in trial.
        #     * `false` - The entitlement is not in trial.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Date when the trial ends. The value is in milliseconds
        #     using the UNIX Epoch format. See an example [Epoch
        #     converter](https://www.epochconverter.com).
        class TrialSettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # TransferableSku represents information a reseller needs to view existing
        # provisioned services for a customer that they do not own.
        # Read-only.
        # @!attribute [rw] transfer_eligibility
        #   @return [::Google::Cloud::Channel::V1::TransferEligibility]
        #     Describes the transfer eligibility of a SKU.
        # @!attribute [rw] sku
        #   @return [::Google::Cloud::Channel::V1::Sku]
        #     The SKU pertaining to the provisioning resource as specified in the Offer.
        # @!attribute [rw] legacy_sku
        #   @return [::Google::Cloud::Channel::V1::Sku]
        #     Optional. The customer to transfer has an entitlement with the populated
        #     legacy SKU.
        class TransferableSku
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specifies transfer eligibility of a SKU.
        # @!attribute [rw] is_eligible
        #   @return [::Boolean]
        #     Whether reseller is eligible to transfer the SKU.
        # @!attribute [rw] description
        #   @return [::String]
        #     Localized description if reseller is not eligible to transfer the SKU.
        # @!attribute [rw] ineligibility_reason
        #   @return [::Google::Cloud::Channel::V1::TransferEligibility::Reason]
        #     Specified the reason for ineligibility.
        class TransferEligibility
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Reason of ineligibility.
          module Reason
            # Not used.
            REASON_UNSPECIFIED = 0

            # Reseller needs to accept TOS before transferring the SKU.
            PENDING_TOS_ACCEPTANCE = 1

            # Reseller not eligible to sell the SKU.
            SKU_NOT_ELIGIBLE = 2

            # SKU subscription is suspended
            SKU_SUSPENDED = 3
          end
        end
      end
    end
  end
end
