# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for BCMPricingCalculator

  @bcmpricingcalculator @smoke
  Scenario: GetWorkloadEstimate
    Given I create a 'Aws::BCMPricingCalculator' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_workload_estimate' with params:
      """
{"identifier":"9bb1df8b-5978-4fcb-9c5c-99f5b2670076"}
      """
    Then I expect an error was raised
