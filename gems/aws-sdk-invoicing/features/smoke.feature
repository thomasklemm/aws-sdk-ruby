# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for Invoicing

  @invoicing @smoke
  Scenario: ListInvoiceUnitsSuccess
    Given I create a 'Aws::Invoicing' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_invoice_units' with params:
      """
{}
      """
    Then I expect an error was not raised
