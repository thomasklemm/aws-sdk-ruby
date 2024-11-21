# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for NotificationsContacts

  @notificationscontacts @smoke
  Scenario: ListEmailContactsSuccess
    Given I create a 'Aws::NotificationsContacts' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_email_contacts' with params:
      """
{"max_results":1}
      """
    Then I expect an error was not raised
