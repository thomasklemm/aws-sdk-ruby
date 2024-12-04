# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockDataAutomationRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AutomationJobStatus = Shapes::StringShape.new(name: 'AutomationJobStatus')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintArn = Shapes::StringShape.new(name: 'BlueprintArn')
    BlueprintList = Shapes::ListShape.new(name: 'BlueprintList')
    BlueprintStage = Shapes::StringShape.new(name: 'BlueprintStage')
    BlueprintVersion = Shapes::StringShape.new(name: 'BlueprintVersion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    DataAutomationArn = Shapes::StringShape.new(name: 'DataAutomationArn')
    DataAutomationConfiguration = Shapes::StructureShape.new(name: 'DataAutomationConfiguration')
    DataAutomationStage = Shapes::StringShape.new(name: 'DataAutomationStage')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionContextKey = Shapes::StringShape.new(name: 'EncryptionContextKey')
    EncryptionContextMap = Shapes::MapShape.new(name: 'EncryptionContextMap')
    EncryptionContextValue = Shapes::StringShape.new(name: 'EncryptionContextValue')
    EventBridgeConfiguration = Shapes::StructureShape.new(name: 'EventBridgeConfiguration')
    GetDataAutomationStatusRequest = Shapes::StructureShape.new(name: 'GetDataAutomationStatusRequest')
    GetDataAutomationStatusResponse = Shapes::StructureShape.new(name: 'GetDataAutomationStatusResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InputConfiguration = Shapes::StructureShape.new(name: 'InputConfiguration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvocationArn = Shapes::StringShape.new(name: 'InvocationArn')
    InvokeDataAutomationAsyncRequest = Shapes::StructureShape.new(name: 'InvokeDataAutomationAsyncRequest')
    InvokeDataAutomationAsyncResponse = Shapes::StructureShape.new(name: 'InvokeDataAutomationAsyncResponse')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotificationConfiguration = Shapes::StructureShape.new(name: 'NotificationConfiguration')
    OutputConfiguration = Shapes::StructureShape.new(name: 'OutputConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Blueprint.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    Blueprint.add_member(:version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "version"))
    Blueprint.add_member(:stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "stage"))
    Blueprint.struct_class = Types::Blueprint

    BlueprintList.member = Shapes::ShapeRef.new(shape: Blueprint)

    DataAutomationConfiguration.add_member(:data_automation_arn, Shapes::ShapeRef.new(shape: DataAutomationArn, required: true, location_name: "dataAutomationArn"))
    DataAutomationConfiguration.add_member(:stage, Shapes::ShapeRef.new(shape: DataAutomationStage, location_name: "stage"))
    DataAutomationConfiguration.struct_class = Types::DataAutomationConfiguration

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "kmsKeyId"))
    EncryptionConfiguration.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: EncryptionContextMap, location_name: "kmsEncryptionContext"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    EncryptionContextMap.key = Shapes::ShapeRef.new(shape: EncryptionContextKey)
    EncryptionContextMap.value = Shapes::ShapeRef.new(shape: EncryptionContextValue)

    EventBridgeConfiguration.add_member(:event_bridge_enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "eventBridgeEnabled"))
    EventBridgeConfiguration.struct_class = Types::EventBridgeConfiguration

    GetDataAutomationStatusRequest.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    GetDataAutomationStatusRequest.struct_class = Types::GetDataAutomationStatusRequest

    GetDataAutomationStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutomationJobStatus, location_name: "status"))
    GetDataAutomationStatusResponse.add_member(:error_type, Shapes::ShapeRef.new(shape: String, location_name: "errorType"))
    GetDataAutomationStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    GetDataAutomationStatusResponse.add_member(:output_configuration, Shapes::ShapeRef.new(shape: OutputConfiguration, location_name: "outputConfiguration"))
    GetDataAutomationStatusResponse.struct_class = Types::GetDataAutomationStatusResponse

    InputConfiguration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    InputConfiguration.struct_class = Types::InputConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvokeDataAutomationAsyncRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    InvokeDataAutomationAsyncRequest.add_member(:input_configuration, Shapes::ShapeRef.new(shape: InputConfiguration, required: true, location_name: "inputConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:output_configuration, Shapes::ShapeRef.new(shape: OutputConfiguration, required: true, location_name: "outputConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:data_automation_configuration, Shapes::ShapeRef.new(shape: DataAutomationConfiguration, location_name: "dataAutomationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:notification_configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: "notificationConfiguration"))
    InvokeDataAutomationAsyncRequest.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintList, location_name: "blueprints"))
    InvokeDataAutomationAsyncRequest.struct_class = Types::InvokeDataAutomationAsyncRequest

    InvokeDataAutomationAsyncResponse.add_member(:invocation_arn, Shapes::ShapeRef.new(shape: InvocationArn, required: true, location_name: "invocationArn"))
    InvokeDataAutomationAsyncResponse.struct_class = Types::InvokeDataAutomationAsyncResponse

    NotificationConfiguration.add_member(:event_bridge_configuration, Shapes::ShapeRef.new(shape: EventBridgeConfiguration, required: true, location_name: "eventBridgeConfiguration"))
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    OutputConfiguration.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3Uri"))
    OutputConfiguration.struct_class = Types::OutputConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-06-13"

      api.metadata = {
        "apiVersion" => "2024-06-13",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-data-automation-runtime",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Runtime for Amazon Bedrock Data Automation",
        "serviceId" => "Bedrock Data Automation Runtime",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "targetPrefix" => "AmazonBedrockKeystoneRuntimeService",
        "uid" => "bedrock-data-automation-runtime-2024-06-13",
      }

      api.add_operation(:get_data_automation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataAutomationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDataAutomationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataAutomationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:invoke_data_automation_async, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InvokeDataAutomationAsync"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: InvokeDataAutomationAsyncRequest)
        o.output = Shapes::ShapeRef.new(shape: InvokeDataAutomationAsyncResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
