# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Notifications
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Channel to associate with the
    #   NotificationConfiguration.
    #
    #   Supported ARNs include AWS Chatbot, the Console Mobile Application,
    #   and notifications-contacts.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of the NotificationConfiguration to associate with the
    #   Channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AssociateChannelRequest AWS API Documentation
    #
    class AssociateChannelRequest < Struct.new(
      :arn,
      :notification_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/AssociateChannelResponse AWS API Documentation
    #
    class AssociateChannelResponse < Aws::EmptyStructure; end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID that prompted the conflict error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the NotificationConfiguration
    #   associated with this EventRule.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type to match.
    #
    #   Must match one of the valid Amazon EventBridge event types. For
    #   example, EC2 Instance State-change Notification and AWS CloudWatch
    #   Alarm State Change. For more information, see [Event delivery from
    #   AWS services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   An additional event pattern used to further filter the events this
    #   EventRule receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A list of AWS Regions that send events to this EventRule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateEventRuleRequest AWS API Documentation
    #
    class CreateEventRuleRequest < Struct.new(
      :notification_configuration_arn,
      :source,
      :event_type,
      :event_pattern,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of a NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] status_summary_by_region
    #   A list of an EventRule's status by Region. Regions are mapped to
    #   EventRuleStatusSummary.
    #   @return [Hash<String,Types::EventRuleStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateEventRuleResponse AWS API Documentation
    #
    class CreateEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :status_summary_by_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the NotificationConfiguration. Supports RFC 3986's
    #   unreserved characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_duration
    #   The aggregation preference of the NotificationConfiguration.
    #
    #   * Values:
    #
    #     * `LONG`
    #
    #       * Aggregate notifications for long periods of time (12 hours).
    #
    #       ^
    #     * `SHORT`
    #
    #       * Aggregate notifications for short periods of time (5 minutes).
    #
    #       ^
    #     * `NONE`
    #
    #       * Don't aggregate notifications.
    #
    #         No delay in delivery.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags assigned to a resource. A tag is a string-to-string
    #   map of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateNotificationConfigurationRequest AWS API Documentation
    #
    class CreateNotificationConfigurationRequest < Struct.new(
      :name,
      :description,
      :aggregation_duration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the the resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this NotificationConfiguration.
    #
    #   The status should always be `INACTIVE` when part of the
    #   CreateNotificationConfiguration response.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All EventRules are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This NotificationConfiguration is being deleted.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/CreateNotificationConfigurationResponse AWS API Documentation
    #
    class CreateNotificationConfigurationResponse < Struct.new(
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the EventRule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteEventRuleRequest AWS API Documentation
    #
    class DeleteEventRuleRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteEventRuleResponse AWS API Documentation
    #
    class DeleteEventRuleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the NotificationConfiguration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteNotificationConfigurationRequest AWS API Documentation
    #
    class DeleteNotificationConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeleteNotificationConfigurationResponse AWS API Documentation
    #
    class DeleteNotificationConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] notification_hub_region
    #   The NotificationHub Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeregisterNotificationHubRequest AWS API Documentation
    #
    class DeregisterNotificationHubRequest < Struct.new(
      :notification_hub_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_hub_region
    #   The NotificationHub Region.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   NotificationHub status information.
    #   @return [Types::NotificationHubStatusSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DeregisterNotificationHubResponse AWS API Documentation
    #
    class DeregisterNotificationHubResponse < Struct.new(
      :notification_hub_region,
      :status_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key-value pair of properties for an event.
    #
    # @!attribute [rw] name
    #   The name of the dimension
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Channel to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of the NotificationConfiguration to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisassociateChannelRequest AWS API Documentation
    #
    class DisassociateChannelRequest < Struct.new(
      :arn,
      :notification_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/DisassociateChannelResponse AWS API Documentation
    #
    class DisassociateChannelResponse < Aws::EmptyStructure; end

    # Describes EventRule status information.
    #
    # @!attribute [rw] status
    #   The status of the EventRule.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * The EventRule can process events.
    #
    #       ^
    #     * `INACTIVE`
    #
    #       * The EventRule may be unable to process events.
    #
    #       ^
    #     * `CREATING`
    #
    #       * The EventRule is being created.
    #
    #         Only `GET` and `LIST` calls can be run.
    #     * `UPDATING`
    #
    #       * The EventRule is being updated.
    #
    #         Only `GET` and `LIST` calls can be run.
    #     * `DELETING`
    #
    #       * The EventRule is being deleted.
    #
    #         Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A human-readable reason for EventRuleStatus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/EventRuleStatusSummary AWS API Documentation
    #
    class EventRuleStatusSummary < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a complete list of fields related to an EventRule.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN for the NotificationConfiguration associated with this
    #   EventRule.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the resource.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type to match.
    #
    #   Must match one of the valid Amazon EventBridge event types. For
    #   example, EC2 Instance State-change Notification and AWS CloudWatch
    #   Alarm State Change. For more information, see [Event delivery from
    #   AWS services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   An additional event pattern used to further filter the events this
    #   EventRule receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A list of AWS Regions that send events to this EventRule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_rules
    #   A list of Amazon EventBridge Managed Rule ARNs associated with this
    #   EventRule.
    #
    #   <note markdown="1"> These are created by AWS User Notifications within your account so
    #   your EventRules can function.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_summary_by_region
    #   A list of an EventRule's status by Region. Regions are mapped to
    #   EventRuleStatusSummary.
    #   @return [Hash<String,Types::EventRuleStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/EventRuleStructure AWS API Documentation
    #
    class EventRuleStructure < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :source,
      :event_type,
      :event_pattern,
      :regions,
      :managed_rules,
      :status_summary_by_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the EventRule to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetEventRuleRequest AWS API Documentation
    #
    class GetEventRuleRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of a NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date when the EventRule was created.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type to match.
    #
    #   Must match one of the valid Amazon EventBridge event types. For
    #   example, EC2 Instance State-change Notification and AWS CloudWatch
    #   Alarm State Change. For more information, see [Event delivery from
    #   AWS services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   An additional event pattern used to further filter the events this
    #   EventRule receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A list of AWS Regions that send events to this EventRule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] managed_rules
    #   A list of managed rules from EventBridge that are are associated
    #   with this EventRule.
    #
    #   <note markdown="1"> These are created by AWS User Notifications within your account so
    #   this EventRule functions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_summary_by_region
    #   A list of an EventRule's status by Region. Regions are mapped to
    #   EventRuleStatusSummary.
    #   @return [Hash<String,Types::EventRuleStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetEventRuleResponse AWS API Documentation
    #
    class GetEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :source,
      :event_type,
      :event_pattern,
      :regions,
      :managed_rules,
      :status_summary_by_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the NotificationConfiguration to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationConfigurationRequest AWS API Documentation
    #
    class GetNotificationConfigurationRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this NotificationConfiguration.
    #
    #   The status should always be `INACTIVE` when part of the
    #   CreateNotificationConfiguration response.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All EventRules are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This NotificationConfiguration is being deleted. Only `GET`
    #         and `LIST` calls can be run.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the NotificationConfiguration.
    #   @return [Time]
    #
    # @!attribute [rw] aggregation_duration
    #   The aggregation preference of the NotificationConfiguration.
    #
    #   * Values:
    #
    #     * `LONG`
    #
    #       * Aggregate notifications for long periods of time (12 hours).
    #
    #       ^
    #     * `SHORT`
    #
    #       * Aggregate notifications for short periods of time (5 minutes).
    #
    #       ^
    #     * `NONE`
    #
    #       * Don't aggregate notifications.
    #
    #         No delay in delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationConfigurationResponse AWS API Documentation
    #
    class GetNotificationConfigurationResponse < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :creation_time,
      :aggregation_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the NotificationEvent to return.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale code of the language used for the retrieved
    #   NotificationEvent. The default locale is English `en_US`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationEventRequest AWS API Documentation
    #
    class GetNotificationEventRequest < Struct.new(
      :arn,
      :locale)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the NotificationEvent.
    #   @return [Time]
    #
    # @!attribute [rw] content
    #   The content of the NotificationEvent.
    #   @return [Types::NotificationEvent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/GetNotificationEventResponse AWS API Documentation
    #
    class GetNotificationEventResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :creation_time,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in this call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The start token for paginated calls. Retrieved from the response of
    #   a previous ListNotificationEvents call. NextToken uses Base64
    #   encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListChannelsRequest AWS API Documentation
    #
    class ListChannelsRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @!attribute [rw] channels
    #   A list of Channels.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListChannelsResponse AWS API Documentation
    #
    class ListChannelsResponse < Struct.new(
      :next_token,
      :channels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_configuration_arn
    #   The Amazon Resource Name (ARN) of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in this call. The
    #   default value is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The start token for paginated calls. Retrieved from the response of
    #   a previous ListEventRules call. Next token uses Base64 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListEventRulesRequest AWS API Documentation
    #
    class ListEventRulesRequest < Struct.new(
      :notification_configuration_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @!attribute [rw] event_rules
    #   A list of EventRules.
    #   @return [Array<Types::EventRuleStructure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListEventRulesResponse AWS API Documentation
    #
    class ListEventRulesResponse < Struct.new(
      :next_token,
      :event_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_rule_source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] channel_arn
    #   The Amazon Resource Name (ARN) of the Channel to match.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The NotificationConfiguration status to match.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All EventRules are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This NotificationConfiguration is being deleted.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in this call. Defaults
    #   to 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The start token for paginated calls. Retrieved from the response of
    #   a previous ListEventRules call. Next token uses Base64 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationConfigurationsRequest AWS API Documentation
    #
    class ListNotificationConfigurationsRequest < Struct.new(
      :event_rule_source,
      :channel_arn,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @!attribute [rw] notification_configurations
    #   The NotificationConfigurations in the account.
    #   @return [Array<Types::NotificationConfigurationStructure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationConfigurationsResponse AWS API Documentation
    #
    class ListNotificationConfigurationsResponse < Struct.new(
      :next_token,
      :notification_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] start_time
    #   The earliest time of events to return from this call.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Latest time of events to return from this call.
    #   @return [Time]
    #
    # @!attribute [rw] locale
    #   The locale code of the language used for the retrieved
    #   NotificationEvent. The default locale is English `(en_US)`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] include_child_events
    #   Include aggregated child events in the result.
    #   @return [Boolean]
    #
    # @!attribute [rw] aggregate_notification_event_arn
    #   The Amazon Resource Name (ARN) of the aggregatedNotificationEventArn
    #   to match.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned in this call. Defaults
    #   to 20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The start token for paginated calls. Retrieved from the response of
    #   a previous ListEventRules call. Next token uses Base64 encoding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationEventsRequest AWS API Documentation
    #
    class ListNotificationEventsRequest < Struct.new(
      :start_time,
      :end_time,
      :locale,
      :source,
      :include_child_events,
      :aggregate_notification_event_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @!attribute [rw] notification_events
    #   The list of notification events.
    #   @return [Array<Types::NotificationEventOverview>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationEventsResponse AWS API Documentation
    #
    class ListNotificationEventsResponse < Struct.new(
      :next_token,
      :notification_events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing notification hubs
    #   from the start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationHubsRequest AWS API Documentation
    #
    class ListNotificationHubsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_hubs
    #   The NotificationHubs in the account.
    #   @return [Array<Types::NotificationHubOverview>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListNotificationHubsResponse AWS API Documentation
    #
    class ListNotificationHubsResponse < Struct.new(
      :notification_hubs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to use to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags for the specified ARN.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a media element.
    #
    # @!attribute [rw] media_id
    #   The unique ID for the media.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of media.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The url of the media.
    #   @return [String]
    #
    # @!attribute [rw] caption
    #   The caption of the media.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/MediaElement AWS API Documentation
    #
    class MediaElement < Struct.new(
      :media_id,
      :type,
      :url,
      :caption)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the components of a notification message.
    #
    # @!attribute [rw] headline
    #   A sentence long summary. For example, titles or an email subject
    #   line.
    #   @return [String]
    #
    # @!attribute [rw] paragraph_summary
    #   A paragraph long or multiple sentence summary. For example, AWS
    #   Chatbot notifications.
    #   @return [String]
    #
    # @!attribute [rw] complete_description
    #   A complete summary with all possible relevant information.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   A list of properties in key-value pairs. Pairs are shown in order of
    #   importance from most important to least important. Channels may
    #   limit the number of dimensions shown to the notification viewer.
    #
    #   <note markdown="1"> Included dimensions, keys, and values are subject to change.
    #
    #    </note>
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/MessageComponents AWS API Documentation
    #
    class MessageComponents < Struct.new(
      :headline,
      :paragraph_summary,
      :complete_description,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the headline message component.
    #
    # @!attribute [rw] headline
    #   A sentence long summary. For example, titles or an email subject
    #   line.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/MessageComponentsSummary AWS API Documentation
    #
    class MessageComponentsSummary < Struct.new(
      :headline)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the complete list of fields for a NotificationConfiguration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the NotificationConfiguration. Supports RFC 3986's
    #   unreserved characters.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this NotificationConfiguration.
    #
    #   The status should always be INACTIVE when part of the
    #   CreateNotificationConfiguration response.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All EventRules are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This NotificationConfiguration is being deleted. Only `GET`
    #         and `LIST` calls can be run.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the resource.
    #   @return [Time]
    #
    # @!attribute [rw] aggregation_duration
    #   The aggregation preference of the NotificationConfiguration.
    #
    #   * Values:
    #
    #     * `LONG`
    #
    #       * Aggregate notifications for long periods of time (12 hours).
    #
    #       ^
    #     * `SHORT`
    #
    #       * Aggregate notifications for short periods of time (5 minutes).
    #
    #       ^
    #     * `NONE`
    #
    #       * Don't aggregate notifications.
    #
    #         No delay in delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationConfigurationStructure AWS API Documentation
    #
    class NotificationConfigurationStructure < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :creation_time,
      :aggregation_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A NotificationEvent is a notification-focused representation of an
    # event. They contain semantic information used by Channels to create
    # end-user notifications.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the Notification Event.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for a NotificationEvent.
    #   @return [String]
    #
    # @!attribute [rw] source_event_metadata
    #   The source event metadata.
    #   @return [Types::SourceEventMetadata]
    #
    # @!attribute [rw] message_components
    #   Describes the components of a notification message.
    #   @return [Types::MessageComponents]
    #
    # @!attribute [rw] source_event_detail_url
    #   The source event URL.
    #   @return [String]
    #
    # @!attribute [rw] source_event_detail_url_display_text
    #   The detailed URL for the source event.
    #   @return [String]
    #
    # @!attribute [rw] notification_type
    #   The type of event causing the notification.
    #
    #   * Values:
    #
    #     * `ALERT`
    #
    #       * A notification about an event where something was triggered,
    #         initiated, reopened, deployed, or a threshold was breached.
    #
    #       ^
    #     * `WARNING`
    #
    #       * A notification about an event where an issue is about to
    #         arise. For example, something is approaching a threshold.
    #
    #       ^
    #     * `ANNOUNCEMENT`
    #
    #       * A notification about an important event. For example, a step
    #         in a workflow or escalation path or that a workflow was
    #         updated.
    #
    #       ^
    #     * `INFORMATIONAL`
    #
    #       * A notification about informational messages. For example,
    #         recommendations, service announcements, or reminders.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] event_status
    #   The assesed nature of the event.
    #
    #   * Values:
    #
    #     * `HEALTHY`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `UNHEALTHY`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] aggregation_event_type
    #   The NotificationConfiguration's aggregation type.
    #
    #   * Values:
    #
    #     * `AGGREGATE`
    #
    #       * The notification event is an aggregate notification. Aggregate
    #         notifications summarize grouped events over a specified time
    #         period.
    #
    #       ^
    #     * `CHILD`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       ^
    #     * `NONE`
    #
    #       * The notification isn't aggregated.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] aggregate_notification_event_arn
    #   If the value of aggregationEventType is not `NONE`, this is the
    #   Amazon Resource Event (ARN) of the parent aggregate notification.
    #
    #   This is omitted if notification isn't aggregated.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The notification event start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] text_parts
    #   A list of text values.
    #   @return [Hash<String,Types::TextPartValue>]
    #
    # @!attribute [rw] media
    #   A list of media elements.
    #   @return [Array<Types::MediaElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationEvent AWS API Documentation
    #
    class NotificationEvent < Struct.new(
      :schema_version,
      :id,
      :source_event_metadata,
      :message_components,
      :source_event_detail_url,
      :source_event_detail_url_display_text,
      :notification_type,
      :event_status,
      :aggregation_event_type,
      :aggregate_notification_event_arn,
      :start_time,
      :end_time,
      :text_parts,
      :media)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a short summary of a NotificationEvent. This is only used
    # when listing notification events.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] related_account
    #   The account name containing the NotificationHub.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the NotificationEvent.
    #   @return [Time]
    #
    # @!attribute [rw] notification_event
    #   Refers to a NotificationEventSummary object.
    #
    #   Similar in structure to `content` in the GetNotificationEvent
    #   response.
    #   @return [Types::NotificationEventSummary]
    #
    # @!attribute [rw] aggregation_event_type
    #   The NotificationConfiguration's aggregation type.
    #
    #   * Values:
    #
    #     * `AGGREGATE`
    #
    #       * The notification event is an aggregate notification. Aggregate
    #         notifications summarize grouped events over a specified time
    #         period.
    #
    #       ^
    #     * `CHILD`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       ^
    #     * `NONE`
    #
    #       * The notification isn't aggregated.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] aggregate_notification_event_arn
    #   The ARN of the aggregatedNotificationEventArn to match.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationEventOverview AWS API Documentation
    #
    class NotificationEventOverview < Struct.new(
      :arn,
      :notification_configuration_arn,
      :related_account,
      :creation_time,
      :notification_event,
      :aggregation_event_type,
      :aggregate_notification_event_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a short summary and metadata for a notification event.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the Notification Event.
    #   @return [String]
    #
    # @!attribute [rw] source_event_metadata
    #   The source event metadata.
    #   @return [Types::SourceEventMetadataSummary]
    #
    # @!attribute [rw] message_components
    #   The message components of a notification event.
    #   @return [Types::MessageComponentsSummary]
    #
    # @!attribute [rw] event_status
    #   The notification event status.
    #
    #   * Values:
    #
    #     * `HEALTHY`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `UNHEALTHY`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] notification_type
    #   The type of event causing the notification.
    #
    #   * Values:
    #
    #     * `ALERT`
    #
    #       * A notification about an event where something was triggered,
    #         initiated, reopened, deployed, or a threshold was breached.
    #
    #       ^
    #     * `WARNING`
    #
    #       * A notification about an event where an issue is about to
    #         arise. For example, something is approaching a threshold.
    #
    #       ^
    #     * `ANNOUNCEMENT`
    #
    #       * A notification about an important event. For example, a step
    #         in a workflow or escalation path or that a workflow was
    #         updated.
    #
    #       ^
    #     * `INFORMATIONAL`
    #
    #       * A notification about informational messages. For example,
    #         recommendations, service announcements, or reminders.
    #
    #       ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationEventSummary AWS API Documentation
    #
    class NotificationEventSummary < Struct.new(
      :schema_version,
      :source_event_metadata,
      :message_components,
      :event_status,
      :notification_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an overview of a NotificationHub.
    #
    # A NotificationHub is an account-level setting used to select the
    # Regions where you want to store, process and replicate your
    # notifications.
    #
    # @!attribute [rw] notification_hub_region
    #   The Region of the resource.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   The status summary of the resource.
    #   @return [Types::NotificationHubStatusSummary]
    #
    # @!attribute [rw] creation_time
    #   The date and time the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_activation_time
    #   The most recent time this NotificationHub had an ACTIVE status.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationHubOverview AWS API Documentation
    #
    class NotificationHubOverview < Struct.new(
      :notification_hub_region,
      :status_summary,
      :creation_time,
      :last_activation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # NotificationHub status information.
    #
    # @!attribute [rw] status
    #   Status information about the NotificationHub.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * Incoming NotificationEvents are replicated to this
    #         NotificationHub.
    #
    #       ^
    #     * `REGISTERING`
    #
    #       * The NotificationHub is initializing. A NotificationHub with
    #         this status can't be deregistered.
    #
    #       ^
    #     * `DEREGISTERING`
    #
    #       * The NotificationHub is being deleted. You can't register
    #         additional NotificationHubs in the same Region as a
    #         NotificationHub with this status.
    #
    #       ^
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   An Explanation for the current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/NotificationHubStatusSummary AWS API Documentation
    #
    class NotificationHubStatusSummary < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_hub_region
    #   The Region of the NotificationHub.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/RegisterNotificationHubRequest AWS API Documentation
    #
    class RegisterNotificationHubRequest < Struct.new(
      :notification_hub_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_hub_region
    #   The Region of the NotificationHub.
    #   @return [String]
    #
    # @!attribute [rw] status_summary
    #   NotificationHub status information.
    #   @return [Types::NotificationHubStatusSummary]
    #
    # @!attribute [rw] creation_time
    #   The date the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_activation_time
    #   The date the resource was last activated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/RegisterNotificationHubResponse AWS API Documentation
    #
    class RegisterNotificationHubResponse < Struct.new(
      :notification_hub_region,
      :status_summary,
      :creation_time,
      :last_activation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource affected by or closely linked to an event.
    #
    # @!attribute [rw] id
    #   The unique identifier for the resource.
    #
    #   At least one id or ARN is required.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource. At least one id or
    #   ARN is required.
    #   @return [String]
    #
    # @!attribute [rw] detail_url
    #   The URL to the resource's detail page. If a detail page URL is
    #   unavailable, it is the URL to an informational page that describes
    #   the resource's type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags assigned to a resource. A tag is a string-to-string
    #   map of key-value pairs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id,
      :arn,
      :detail_url,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that wasn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service quota exceeded in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the service quota in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_type,
      :resource_id,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata for a source event.
    #
    # For more information, see [Event structure reference][1] in the
    # *Amazon EventBridge User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-events-structure.html
    #
    # @!attribute [rw] event_type_version
    #   The version of the type of event.
    #   @return [String]
    #
    # @!attribute [rw] source_event_id
    #   The source event id.
    #   @return [String]
    #
    # @!attribute [rw] event_origin_region
    #   The Region the event originated from.
    #   @return [String]
    #
    # @!attribute [rw] related_account
    #   The Primary AWS account of Source Event
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The AWS servvice the event originates from. For example
    #   `aws.cloudwatch`.
    #   @return [String]
    #
    # @!attribute [rw] event_occurrence_time
    #   The date and time the source event occurred. This is based on the
    #   Source Event.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of event. For example, an AWS CloudWatch state change.
    #   @return [String]
    #
    # @!attribute [rw] related_resources
    #   A list of resources related to this NotificationEvent.
    #   @return [Array<Types::Resource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/SourceEventMetadata AWS API Documentation
    #
    class SourceEventMetadata < Struct.new(
      :event_type_version,
      :source_event_id,
      :event_origin_region,
      :related_account,
      :source,
      :event_occurrence_time,
      :event_type,
      :related_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about the event that caused the NotificationEvent.
    # For other specific values, see sourceEventMetadata.
    #
    # @!attribute [rw] event_origin_region
    #   The Region where the notification originated.
    #
    #   Unavailable for aggregated notifications.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The matched event source.
    #
    #   Must match one of the valid EventBridge sources. Only AWS service
    #   sourced events are supported. For example, `aws.ec2` and
    #   `aws.cloudwatch`. For more information, see [Event delivery from AWS
    #   services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type to match.
    #
    #   Must match one of the valid Amazon EventBridge event types. For
    #   example, EC2 Instance State-change Notification and AWS CloudWatch
    #   Alarm State Change. For more information, see [Event delivery from
    #   AWS services][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/SourceEventMetadataSummary AWS API Documentation
    #
    class SourceEventMetadataSummary < Struct.new(
      :event_origin_region,
      :source,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to use to tag a resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags assigned to a resource. A tag is a string-to-string
    #   map of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes text information objects containing fields that determine
    # how text part objects are composed.
    #
    # @!attribute [rw] type
    #   The type of text part. Determines the usage of all other fields and
    #   whether or not they're required.
    #   @return [String]
    #
    # @!attribute [rw] display_text
    #   A short single line description of the link. Must be hyperlinked
    #   with the URL itself.
    #
    #   Used for text parts with the type `URL`.
    #   @return [String]
    #
    # @!attribute [rw] text_by_locale
    #   A map of locales to the text in that locale.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] url
    #   The URL itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/TextPartValue AWS API Documentation
    #
    class TextPartValue < Struct.new(
      :type,
      :display_text,
      :text_by_locale,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Identifies the service being throttled.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Identifies the quota that is being throttled.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds a client should wait before retrying the
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to use to untag a resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to use to untag a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to use to update the EventRule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   An additional event pattern used to further filter the events this
    #   EventRule receives.
    #
    #   For more information, see [Amazon EventBridge event patterns][1] in
    #   the *Amazon EventBridge User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   A list of AWS Regions that sends events to this EventRule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateEventRuleRequest AWS API Documentation
    #
    class UpdateEventRuleRequest < Struct.new(
      :arn,
      :event_pattern,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) to use to update the EventRule.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration_arn
    #   The ARN of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] status_summary_by_region
    #   The status of the action by Region.
    #   @return [Hash<String,Types::EventRuleStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateEventRuleResponse AWS API Documentation
    #
    class UpdateEventRuleResponse < Struct.new(
      :arn,
      :notification_configuration_arn,
      :status_summary_by_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) used to update the
    #   NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the NotificationConfiguration.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_duration
    #   The status of this NotificationConfiguration.
    #
    #   The status should always be `INACTIVE` when part of the
    #   CreateNotificationConfiguration response.
    #
    #   * Values:
    #
    #     * `ACTIVE`
    #
    #       * All EventRules are `ACTIVE` and any call can be run.
    #
    #       ^
    #     * `PARTIALLY_ACTIVE`
    #
    #       * Some EventRules are `ACTIVE` and some are `INACTIVE`. Any call
    #         can be run.
    #
    #       * Any call can be run.
    #     * `INACTIVE`
    #
    #       * All EventRules are `INACTIVE` and any call can be run.
    #
    #       ^
    #     * `DELETING`
    #
    #       * This NotificationConfiguration is being deleted.
    #
    #       * Only `GET` and `LIST` calls can be run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateNotificationConfigurationRequest AWS API Documentation
    #
    class UpdateNotificationConfigurationRequest < Struct.new(
      :arn,
      :name,
      :description,
      :aggregation_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN used to update the NotificationConfiguration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/UpdateNotificationConfigurationResponse AWS API Documentation
    #
    class UpdateNotificationConfigurationResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the notification event fails validation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why your input is considered invalid.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of input fields that are invalid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/notifications-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

