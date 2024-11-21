# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Notifications
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AggregationDuration = Shapes::StringShape.new(name: 'AggregationDuration')
    AggregationEventType = Shapes::StringShape.new(name: 'AggregationEventType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateChannelRequest = Shapes::StructureShape.new(name: 'AssociateChannelRequest')
    AssociateChannelResponse = Shapes::StructureShape.new(name: 'AssociateChannelResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChannelArn = Shapes::StringShape.new(name: 'ChannelArn')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateEventRuleRequest = Shapes::StructureShape.new(name: 'CreateEventRuleRequest')
    CreateEventRuleResponse = Shapes::StructureShape.new(name: 'CreateEventRuleResponse')
    CreateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationRequest')
    CreateNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'CreateNotificationConfigurationResponse')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime', timestampFormat: "iso8601")
    DeleteEventRuleRequest = Shapes::StructureShape.new(name: 'DeleteEventRuleRequest')
    DeleteEventRuleResponse = Shapes::StructureShape.new(name: 'DeleteEventRuleResponse')
    DeleteNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationRequest')
    DeleteNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteNotificationConfigurationResponse')
    DeregisterNotificationHubRequest = Shapes::StructureShape.new(name: 'DeregisterNotificationHubRequest')
    DeregisterNotificationHubResponse = Shapes::StructureShape.new(name: 'DeregisterNotificationHubResponse')
    Dimension = Shapes::StructureShape.new(name: 'Dimension')
    Dimensions = Shapes::ListShape.new(name: 'Dimensions')
    DisassociateChannelRequest = Shapes::StructureShape.new(name: 'DisassociateChannelRequest')
    DisassociateChannelResponse = Shapes::StructureShape.new(name: 'DisassociateChannelResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EventRuleArn = Shapes::StringShape.new(name: 'EventRuleArn')
    EventRuleEventPattern = Shapes::StringShape.new(name: 'EventRuleEventPattern')
    EventRuleStatus = Shapes::StringShape.new(name: 'EventRuleStatus')
    EventRuleStatusReason = Shapes::StringShape.new(name: 'EventRuleStatusReason')
    EventRuleStatusSummary = Shapes::StructureShape.new(name: 'EventRuleStatusSummary')
    EventRuleStructure = Shapes::StructureShape.new(name: 'EventRuleStructure')
    EventRules = Shapes::ListShape.new(name: 'EventRules')
    EventStatus = Shapes::StringShape.new(name: 'EventStatus')
    EventType = Shapes::StringShape.new(name: 'EventType')
    GetEventRuleRequest = Shapes::StructureShape.new(name: 'GetEventRuleRequest')
    GetEventRuleResponse = Shapes::StructureShape.new(name: 'GetEventRuleResponse')
    GetNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'GetNotificationConfigurationRequest')
    GetNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'GetNotificationConfigurationResponse')
    GetNotificationEventRequest = Shapes::StructureShape.new(name: 'GetNotificationEventRequest')
    GetNotificationEventResponse = Shapes::StructureShape.new(name: 'GetNotificationEventResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LastActivationTime = Shapes::TimestampShape.new(name: 'LastActivationTime', timestampFormat: "iso8601")
    ListChannelsRequest = Shapes::StructureShape.new(name: 'ListChannelsRequest')
    ListChannelsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChannelsRequestMaxResultsInteger')
    ListChannelsResponse = Shapes::StructureShape.new(name: 'ListChannelsResponse')
    ListEventRulesRequest = Shapes::StructureShape.new(name: 'ListEventRulesRequest')
    ListEventRulesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEventRulesRequestMaxResultsInteger')
    ListEventRulesResponse = Shapes::StructureShape.new(name: 'ListEventRulesResponse')
    ListNotificationConfigurationsRequest = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsRequest')
    ListNotificationConfigurationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationConfigurationsRequestMaxResultsInteger')
    ListNotificationConfigurationsResponse = Shapes::StructureShape.new(name: 'ListNotificationConfigurationsResponse')
    ListNotificationEventsRequest = Shapes::StructureShape.new(name: 'ListNotificationEventsRequest')
    ListNotificationEventsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationEventsRequestMaxResultsInteger')
    ListNotificationEventsResponse = Shapes::StructureShape.new(name: 'ListNotificationEventsResponse')
    ListNotificationHubsRequest = Shapes::StructureShape.new(name: 'ListNotificationHubsRequest')
    ListNotificationHubsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNotificationHubsRequestMaxResultsInteger')
    ListNotificationHubsResponse = Shapes::StructureShape.new(name: 'ListNotificationHubsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LocaleCode = Shapes::StringShape.new(name: 'LocaleCode')
    ManagedRuleArn = Shapes::StringShape.new(name: 'ManagedRuleArn')
    ManagedRuleArns = Shapes::ListShape.new(name: 'ManagedRuleArns')
    Media = Shapes::ListShape.new(name: 'Media')
    MediaElement = Shapes::StructureShape.new(name: 'MediaElement')
    MediaElementType = Shapes::StringShape.new(name: 'MediaElementType')
    MediaId = Shapes::StringShape.new(name: 'MediaId')
    MessageComponents = Shapes::StructureShape.new(name: 'MessageComponents')
    MessageComponentsSummary = Shapes::StructureShape.new(name: 'MessageComponentsSummary')
    MessageComponentsSummaryHeadlineString = Shapes::StringShape.new(name: 'MessageComponentsSummaryHeadlineString')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationConfigurationArn = Shapes::StringShape.new(name: 'NotificationConfigurationArn')
    NotificationConfigurationDescription = Shapes::StringShape.new(name: 'NotificationConfigurationDescription')
    NotificationConfigurationName = Shapes::StringShape.new(name: 'NotificationConfigurationName')
    NotificationConfigurationStatus = Shapes::StringShape.new(name: 'NotificationConfigurationStatus')
    NotificationConfigurationStructure = Shapes::StructureShape.new(name: 'NotificationConfigurationStructure')
    NotificationConfigurations = Shapes::ListShape.new(name: 'NotificationConfigurations')
    NotificationEvent = Shapes::StructureShape.new(name: 'NotificationEvent')
    NotificationEventArn = Shapes::StringShape.new(name: 'NotificationEventArn')
    NotificationEventId = Shapes::StringShape.new(name: 'NotificationEventId')
    NotificationEventOverview = Shapes::StructureShape.new(name: 'NotificationEventOverview')
    NotificationEventSummary = Shapes::StructureShape.new(name: 'NotificationEventSummary')
    NotificationEvents = Shapes::ListShape.new(name: 'NotificationEvents')
    NotificationHubOverview = Shapes::StructureShape.new(name: 'NotificationHubOverview')
    NotificationHubStatus = Shapes::StringShape.new(name: 'NotificationHubStatus')
    NotificationHubStatusReason = Shapes::StringShape.new(name: 'NotificationHubStatusReason')
    NotificationHubStatusSummary = Shapes::StructureShape.new(name: 'NotificationHubStatusSummary')
    NotificationHubs = Shapes::ListShape.new(name: 'NotificationHubs')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    Region = Shapes::StringShape.new(name: 'Region')
    Regions = Shapes::ListShape.new(name: 'Regions')
    RegisterNotificationHubRequest = Shapes::StructureShape.new(name: 'RegisterNotificationHubRequest')
    RegisterNotificationHubResponse = Shapes::StructureShape.new(name: 'RegisterNotificationHubResponse')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    Resources = Shapes::ListShape.new(name: 'Resources')
    SchemaVersion = Shapes::StringShape.new(name: 'SchemaVersion')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceEventMetadata = Shapes::StructureShape.new(name: 'SourceEventMetadata')
    SourceEventMetadataEventOriginRegionString = Shapes::StringShape.new(name: 'SourceEventMetadataEventOriginRegionString')
    SourceEventMetadataEventTypeString = Shapes::StringShape.new(name: 'SourceEventMetadataEventTypeString')
    SourceEventMetadataEventTypeVersionString = Shapes::StringShape.new(name: 'SourceEventMetadataEventTypeVersionString')
    SourceEventMetadataRelatedAccountString = Shapes::StringShape.new(name: 'SourceEventMetadataRelatedAccountString')
    SourceEventMetadataSummary = Shapes::StructureShape.new(name: 'SourceEventMetadataSummary')
    SourceEventMetadataSummaryEventOriginRegionString = Shapes::StringShape.new(name: 'SourceEventMetadataSummaryEventOriginRegionString')
    SourceEventMetadataSummaryEventTypeString = Shapes::StringShape.new(name: 'SourceEventMetadataSummaryEventTypeString')
    StatusSummaryByRegion = Shapes::MapShape.new(name: 'StatusSummaryByRegion')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TagsMemberString = Shapes::StringShape.new(name: 'TagsMemberString')
    TextByLocale = Shapes::MapShape.new(name: 'TextByLocale')
    TextPartId = Shapes::StringShape.new(name: 'TextPartId')
    TextPartReference = Shapes::StringShape.new(name: 'TextPartReference')
    TextPartType = Shapes::StringShape.new(name: 'TextPartType')
    TextPartValue = Shapes::StructureShape.new(name: 'TextPartValue')
    TextPartValueDisplayTextString = Shapes::StringShape.new(name: 'TextPartValueDisplayTextString')
    TextParts = Shapes::MapShape.new(name: 'TextParts')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEventRuleRequest = Shapes::StructureShape.new(name: 'UpdateEventRuleRequest')
    UpdateEventRuleResponse = Shapes::StructureShape.new(name: 'UpdateEventRuleResponse')
    UpdateNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationRequest')
    UpdateNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateNotificationConfigurationResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "arn"))
    AssociateChannelRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    AssociateChannelRequest.struct_class = Types::AssociateChannelRequest

    AssociateChannelResponse.struct_class = Types::AssociateChannelResponse

    Channels.member = Shapes::ShapeRef.new(shape: ChannelArn)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.struct_class = Types::ConflictException

    CreateEventRuleRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    CreateEventRuleRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CreateEventRuleRequest.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    CreateEventRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: "eventPattern"))
    CreateEventRuleRequest.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    CreateEventRuleRequest.struct_class = Types::CreateEventRuleRequest

    CreateEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    CreateEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    CreateEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    CreateEventRuleResponse.struct_class = Types::CreateEventRuleResponse

    CreateNotificationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    CreateNotificationConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    CreateNotificationConfigurationRequest.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    CreateNotificationConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateNotificationConfigurationRequest.struct_class = Types::CreateNotificationConfigurationRequest

    CreateNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    CreateNotificationConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    CreateNotificationConfigurationResponse.struct_class = Types::CreateNotificationConfigurationResponse

    DeleteEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    DeleteEventRuleRequest.struct_class = Types::DeleteEventRuleRequest

    DeleteEventRuleResponse.struct_class = Types::DeleteEventRuleResponse

    DeleteNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    DeleteNotificationConfigurationRequest.struct_class = Types::DeleteNotificationConfigurationRequest

    DeleteNotificationConfigurationResponse.struct_class = Types::DeleteNotificationConfigurationResponse

    DeregisterNotificationHubRequest.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location: "uri", location_name: "notificationHubRegion"))
    DeregisterNotificationHubRequest.struct_class = Types::DeregisterNotificationHubRequest

    DeregisterNotificationHubResponse.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    DeregisterNotificationHubResponse.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    DeregisterNotificationHubResponse.struct_class = Types::DeregisterNotificationHubResponse

    Dimension.add_member(:name, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "name"))
    Dimension.add_member(:value, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "value"))
    Dimension.struct_class = Types::Dimension

    Dimensions.member = Shapes::ShapeRef.new(shape: Dimension)

    DisassociateChannelRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ChannelArn, required: true, location: "uri", location_name: "arn"))
    DisassociateChannelRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    DisassociateChannelRequest.struct_class = Types::DisassociateChannelRequest

    DisassociateChannelResponse.struct_class = Types::DisassociateChannelResponse

    EventRuleStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: EventRuleStatus, required: true, location_name: "status"))
    EventRuleStatusSummary.add_member(:reason, Shapes::ShapeRef.new(shape: EventRuleStatusReason, required: true, location_name: "reason"))
    EventRuleStatusSummary.struct_class = Types::EventRuleStatusSummary

    EventRuleStructure.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    EventRuleStructure.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    EventRuleStructure.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    EventRuleStructure.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    EventRuleStructure.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    EventRuleStructure.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, required: true, location_name: "eventPattern"))
    EventRuleStructure.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    EventRuleStructure.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRuleArns, required: true, location_name: "managedRules"))
    EventRuleStructure.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    EventRuleStructure.struct_class = Types::EventRuleStructure

    EventRules.member = Shapes::ShapeRef.new(shape: EventRuleStructure)

    GetEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    GetEventRuleRequest.struct_class = Types::GetEventRuleRequest

    GetEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    GetEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    GetEventRuleResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetEventRuleResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    GetEventRuleResponse.add_member(:event_type, Shapes::ShapeRef.new(shape: EventType, required: true, location_name: "eventType"))
    GetEventRuleResponse.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, required: true, location_name: "eventPattern"))
    GetEventRuleResponse.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, required: true, location_name: "regions"))
    GetEventRuleResponse.add_member(:managed_rules, Shapes::ShapeRef.new(shape: ManagedRuleArns, required: true, location_name: "managedRules"))
    GetEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    GetEventRuleResponse.struct_class = Types::GetEventRuleResponse

    GetNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    GetNotificationConfigurationRequest.struct_class = Types::GetNotificationConfigurationRequest

    GetNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    GetNotificationConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    GetNotificationConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    GetNotificationConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    GetNotificationConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetNotificationConfigurationResponse.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    GetNotificationConfigurationResponse.struct_class = Types::GetNotificationConfigurationResponse

    GetNotificationEventRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location: "uri", location_name: "arn"))
    GetNotificationEventRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    GetNotificationEventRequest.struct_class = Types::GetNotificationEventRequest

    GetNotificationEventResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location_name: "arn"))
    GetNotificationEventResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    GetNotificationEventResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetNotificationEventResponse.add_member(:content, Shapes::ShapeRef.new(shape: NotificationEvent, required: true, location_name: "content"))
    GetNotificationEventResponse.struct_class = Types::GetNotificationEventResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChannelsRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListChannelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChannelsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListChannelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListChannelsRequest.struct_class = Types::ListChannelsRequest

    ListChannelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListChannelsResponse.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, required: true, location_name: "channels"))
    ListChannelsResponse.struct_class = Types::ListChannelsResponse

    ListEventRulesRequest.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "querystring", location_name: "notificationConfigurationArn"))
    ListEventRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventRulesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListEventRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventRulesRequest.struct_class = Types::ListEventRulesRequest

    ListEventRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEventRulesResponse.add_member(:event_rules, Shapes::ShapeRef.new(shape: EventRules, required: true, location_name: "eventRules"))
    ListEventRulesResponse.struct_class = Types::ListEventRulesResponse

    ListNotificationConfigurationsRequest.add_member(:event_rule_source, Shapes::ShapeRef.new(shape: Source, location: "querystring", location_name: "eventRuleSource"))
    ListNotificationConfigurationsRequest.add_member(:channel_arn, Shapes::ShapeRef.new(shape: ChannelArn, location: "querystring", location_name: "channelArn"))
    ListNotificationConfigurationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, location: "querystring", location_name: "status"))
    ListNotificationConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationConfigurationsRequest.struct_class = Types::ListNotificationConfigurationsRequest

    ListNotificationConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationConfigurationsResponse.add_member(:notification_configurations, Shapes::ShapeRef.new(shape: NotificationConfigurations, required: true, location_name: "notificationConfigurations"))
    ListNotificationConfigurationsResponse.struct_class = Types::ListNotificationConfigurationsResponse

    ListNotificationEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "startTime"))
    ListNotificationEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location: "querystring", location_name: "endTime"))
    ListNotificationEventsRequest.add_member(:locale, Shapes::ShapeRef.new(shape: LocaleCode, location: "querystring", location_name: "locale"))
    ListNotificationEventsRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, location: "querystring", location_name: "source"))
    ListNotificationEventsRequest.add_member(:include_child_events, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "includeChildEvents"))
    ListNotificationEventsRequest.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location: "querystring", location_name: "aggregateNotificationEventArn"))
    ListNotificationEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationEventsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationEventsRequest.struct_class = Types::ListNotificationEventsRequest

    ListNotificationEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationEventsResponse.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEvents, required: true, location_name: "notificationEvents"))
    ListNotificationEventsResponse.struct_class = Types::ListNotificationEventsResponse

    ListNotificationHubsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationHubsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListNotificationHubsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListNotificationHubsRequest.struct_class = Types::ListNotificationHubsRequest

    ListNotificationHubsResponse.add_member(:notification_hubs, Shapes::ShapeRef.new(shape: NotificationHubs, required: true, location_name: "notificationHubs"))
    ListNotificationHubsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListNotificationHubsResponse.struct_class = Types::ListNotificationHubsResponse

    ListTagsForResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedRuleArns.member = Shapes::ShapeRef.new(shape: ManagedRuleArn)

    Media.member = Shapes::ShapeRef.new(shape: MediaElement)

    MediaElement.add_member(:media_id, Shapes::ShapeRef.new(shape: MediaId, required: true, location_name: "mediaId"))
    MediaElement.add_member(:type, Shapes::ShapeRef.new(shape: MediaElementType, required: true, location_name: "type"))
    MediaElement.add_member(:url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "url"))
    MediaElement.add_member(:caption, Shapes::ShapeRef.new(shape: TextPartReference, required: true, location_name: "caption"))
    MediaElement.struct_class = Types::MediaElement

    MessageComponents.add_member(:headline, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "headline"))
    MessageComponents.add_member(:paragraph_summary, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "paragraphSummary"))
    MessageComponents.add_member(:complete_description, Shapes::ShapeRef.new(shape: TextPartReference, location_name: "completeDescription"))
    MessageComponents.add_member(:dimensions, Shapes::ShapeRef.new(shape: Dimensions, location_name: "dimensions"))
    MessageComponents.struct_class = Types::MessageComponents

    MessageComponentsSummary.add_member(:headline, Shapes::ShapeRef.new(shape: MessageComponentsSummaryHeadlineString, required: true, location_name: "headline"))
    MessageComponentsSummary.struct_class = Types::MessageComponentsSummary

    NotificationConfigurationStructure.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    NotificationConfigurationStructure.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, required: true, location_name: "name"))
    NotificationConfigurationStructure.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, required: true, location_name: "description"))
    NotificationConfigurationStructure.add_member(:status, Shapes::ShapeRef.new(shape: NotificationConfigurationStatus, required: true, location_name: "status"))
    NotificationConfigurationStructure.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationConfigurationStructure.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    NotificationConfigurationStructure.struct_class = Types::NotificationConfigurationStructure

    NotificationConfigurations.member = Shapes::ShapeRef.new(shape: NotificationConfigurationStructure)

    NotificationEvent.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    NotificationEvent.add_member(:id, Shapes::ShapeRef.new(shape: NotificationEventId, required: true, location_name: "id"))
    NotificationEvent.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: SourceEventMetadata, required: true, location_name: "sourceEventMetadata"))
    NotificationEvent.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponents, required: true, location_name: "messageComponents"))
    NotificationEvent.add_member(:source_event_detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "sourceEventDetailUrl"))
    NotificationEvent.add_member(:source_event_detail_url_display_text, Shapes::ShapeRef.new(shape: String, location_name: "sourceEventDetailUrlDisplayText"))
    NotificationEvent.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    NotificationEvent.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "eventStatus"))
    NotificationEvent.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    NotificationEvent.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: "aggregateNotificationEventArn"))
    NotificationEvent.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "startTime"))
    NotificationEvent.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endTime"))
    NotificationEvent.add_member(:text_parts, Shapes::ShapeRef.new(shape: TextParts, required: true, location_name: "textParts"))
    NotificationEvent.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "media"))
    NotificationEvent.struct_class = Types::NotificationEvent

    NotificationEventOverview.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationEventArn, required: true, location_name: "arn"))
    NotificationEventOverview.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    NotificationEventOverview.add_member(:related_account, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "relatedAccount"))
    NotificationEventOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationEventOverview.add_member(:notification_event, Shapes::ShapeRef.new(shape: NotificationEventSummary, required: true, location_name: "notificationEvent"))
    NotificationEventOverview.add_member(:aggregation_event_type, Shapes::ShapeRef.new(shape: AggregationEventType, location_name: "aggregationEventType"))
    NotificationEventOverview.add_member(:aggregate_notification_event_arn, Shapes::ShapeRef.new(shape: NotificationEventArn, location_name: "aggregateNotificationEventArn"))
    NotificationEventOverview.struct_class = Types::NotificationEventOverview

    NotificationEventSummary.add_member(:schema_version, Shapes::ShapeRef.new(shape: SchemaVersion, required: true, location_name: "schemaVersion"))
    NotificationEventSummary.add_member(:source_event_metadata, Shapes::ShapeRef.new(shape: SourceEventMetadataSummary, required: true, location_name: "sourceEventMetadata"))
    NotificationEventSummary.add_member(:message_components, Shapes::ShapeRef.new(shape: MessageComponentsSummary, required: true, location_name: "messageComponents"))
    NotificationEventSummary.add_member(:event_status, Shapes::ShapeRef.new(shape: EventStatus, required: true, location_name: "eventStatus"))
    NotificationEventSummary.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, required: true, location_name: "notificationType"))
    NotificationEventSummary.struct_class = Types::NotificationEventSummary

    NotificationEvents.member = Shapes::ShapeRef.new(shape: NotificationEventOverview)

    NotificationHubOverview.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    NotificationHubOverview.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    NotificationHubOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    NotificationHubOverview.add_member(:last_activation_time, Shapes::ShapeRef.new(shape: LastActivationTime, location_name: "lastActivationTime"))
    NotificationHubOverview.struct_class = Types::NotificationHubOverview

    NotificationHubStatusSummary.add_member(:status, Shapes::ShapeRef.new(shape: NotificationHubStatus, required: true, location_name: "status"))
    NotificationHubStatusSummary.add_member(:reason, Shapes::ShapeRef.new(shape: NotificationHubStatusReason, required: true, location_name: "reason"))
    NotificationHubStatusSummary.struct_class = Types::NotificationHubStatusSummary

    NotificationHubs.member = Shapes::ShapeRef.new(shape: NotificationHubOverview)

    Regions.member = Shapes::ShapeRef.new(shape: Region)

    RegisterNotificationHubRequest.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    RegisterNotificationHubRequest.struct_class = Types::RegisterNotificationHubRequest

    RegisterNotificationHubResponse.add_member(:notification_hub_region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "notificationHubRegion"))
    RegisterNotificationHubResponse.add_member(:status_summary, Shapes::ShapeRef.new(shape: NotificationHubStatusSummary, required: true, location_name: "statusSummary"))
    RegisterNotificationHubResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    RegisterNotificationHubResponse.add_member(:last_activation_time, Shapes::ShapeRef.new(shape: LastActivationTime, location_name: "lastActivationTime"))
    RegisterNotificationHubResponse.struct_class = Types::RegisterNotificationHubResponse

    Resource.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Resource.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    Resource.add_member(:detail_url, Shapes::ShapeRef.new(shape: Url, location_name: "detailUrl"))
    Resource.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Resources.member = Shapes::ShapeRef.new(shape: Resource)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceEventMetadata.add_member(:event_type_version, Shapes::ShapeRef.new(shape: SourceEventMetadataEventTypeVersionString, required: true, location_name: "eventTypeVersion"))
    SourceEventMetadata.add_member(:source_event_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceEventId"))
    SourceEventMetadata.add_member(:event_origin_region, Shapes::ShapeRef.new(shape: SourceEventMetadataEventOriginRegionString, location_name: "eventOriginRegion"))
    SourceEventMetadata.add_member(:related_account, Shapes::ShapeRef.new(shape: SourceEventMetadataRelatedAccountString, required: true, location_name: "relatedAccount"))
    SourceEventMetadata.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    SourceEventMetadata.add_member(:event_occurrence_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "eventOccurrenceTime"))
    SourceEventMetadata.add_member(:event_type, Shapes::ShapeRef.new(shape: SourceEventMetadataEventTypeString, required: true, location_name: "eventType"))
    SourceEventMetadata.add_member(:related_resources, Shapes::ShapeRef.new(shape: Resources, required: true, location_name: "relatedResources"))
    SourceEventMetadata.struct_class = Types::SourceEventMetadata

    SourceEventMetadataSummary.add_member(:event_origin_region, Shapes::ShapeRef.new(shape: SourceEventMetadataSummaryEventOriginRegionString, location_name: "eventOriginRegion"))
    SourceEventMetadataSummary.add_member(:source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "source"))
    SourceEventMetadataSummary.add_member(:event_type, Shapes::ShapeRef.new(shape: SourceEventMetadataSummaryEventTypeString, required: true, location_name: "eventType"))
    SourceEventMetadataSummary.struct_class = Types::SourceEventMetadataSummary

    StatusSummaryByRegion.key = Shapes::ShapeRef.new(shape: Region)
    StatusSummaryByRegion.value = Shapes::ShapeRef.new(shape: EventRuleStatusSummary)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.member = Shapes::ShapeRef.new(shape: TagsMemberString)

    TextByLocale.key = Shapes::ShapeRef.new(shape: LocaleCode)
    TextByLocale.value = Shapes::ShapeRef.new(shape: String)

    TextPartValue.add_member(:type, Shapes::ShapeRef.new(shape: TextPartType, required: true, location_name: "type"))
    TextPartValue.add_member(:display_text, Shapes::ShapeRef.new(shape: TextPartValueDisplayTextString, location_name: "displayText"))
    TextPartValue.add_member(:text_by_locale, Shapes::ShapeRef.new(shape: TextByLocale, location_name: "textByLocale"))
    TextPartValue.add_member(:url, Shapes::ShapeRef.new(shape: Url, location_name: "url"))
    TextPartValue.struct_class = Types::TextPartValue

    TextParts.key = Shapes::ShapeRef.new(shape: TextPartId)
    TextParts.value = Shapes::ShapeRef.new(shape: TextPartValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEventRuleRequest.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location: "uri", location_name: "arn"))
    UpdateEventRuleRequest.add_member(:event_pattern, Shapes::ShapeRef.new(shape: EventRuleEventPattern, location_name: "eventPattern"))
    UpdateEventRuleRequest.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "regions"))
    UpdateEventRuleRequest.struct_class = Types::UpdateEventRuleRequest

    UpdateEventRuleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EventRuleArn, required: true, location_name: "arn"))
    UpdateEventRuleResponse.add_member(:notification_configuration_arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "notificationConfigurationArn"))
    UpdateEventRuleResponse.add_member(:status_summary_by_region, Shapes::ShapeRef.new(shape: StatusSummaryByRegion, required: true, location_name: "statusSummaryByRegion"))
    UpdateEventRuleResponse.struct_class = Types::UpdateEventRuleResponse

    UpdateNotificationConfigurationRequest.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location: "uri", location_name: "arn"))
    UpdateNotificationConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: NotificationConfigurationName, location_name: "name"))
    UpdateNotificationConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NotificationConfigurationDescription, location_name: "description"))
    UpdateNotificationConfigurationRequest.add_member(:aggregation_duration, Shapes::ShapeRef.new(shape: AggregationDuration, location_name: "aggregationDuration"))
    UpdateNotificationConfigurationRequest.struct_class = Types::UpdateNotificationConfigurationRequest

    UpdateNotificationConfigurationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: NotificationConfigurationArn, required: true, location_name: "arn"))
    UpdateNotificationConfigurationResponse.struct_class = Types::UpdateNotificationConfigurationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
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
        "endpointPrefix" => "notifications",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS User Notifications",
        "serviceId" => "Notifications",
        "signatureVersion" => "v4",
        "signingName" => "notifications",
        "uid" => "notifications-2018-05-10",
      }

      api.add_operation(:associate_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels/associate/{arn}"
        o.input = Shapes::ShapeRef.new(shape: AssociateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventRule"
        o.http_method = "POST"
        o.http_request_uri = "/event-rules"
        o.input = Shapes::ShapeRef.new(shape: CreateEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNotificationConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_notification_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterNotificationHub"
        o.http_method = "DELETE"
        o.http_request_uri = "/notification-hubs/{notificationHubRegion}"
        o.input = Shapes::ShapeRef.new(shape: DeregisterNotificationHubRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterNotificationHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateChannel"
        o.http_method = "POST"
        o.http_request_uri = "/channels/disassociate/{arn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateChannelResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventRule"
        o.http_method = "GET"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_notification_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNotificationEvent"
        o.http_method = "GET"
        o.http_request_uri = "/notification-events/{arn}"
        o.input = Shapes::ShapeRef.new(shape: GetNotificationEventRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNotificationEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChannels"
        o.http_method = "GET"
        o.http_request_uri = "/channels"
        o.input = Shapes::ShapeRef.new(shape: ListChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventRules"
        o.http_method = "GET"
        o.http_request_uri = "/event-rules"
        o.input = Shapes::ShapeRef.new(shape: ListEventRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/notification-configurations"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationEvents"
        o.http_method = "GET"
        o.http_request_uri = "/notification-events"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notification_hubs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotificationHubs"
        o.http_method = "GET"
        o.http_request_uri = "/notification-hubs"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationHubsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationHubsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_notification_hub, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterNotificationHub"
        o.http_method = "POST"
        o.http_request_uri = "/notification-hubs"
        o.input = Shapes::ShapeRef.new(shape: RegisterNotificationHubRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterNotificationHubResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_event_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventRule"
        o.http_method = "PUT"
        o.http_request_uri = "/event-rules/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNotificationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/notification-configurations/{arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
