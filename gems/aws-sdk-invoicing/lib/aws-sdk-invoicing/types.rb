# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Invoicing
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   Retrieves the corresponding invoice profile data for these account
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BatchGetInvoiceProfileRequest AWS API Documentation
    #
    class BatchGetInvoiceProfileRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profiles
    #   A list of invoice profiles corresponding to the requested accounts.
    #   @return [Array<Types::InvoiceProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BatchGetInvoiceProfileResponse AWS API Documentation
    #
    class BatchGetInvoiceProfileResponse < Struct.new(
      :profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name of the invoice unit that is shown on the generated
    #   invoice. This can't be changed once it is set. To change this name,
    #   you must delete the invoice unit recreate.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The Amazon Web Services account ID chosen to be the receiver of an
    #   invoice unit. All invoices generated for that invoice unit will be
    #   sent to this account ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The invoice unit's description. This can be changed at a later
    #   time.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   The `InvoiceUnitRule` object used to create invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] resource_tags
    #   The tag structure that contains a tag key and value.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateInvoiceUnitRequest AWS API Documentation
    #
    class CreateInvoiceUnitRequest < Struct.new(
      :name,
      :invoice_receiver,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateInvoiceUnitResponse AWS API Documentation
    #
    class CreateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteInvoiceUnitRequest AWS API Documentation
    #
    class DeleteInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteInvoiceUnitResponse AWS API Documentation
    #
    class DeleteInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional input to the list API. If multiple filters are specified,
    # the returned list will be a configuration that match all of the
    # provided filters. Supported filter types are `InvoiceReceivers`,
    # `Names`, and `Accounts`.
    #
    # @!attribute [rw] names
    #   An optional input to the list API. You can specify a list of invoice
    #   unit names inside filters to return invoice units that match only
    #   the specified invoice unit names. If multiple names are provided,
    #   the result is an `OR` condition (match any) of the specified invoice
    #   unit names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] invoice_receivers
    #   You can specify a list of Amazon Web Services account IDs inside
    #   filters to return invoice units that match only the specified
    #   accounts. If multiple accounts are provided, the result is an `OR`
    #   condition (match any) of the specified accounts. This filter only
    #   matches the specified accounts on the invoice receivers of the
    #   invoice units.
    #   @return [Array<String>]
    #
    # @!attribute [rw] accounts
    #   You can specify a list of Amazon Web Services account IDs inside
    #   filters to return invoice units that match only the specified
    #   accounts. If multiple accounts are provided, the result is an `OR`
    #   condition (match any) of the specified accounts. The specified
    #   account IDs are matched with either the receiver or the linked
    #   accounts in the rules.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :names,
      :invoice_receivers,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set
    #   to before it was deleted. If an `AsOf` is not provided, the default
    #   value is the current time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoiceUnitRequest AWS API Documentation
    #
    class GetInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :as_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The Amazon Web Services account ID chosen to be the receiver of an
    #   invoice unit. All invoices generated for that invoice unit will be
    #   sent to this account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of the invoice unit that is shown on the generated
    #   invoice.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   This is used to categorize the invoice unit. Values are Amazon Web
    #   Services account IDs. Currently, the only supported rule is
    #   `LINKED_ACCOUNT`.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] last_modified
    #   The most recent date the invoice unit response was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoiceUnitResponse AWS API Documentation
    #
    class GetInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # The processing request failed because of an unknown error, exception,
    # or failure.
    #
    # @!attribute [rw] retry_after_seconds
    #   The processing request failed because of an unknown error,
    #   exception, or failure.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains high-level information about the invoice receiver.
    #
    # @!attribute [rw] account_id
    #   The account ID the invoice profile is generated for.
    #   @return [String]
    #
    # @!attribute [rw] receiver_name
    #   The name of the person receiving the invoice profile.
    #   @return [String]
    #
    # @!attribute [rw] receiver_address
    #   The address of the receiver that will be printed on the invoice.
    #   @return [Types::ReceiverAddress]
    #
    # @!attribute [rw] receiver_email
    #   The email address for the invoice profile receiver.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   This specifies the issuing entity of the invoice.
    #   @return [String]
    #
    # @!attribute [rw] tax_registration_number
    #   Your Tax Registration Number (TRN) information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceProfile AWS API Documentation
    #
    class InvoiceProfile < Struct.new(
      :account_id,
      :receiver_name,
      :receiver_address,
      :receiver_email,
      :issuer,
      :tax_registration_number)
      SENSITIVE = [:receiver_address, :receiver_email, :tax_registration_number]
      include Aws::Structure
    end

    # An invoice unit is a set of mutually exclusive accounts that
    # correspond to your business entity. Invoice units allow you separate
    # Amazon Web Services account costs and configures your invoice for each
    # business entity going forward.
    #
    # @!attribute [rw] invoice_unit_arn
    #   ARN to identify an invoice unit. This information can't be modified
    #   or deleted.
    #   @return [String]
    #
    # @!attribute [rw] invoice_receiver
    #   The account that receives invoices related to the invoice unit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name that is distinctive within your Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit. This information
    #   can't be modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   An `InvoiceUnitRule` object used the categorize invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @!attribute [rw] last_modified
    #   The last time the invoice unit was updated. This is important to
    #   determine the version of invoice unit configuration used to create
    #   the invoices. Any invoice created after this modified time will use
    #   this invoice unit configuration.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceUnit AWS API Documentation
    #
    class InvoiceUnit < Struct.new(
      :invoice_unit_arn,
      :invoice_receiver,
      :name,
      :description,
      :tax_inheritance_disabled,
      :rule,
      :last_modified)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is used to categorize the invoice unit. Values are Amazon Web
    # Services account IDs. Currently, the only supported rule is
    # `LINKED_ACCOUNT`.
    #
    # @!attribute [rw] linked_accounts
    #   The list of `LINKED_ACCOUNT` IDs where charges are included within
    #   the invoice unit.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/InvoiceUnitRule AWS API Documentation
    #
    class InvoiceUnitRule < Struct.new(
      :linked_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An optional input to the list API. If multiple filters are
    #   specified, the returned list will be a configuration that match all
    #   of the provided filters. Supported filter types are
    #   `InvoiceReceivers`, `Names`, and `Accounts`.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] next_token
    #   The next token used to indicate where the returned list should start
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of invoice units that can be returned.
    #   @return [Integer]
    #
    # @!attribute [rw] as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set
    #   to before it was deleted. If an `AsOf` is not provided, the default
    #   value is the current time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceUnitsRequest AWS API Documentation
    #
    class ListInvoiceUnitsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results,
      :as_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_units
    #   An invoice unit is a set of mutually exclusive accounts that
    #   correspond to your business entity.
    #   @return [Array<Types::InvoiceUnit>]
    #
    # @!attribute [rw] next_token
    #   The next token used to indicate where the returned list should start
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceUnitsResponse AWS API Documentation
    #
    class ListInvoiceUnitsResponse < Struct.new(
      :invoice_units,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of tags to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_tags
    #   Adds a tag to a resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the address associated with the receiver.
    #
    # @!attribute [rw] address_line_1
    #   The first line of the address.
    #   @return [String]
    #
    # @!attribute [rw] address_line_2
    #   The second line of the address, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] address_line_3
    #   The third line of the address, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] district_or_county
    #   The district or country the address is located in.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city that the address is in.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   The state, region, or province the address is located.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The country code for the country the address is in.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   A unique company name.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code associated with the address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ReceiverAddress AWS API Documentation
    #
    class ReceiverAddress < Struct.new(
      :address_line_1,
      :address_line_2,
      :address_line_3,
      :district_or_county,
      :city,
      :state_or_region,
      :country_code,
      :company_name,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The resource could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @!attribute [rw] key
    #   The object key of your of your resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The specific value of the resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current Amazon Web Services account limits. The error
    # message describes the limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tags.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Adds a tag to a resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to untag.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   Keys for the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The assigned description for an invoice unit. This information
    #   can't be modified or deleted.
    #   @return [String]
    #
    # @!attribute [rw] tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rule
    #   The `InvoiceUnitRule` object used to update invoice units.
    #   @return [Types::InvoiceUnitRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateInvoiceUnitRequest AWS API Documentation
    #
    class UpdateInvoiceUnitRequest < Struct.new(
      :invoice_unit_arn,
      :description,
      :tax_inheritance_disabled,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateInvoiceUnitResponse AWS API Documentation
    #
    class UpdateInvoiceUnitResponse < Struct.new(
      :invoice_unit_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   You don't have sufficient access to perform this action.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :resource_name,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] name
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

