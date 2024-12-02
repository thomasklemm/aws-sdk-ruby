# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SecurityIR

  @securityir @smoke
  Scenario: GetMembershipFailure
    Given I create a 'Aws::SecurityIR' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_membership' with params:
      """
{"membership_id":"m-aaaaaaaaaaaaaaaaaaaa"}
      """
    Then I expect a 'Aws::SecurityIR::Errors::AccessDeniedException' was raised
