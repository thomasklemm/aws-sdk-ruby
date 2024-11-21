# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NotificationsContacts
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivateEmailContactRequest = Shapes::StructureShape.new(name: 'ActivateEmailContactRequest')
    ActivateEmailContactResponse = Shapes::StructureShape.new(name: 'ActivateEmailContactResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEmailContactRequest = Shapes::StructureShape.new(name: 'CreateEmailContactRequest')
    CreateEmailContactResponse = Shapes::StructureShape.new(name: 'CreateEmailContactResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime', timestampFormat: "iso8601")
    DeleteEmailContactRequest = Shapes::StructureShape.new(name: 'DeleteEmailContactRequest')
    DeleteEmailContactResponse = Shapes::StructureShape.new(name: 'DeleteEmailContactResponse')
    EmailContact = Shapes::StructureShape.new(name: 'EmailContact')
    EmailContactAddress = Shapes::StringShape.new(name: 'EmailContactAddress')
    EmailContactArn = Shapes::StringShape.new(name: 'EmailContactArn')
    EmailContactName = Shapes::StringShape.new(name: 'EmailContactName')
    EmailContactStatus = Shapes::StringShape.new(name: 'EmailContactStatus')
    EmailContacts = Shapes::ListShape.new(name: 'EmailContacts')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetEmailContactRequest = Shapes::StructureShape.new(name: 'GetEmailContactRequest')
    GetEmailContactResponse = Shapes::StructureShape.new(name: 'GetEmailContactResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListEmailContactsRequest = Shapes::StructureShape.new(name: 'ListEmailContactsRequest')
    ListEmailContactsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEmailContactsRequestMaxResultsInteger')
    ListEmailContactsResponse = Shapes::StructureShape.new(name: 'ListEmailContactsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SendActivationCodeRequest = Shapes::StructureShape.new(name: 'SendActivationCodeRequest')
    SendActivationCodeResponse = Shapes::StructureShape.new(name: 'SendActivationCodeResponse')
    SensitiveEmailContactAddress = Shapes::StringShape.new(name: 'SensitiveEmailContactAddress')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Token = Shapes::StringShape.new(name: 'Token')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateTime = Shapes::TimestampShape.new(name: 'UpdateTime', timestampFormat: "iso8601")
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActivateEmailContactRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    ActivateEmailContactRequest.add_member(:code, Shapes::ShapeRef.new(shape: Token, required: true, location: "uri", location_name: "code"))
    ActivateEmailContactRequest.struct_class = Types::ActivateEmailContactRequest

    ActivateEmailContactResponse.struct_class = Types::ActivateEmailContactResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateEmailContactRequest.add_member(:name, Shapes::ShapeRef.new(shape: EmailContactName, required: true, location_name: "name"))
    CreateEmailContactRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailContactAddress, required: true, location_name: "emailAddress"))
    CreateEmailContactRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEmailContactRequest.struct_class = Types::CreateEmailContactRequest

    CreateEmailContactResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location_name: "arn"))
    CreateEmailContactResponse.struct_class = Types::CreateEmailContactResponse

    DeleteEmailContactRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    DeleteEmailContactRequest.struct_class = Types::DeleteEmailContactRequest

    DeleteEmailContactResponse.struct_class = Types::DeleteEmailContactResponse

    EmailContact.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location_name: "arn"))
    EmailContact.add_member(:name, Shapes::ShapeRef.new(shape: EmailContactName, required: true, location_name: "name"))
    EmailContact.add_member(:address, Shapes::ShapeRef.new(shape: SensitiveEmailContactAddress, required: true, location_name: "address"))
    EmailContact.add_member(:status, Shapes::ShapeRef.new(shape: EmailContactStatus, required: true, location_name: "status"))
    EmailContact.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    EmailContact.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    EmailContact.struct_class = Types::EmailContact

    EmailContacts.member = Shapes::ShapeRef.new(shape: EmailContact)

    GetEmailContactRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    GetEmailContactRequest.struct_class = Types::GetEmailContactRequest

    GetEmailContactResponse.add_member(:email_contact, Shapes::ShapeRef.new(shape: EmailContact, required: true, location_name: "emailContact"))
    GetEmailContactResponse.struct_class = Types::GetEmailContactResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListEmailContactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEmailContactsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListEmailContactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListEmailContactsRequest.struct_class = Types::ListEmailContactsRequest

    ListEmailContactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEmailContactsResponse.add_member(:email_contacts, Shapes::ShapeRef.new(shape: EmailContacts, required: true, location_name: "emailContacts"))
    ListEmailContactsResponse.struct_class = Types::ListEmailContactsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendActivationCodeRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    SendActivationCodeRequest.struct_class = Types::SendActivationCodeRequest

    SendActivationCodeResponse.struct_class = Types::SendActivationCodeResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EmailContactArn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "notifications-contacts",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS User Notifications Contacts",
        "serviceId" => "NotificationsContacts",
        "signatureVersion" => "v4",
        "signingName" => "notifications-contacts",
        "uid" => "notificationscontacts-2018-05-10",
      }

      api.add_operation(:activate_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateEmailContact"
        o.http_method = "PUT"
        o.http_request_uri = "/emailcontacts/{arn}/activate/{code}"
        o.input = Shapes::ShapeRef.new(shape: ActivateEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: ActivateEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEmailContact"
        o.http_method = "POST"
        o.http_request_uri = "/2022-09-19/emailcontacts"
        o.input = Shapes::ShapeRef.new(shape: CreateEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEmailContact"
        o.http_method = "DELETE"
        o.http_request_uri = "/emailcontacts/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_email_contact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEmailContact"
        o.http_method = "GET"
        o.http_request_uri = "/emailcontacts/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetEmailContactRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEmailContactResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_email_contacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEmailContacts"
        o.http_method = "GET"
        o.http_request_uri = "/emailcontacts"
        o.input = Shapes::ShapeRef.new(shape: ListEmailContactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEmailContactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:send_activation_code, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendActivationCode"
        o.http_method = "POST"
        o.http_request_uri = "/2022-10-31/emailcontacts/{arn}/activate/send"
        o.input = Shapes::ShapeRef.new(shape: SendActivationCodeRequest)
        o.output = Shapes::ShapeRef.new(shape: SendActivationCodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
