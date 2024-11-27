# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ObservabilityAdmin
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdentifier = Shapes::StringShape.new(name: 'AccountIdentifier')
    AccountIdentifiers = Shapes::ListShape.new(name: 'AccountIdentifiers')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    GetTelemetryEvaluationStatusForOrganizationOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusForOrganizationOutput')
    GetTelemetryEvaluationStatusOutput = Shapes::StructureShape.new(name: 'GetTelemetryEvaluationStatusOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListResourceTelemetryForOrganizationInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationInput')
    ListResourceTelemetryForOrganizationMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryForOrganizationMaxResults')
    ListResourceTelemetryForOrganizationOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryForOrganizationOutput')
    ListResourceTelemetryInput = Shapes::StructureShape.new(name: 'ListResourceTelemetryInput')
    ListResourceTelemetryMaxResults = Shapes::IntegerShape.new(name: 'ListResourceTelemetryMaxResults')
    ListResourceTelemetryOutput = Shapes::StructureShape.new(name: 'ListResourceTelemetryOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierPrefix = Shapes::StringShape.new(name: 'ResourceIdentifierPrefix')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    Status = Shapes::StringShape.new(name: 'Status')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagMapInput = Shapes::MapShape.new(name: 'TagMapInput')
    TagMapOutput = Shapes::MapShape.new(name: 'TagMapOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TelemetryConfiguration = Shapes::StructureShape.new(name: 'TelemetryConfiguration')
    TelemetryConfigurationState = Shapes::MapShape.new(name: 'TelemetryConfigurationState')
    TelemetryConfigurations = Shapes::ListShape.new(name: 'TelemetryConfigurations')
    TelemetryState = Shapes::StringShape.new(name: 'TelemetryState')
    TelemetryType = Shapes::StringShape.new(name: 'TelemetryType')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdentifiers.member = Shapes::ShapeRef.new(shape: AccountIdentifier)

    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusForOrganizationOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusForOrganizationOutput.struct_class = Types::GetTelemetryEvaluationStatusForOrganizationOutput

    GetTelemetryEvaluationStatusOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    GetTelemetryEvaluationStatusOutput.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    GetTelemetryEvaluationStatusOutput.struct_class = Types::GetTelemetryEvaluationStatusOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.add_member(:amzn_error_type, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amzn-ErrorType"))
    InternalServerException.struct_class = Types::InternalServerException

    ListResourceTelemetryForOrganizationInput.add_member(:account_identifiers, Shapes::ShapeRef.new(shape: AccountIdentifiers, location_name: "AccountIdentifiers"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryForOrganizationInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryForOrganizationInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryForOrganizationInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryForOrganizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationInput.struct_class = Types::ListResourceTelemetryForOrganizationInput

    ListResourceTelemetryForOrganizationOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryForOrganizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryForOrganizationOutput.struct_class = Types::ListResourceTelemetryForOrganizationOutput

    ListResourceTelemetryInput.add_member(:resource_identifier_prefix, Shapes::ShapeRef.new(shape: ResourceIdentifierPrefix, location_name: "ResourceIdentifierPrefix"))
    ListResourceTelemetryInput.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    ListResourceTelemetryInput.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    ListResourceTelemetryInput.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapInput, location_name: "ResourceTags"))
    ListResourceTelemetryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceTelemetryMaxResults, location_name: "MaxResults"))
    ListResourceTelemetryInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryInput.struct_class = Types::ListResourceTelemetryInput

    ListResourceTelemetryOutput.add_member(:telemetry_configurations, Shapes::ShapeRef.new(shape: TelemetryConfigurations, location_name: "TelemetryConfigurations"))
    ListResourceTelemetryOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListResourceTelemetryOutput.struct_class = Types::ListResourceTelemetryOutput

    ResourceTypes.member = Shapes::ShapeRef.new(shape: ResourceType)

    TagMapInput.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMapInput.value = Shapes::ShapeRef.new(shape: TagValue)

    TagMapOutput.key = Shapes::ShapeRef.new(shape: String)
    TagMapOutput.value = Shapes::ShapeRef.new(shape: String)

    TelemetryConfiguration.add_member(:account_identifier, Shapes::ShapeRef.new(shape: AccountIdentifier, location_name: "AccountIdentifier"))
    TelemetryConfiguration.add_member(:telemetry_configuration_state, Shapes::ShapeRef.new(shape: TelemetryConfigurationState, location_name: "TelemetryConfigurationState"))
    TelemetryConfiguration.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    TelemetryConfiguration.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    TelemetryConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagMapOutput, location_name: "ResourceTags"))
    TelemetryConfiguration.add_member(:last_update_time_stamp, Shapes::ShapeRef.new(shape: Long, location_name: "LastUpdateTimeStamp"))
    TelemetryConfiguration.struct_class = Types::TelemetryConfiguration

    TelemetryConfigurationState.key = Shapes::ShapeRef.new(shape: TelemetryType)
    TelemetryConfigurationState.value = Shapes::ShapeRef.new(shape: TelemetryState)

    TelemetryConfigurations.member = Shapes::ShapeRef.new(shape: TelemetryConfiguration)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "observabilityadmin",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "CloudWatch Observability Admin Service",
        "serviceId" => "ObservabilityAdmin",
        "signatureVersion" => "v4",
        "signingName" => "observabilityadmin",
        "uid" => "observabilityadmin-2018-05-10",
      }

      api.add_operation(:get_telemetry_evaluation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatus"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_telemetry_evaluation_status_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTelemetryEvaluationStatusForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/GetTelemetryEvaluationStatusForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetTelemetryEvaluationStatusForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_resource_telemetry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetry"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetry"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_telemetry_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceTelemetryForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/ListResourceTelemetryForOrganization"
        o.input = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationInput)
        o.output = Shapes::ShapeRef.new(shape: ListResourceTelemetryForOrganizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StartTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_telemetry_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluation"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:stop_telemetry_evaluation_for_organization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTelemetryEvaluationForOrganization"
        o.http_method = "POST"
        o.http_request_uri = "/StopTelemetryEvaluationForOrganization"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
