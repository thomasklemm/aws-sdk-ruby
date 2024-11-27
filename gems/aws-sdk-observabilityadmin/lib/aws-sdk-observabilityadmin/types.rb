# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ObservabilityAdmin
  module Types

    # Indicates you don't have permissions to perform the requested
    # operation. The user or role that is making the request must have at
    # least one IAM permissions policy attached that grants the required
    # permissions. For more information, see [Access management for AWS
    # resources][1] in the IAM user guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The onboarding status of the telemetry config feature for the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   This field describes the reason for the failure status. The field
    #   will only be populated if `Status` is `FAILED_START` or
    #   `FAILED_STOP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryEvaluationStatusForOrganizationOutput AWS API Documentation
    #
    class GetTelemetryEvaluationStatusForOrganizationOutput < Struct.new(
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The onboarding status of the telemetry config feature.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Describes the reason for the failure status. The field will only be
    #   populated if `Status` is `FAILED_START` or `FAILED_STOP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryEvaluationStatusOutput AWS API Documentation
    #
    class GetTelemetryEvaluationStatusOutput < Struct.new(
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the request has failed to process because of an unknown
    # server error, exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_identifiers
    #   A list of AWS account IDs used to filter the resources to those
    #   associated with the specified accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_identifier_prefix
    #   A string used to filter resources in the organization which have a
    #   `ResourceIdentifier` starting with the `ResourceIdentifierPrefix`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   A list of resource types used to filter resources in the
    #   organization. If this parameter is provided, the resources will be
    #   returned in the same order used in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   A key-value pair to filter resources in the organization based on
    #   the telemetry type and the state of the telemetry configuration. The
    #   key is the telemetry type and the value is the state.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_tags
    #   A key-value pair to filter resources in the organization based on
    #   tags associated with the resource. Fore more information about tags,
    #   see [What are tags?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   A number field used to limit the number of results within the
    #   returned list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   provides this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryForOrganizationInput AWS API Documentation
    #
    class ListResourceTelemetryForOrganizationInput < Struct.new(
      :account_identifiers,
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_configurations
    #   A list of telemetry configurations for AWS resources supported by
    #   telemetry config in the organization.
    #   @return [Array<Types::TelemetryConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   provides this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryForOrganizationOutput AWS API Documentation
    #
    class ListResourceTelemetryForOrganizationOutput < Struct.new(
      :telemetry_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier_prefix
    #   A string used to filter resources which have a `ResourceIdentifier`
    #   starting with the `ResourceIdentifierPrefix`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   A list of resource types used to filter resources supported by
    #   telemetry config. If this parameter is provided, the resources will
    #   be returned in the same order used in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   A key-value pair to filter resources based on the telemetry type and
    #   the state of the telemetry configuration. The key is the telemetry
    #   type and the value is the state.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_tags
    #   A key-value pair to filter resources based on tags associated with
    #   the resource. For more information about tags, see [What are
    #   tags?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   A number field used to limit the number of results within the
    #   returned list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   generates this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryInput AWS API Documentation
    #
    class ListResourceTelemetryInput < Struct.new(
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_configurations
    #   A list of telemetry configurations for AWS resources supported by
    #   telemetry config in the caller's account.
    #   @return [Array<Types::TelemetryConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   generates this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryOutput AWS API Documentation
    #
    class ListResourceTelemetryOutput < Struct.new(
      :telemetry_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A model representing the state of a resource within an account
    # according to telemetry config.
    #
    # @!attribute [rw] account_identifier
    #   The account ID which contains the resource managed in telemetry
    #   configuration. An example of a valid account ID is `012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   The configuration state for the resource, for example `{ Logs:
    #   NotApplicable; Metrics: Enabled; Traces: NotApplicable; }`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource, for example `AWS::EC2::Instance`.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the resource, for example `i-0b22a22eec53b9321`.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Tags associated with the resource, for example `{ Name:
    #   "ExampleInstance", Environment: "Development" }`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp of the last change to the telemetry configuration for
    #   the resource. For example, `1728679196318`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryConfiguration AWS API Documentation
    #
    class TelemetryConfiguration < Struct.new(
      :account_identifier,
      :telemetry_configuration_state,
      :resource_type,
      :resource_identifier,
      :resource_tags,
      :last_update_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates input validation failed. Check your request parameters and
    # retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

