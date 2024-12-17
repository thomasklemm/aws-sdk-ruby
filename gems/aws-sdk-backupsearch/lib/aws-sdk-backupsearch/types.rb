# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupSearch
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   User does not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This filters by recovery points within the CreatedAfter and
    # CreatedBefore timestamps.
    #
    # @!attribute [rw] created_after
    #   This timestamp includes recovery points only created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   This timestamp includes recovery points only created before the
    #   specified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/BackupCreationTimeFilter AWS API Documentation
    #
    class BackupCreationTimeFilter < Struct.new(
      :created_after,
      :created_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs when a conflict with a previous successful
    # operation is detected. This generally occurs when the previous
    # operation did not have time to propagate to the host serving the
    # current request.
    #
    # A retry (with appropriate backoff logic) is the recommended response
    # to this exception.
    #
    # @!attribute [rw] message
    #   Updating or deleting a resource can cause an inconsistent state.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains information results retrieved from a search job that may
    # not have completed.
    #
    # @!attribute [rw] recovery_points_scanned_count
    #   This number is the sum of all backups that have been scanned so far
    #   during a search job.
    #   @return [Integer]
    #
    # @!attribute [rw] items_scanned_count
    #   This number is the sum of all items that have been scanned so far
    #   during a search job.
    #   @return [Integer]
    #
    # @!attribute [rw] items_matched_count
    #   This number is the sum of all items that match the item filters in a
    #   search job in progress.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/CurrentSearchProgress AWS API Documentation
    #
    class CurrentSearchProgress < Struct.new(
      :recovery_points_scanned_count,
      :items_scanned_count,
      :items_matched_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains arrays of objects, which may include CreationTimes time
    # condition objects, FilePaths string objects, LastModificationTimes
    # time condition objects,
    #
    # @!attribute [rw] file_paths
    #   You can include 1 to 10 values.
    #
    #   If one file path is included, the results will return only items
    #   that match the file path.
    #
    #   If more than one file path is included, the results will return all
    #   items that match any of the file paths.
    #   @return [Array<Types::StringCondition>]
    #
    # @!attribute [rw] sizes
    #   You can include 1 to 10 values.
    #
    #   If one is included, the results will return only items that match.
    #
    #   If more than one is included, the results will return all items that
    #   match any of the included values.
    #   @return [Array<Types::LongCondition>]
    #
    # @!attribute [rw] creation_times
    #   You can include 1 to 10 values.
    #
    #   If one is included, the results will return only items that match.
    #
    #   If more than one is included, the results will return all items that
    #   match any of the included values.
    #   @return [Array<Types::TimeCondition>]
    #
    # @!attribute [rw] last_modification_times
    #   You can include 1 to 10 values.
    #
    #   If one is included, the results will return only items that match.
    #
    #   If more than one is included, the results will return all items that
    #   match any of the included values.
    #   @return [Array<Types::TimeCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/EBSItemFilter AWS API Documentation
    #
    class EBSItemFilter < Struct.new(
      :file_paths,
      :sizes,
      :creation_times,
      :last_modification_times)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are the items returned in the results of a search of Amazon EBS
    # backup metadata.
    #
    # @!attribute [rw] backup_resource_arn
    #   These are one or more items in the results that match values for the
    #   Amazon Resource Name (ARN) of recovery points returned in a search
    #   of Amazon EBS backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   These are one or more items in the results that match values for the
    #   Amazon Resource Name (ARN) of source resources returned in a search
    #   of Amazon EBS backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault.
    #   @return [String]
    #
    # @!attribute [rw] file_system_identifier
    #   These are one or more items in the results that match values for
    #   file systems returned in a search of Amazon EBS backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   These are one or more items in the results that match values for
    #   file paths returned in a search of Amazon EBS backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] file_size
    #   These are one or more items in the results that match values for
    #   file sizes returned in a search of Amazon EBS backup metadata.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   These are one or more items in the results that match values for
    #   creation times returned in a search of Amazon EBS backup metadata.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   These are one or more items in the results that match values for
    #   Last Modified Time returned in a search of Amazon EBS backup
    #   metadata.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/EBSResultItem AWS API Documentation
    #
    class EBSResultItem < Struct.new(
      :backup_resource_arn,
      :source_resource_arn,
      :backup_vault_name,
      :file_system_identifier,
      :file_path,
      :file_size,
      :creation_time,
      :last_modified_time)
      SENSITIVE = [:file_path]
      include Aws::Structure
    end

    # This is the summary of an export job.
    #
    # @!attribute [rw] export_job_identifier
    #   This is the unique string that identifies a specific export job.
    #   @return [String]
    #
    # @!attribute [rw] export_job_arn
    #   This is the unique ARN (Amazon Resource Name) that belongs to the
    #   new export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the export job is one of the following:
    #
    #   `CREATED`; `RUNNING`; `FAILED`; or `COMPLETED`.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   This is a timestamp of the time the export job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   This is a timestamp of the time the export job compeleted.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   A status message is a string that is returned for an export job.
    #
    #   A status message is included for any status other than `COMPLETED`
    #   without issues.
    #   @return [String]
    #
    # @!attribute [rw] search_job_arn
    #   The unique string that identifies the Amazon Resource Name (ARN) of
    #   the specified search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ExportJobSummary AWS API Documentation
    #
    class ExportJobSummary < Struct.new(
      :export_job_identifier,
      :export_job_arn,
      :status,
      :creation_time,
      :completion_time,
      :status_message,
      :search_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains the export specification object.
    #
    # @note ExportSpecification is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ExportSpecification is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExportSpecification corresponding to the set member.
    #
    # @!attribute [rw] s3_export_specification
    #   This specifies the destination Amazon S3 bucket for the export job.
    #   And, if included, it also specifies the destination prefix.
    #   @return [Types::S3ExportSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ExportSpecification AWS API Documentation
    #
    class ExportSpecification < Struct.new(
      :s3_export_specification,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3ExportSpecification < ExportSpecification; end
      class Unknown < ExportSpecification; end
    end

    # @!attribute [rw] search_job_identifier
    #   Required unique string that specifies the search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchJobInput AWS API Documentation
    #
    class GetSearchJobInput < Struct.new(
      :search_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Returned name of the specified search job.
    #   @return [String]
    #
    # @!attribute [rw] search_scope_summary
    #   Returned summary of the specified search job scope, including:
    #
    #   * TotalBackupsToScanCount, the number of recovery points returned by
    #     the search.
    #
    #   * TotalItemsToScanCount, the number of items returned by the search.
    #   @return [Types::SearchScopeSummary]
    #
    # @!attribute [rw] current_search_progress
    #   Returns numbers representing BackupsScannedCount, ItemsScanned, and
    #   ItemsMatched.
    #   @return [Types::CurrentSearchProgress]
    #
    # @!attribute [rw] status_message
    #   A status message will be returned for either a earch job with a
    #   status of `ERRORED` or a status of `COMPLETED` jobs with issues.
    #
    #   For example, a message may say that a search contained recovery
    #   points unable to be scanned because of a permissions issue.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The encryption key for the specified search job.
    #
    #   Example:
    #   `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #   @return [String]
    #
    # @!attribute [rw] completion_time
    #   The date and time that a search job completed, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CompletionTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the specified search job.
    #
    #   A search job may have one of the following statuses: `RUNNING`;
    #   `COMPLETED`; `STOPPED`; `FAILED`; `TIMED_OUT`; or `EXPIRED` .
    #   @return [String]
    #
    # @!attribute [rw] search_scope
    #   The search scope is all backup properties input into a search.
    #   @return [Types::SearchScope]
    #
    # @!attribute [rw] item_filters
    #   Item Filters represent all input item properties specified when the
    #   search was created.
    #   @return [Types::ItemFilters]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a search job was created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CompletionTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] search_job_identifier
    #   The unique string that identifies the specified search job.
    #   @return [String]
    #
    # @!attribute [rw] search_job_arn
    #   The unique string that identifies the Amazon Resource Name (ARN) of
    #   the specified search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchJobOutput AWS API Documentation
    #
    class GetSearchJobOutput < Struct.new(
      :name,
      :search_scope_summary,
      :current_search_progress,
      :status_message,
      :encryption_key_arn,
      :completion_time,
      :status,
      :search_scope,
      :item_filters,
      :creation_time,
      :search_job_identifier,
      :search_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_job_identifier
    #   This is the unique string that identifies a specific export job.
    #
    #   Required for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchResultExportJobInput AWS API Documentation
    #
    class GetSearchResultExportJobInput < Struct.new(
      :export_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_job_identifier
    #   This is the unique string that identifies the specified export job.
    #   @return [String]
    #
    # @!attribute [rw] export_job_arn
    #   The unique Amazon Resource Name (ARN) that uniquely identifies the
    #   export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the current status of the export job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that an export job was created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time that an export job completed, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CreationTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   A status message is a string that is returned for search job with a
    #   status of `FAILED`, along with steps to remedy and retry the
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] export_specification
    #   The export specification consists of the destination S3 bucket to
    #   which the search results were exported, along with the destination
    #   prefix.
    #   @return [Types::ExportSpecification]
    #
    # @!attribute [rw] search_job_arn
    #   The unique string that identifies the Amazon Resource Name (ARN) of
    #   the specified search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchResultExportJobOutput AWS API Documentation
    #
    class GetSearchResultExportJobOutput < Struct.new(
      :export_job_identifier,
      :export_job_arn,
      :status,
      :creation_time,
      :completion_time,
      :status_message,
      :export_specification,
      :search_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   Unexpected error during processing of request.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Retry the call after number of seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Item Filters represent all input item properties specified when the
    # search was created.
    #
    # Contains either EBSItemFilters or S3ItemFilters
    #
    # @!attribute [rw] s3_item_filters
    #   This array can contain CreationTimes, ETags, ObjectKeys, Sizes, or
    #   VersionIds objects.
    #   @return [Array<Types::S3ItemFilter>]
    #
    # @!attribute [rw] ebs_item_filters
    #   This array can contain CreationTimes, FilePaths,
    #   LastModificationTimes, or Sizes objects.
    #   @return [Array<Types::EBSItemFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ItemFilters AWS API Documentation
    #
    class ItemFilters < Struct.new(
      :s3_item_filters,
      :ebs_item_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned backups included
    #   in a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobBackupsInput AWS API Documentation
    #
    class ListSearchJobBackupsInput < Struct.new(
      :search_job_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The recovery points returned the results of a search job
    #   @return [Array<Types::SearchJobBackupsResult>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned backups included
    #   in a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobBackupsOutput AWS API Documentation
    #
    class ListSearchJobBackupsOutput < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned search job
    #   results.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   search job results, `NextToken` allows you to return more items in
    #   your list starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobResultsInput AWS API Documentation
    #
    class ListSearchJobResultsInput < Struct.new(
      :search_job_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results consist of either EBSResultItem or S3ResultItem.
    #   @return [Array<Types::ResultItem>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of search job results.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobResultsOutput AWS API Documentation
    #
    class ListSearchJobResultsOutput < Struct.new(
      :results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] by_status
    #   Include this parameter to filter list by search job status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned search jobs.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobsInput AWS API Documentation
    #
    class ListSearchJobsInput < Struct.new(
      :by_status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_jobs
    #   The search jobs among the list, with details of the returned search
    #   jobs.
    #   @return [Array<Types::SearchJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned backups included
    #   in a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobsOutput AWS API Documentation
    #
    class ListSearchJobsOutput < Struct.new(
      :search_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The search jobs to be included in the export job can be filtered by
    #   including this parameter.
    #   @return [String]
    #
    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned backups included
    #   in a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of resource list items to be returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchResultExportJobsInput AWS API Documentation
    #
    class ListSearchResultExportJobsInput < Struct.new(
      :status,
      :search_job_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_jobs
    #   The operation returns the included export jobs.
    #   @return [Array<Types::ExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned backups included
    #   in a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchResultExportJobsOutput AWS API Documentation
    #
    class ListSearchResultExportJobsOutput < Struct.new(
      :export_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   resource.&gt;
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags returned by the operation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The long condition contains a `Value` and can optionally contain an
    # `Operator`.
    #
    # @!attribute [rw] value
    #   The value of an item included in one of the search item filters.
    #   @return [Integer]
    #
    # @!attribute [rw] operator
    #   A string that defines what values will be returned.
    #
    #   If this is included, avoid combinations of operators that will
    #   return all possible values. For example, including both `EQUALS_TO`
    #   and `NOT_EQUALS_TO` with a value of `4` will return all values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/LongCondition AWS API Documentation
    #
    class LongCondition < Struct.new(
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource was not found for this request.
    #
    # Confirm the resource information, such as the ARN or type is correct
    # and exists, then retry the request.
    #
    # @!attribute [rw] message
    #   Request references a resource which does not exist.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Hypothetical identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Hypothetical type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is an object representing the item returned in the results of a
    # search for a specific resource type.
    #
    # @note ResultItem is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResultItem corresponding to the set member.
    #
    # @!attribute [rw] s3_result_item
    #   These are items returned in the search results of an Amazon S3
    #   search.
    #   @return [Types::S3ResultItem]
    #
    # @!attribute [rw] ebs_result_item
    #   These are items returned in the search results of an Amazon EBS
    #   search.
    #   @return [Types::EBSResultItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ResultItem AWS API Documentation
    #
    class ResultItem < Struct.new(
      :s3_result_item,
      :ebs_result_item,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3ResultItem < ResultItem; end
      class EbsResultItem < ResultItem; end
      class Unknown < ResultItem; end
    end

    # This specification contains a required string of the destination
    # bucket; optionally, you can include the destination prefix.
    #
    # @!attribute [rw] destination_bucket
    #   This specifies the destination Amazon S3 bucket for the export job.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix
    #   This specifies the prefix for the destination Amazon S3 bucket for
    #   the export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/S3ExportSpecification AWS API Documentation
    #
    class S3ExportSpecification < Struct.new(
      :destination_bucket,
      :destination_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains arrays of objects, which may include ObjectKeys, Sizes,
    # CreationTimes, VersionIds, and/or Etags.
    #
    # @!attribute [rw] object_keys
    #   You can include 1 to 10 values.
    #
    #   If one value is included, the results will return only items that
    #   match the value.
    #
    #   If more than one value is included, the results will return all
    #   items that match any of the values.
    #   @return [Array<Types::StringCondition>]
    #
    # @!attribute [rw] sizes
    #   You can include 1 to 10 values.
    #
    #   If one value is included, the results will return only items that
    #   match the value.
    #
    #   If more than one value is included, the results will return all
    #   items that match any of the values.
    #   @return [Array<Types::LongCondition>]
    #
    # @!attribute [rw] creation_times
    #   You can include 1 to 10 values.
    #
    #   If one value is included, the results will return only items that
    #   match the value.
    #
    #   If more than one value is included, the results will return all
    #   items that match any of the values.
    #   @return [Array<Types::TimeCondition>]
    #
    # @!attribute [rw] version_ids
    #   You can include 1 to 10 values.
    #
    #   If one value is included, the results will return only items that
    #   match the value.
    #
    #   If more than one value is included, the results will return all
    #   items that match any of the values.
    #   @return [Array<Types::StringCondition>]
    #
    # @!attribute [rw] etags
    #   You can include 1 to 10 values.
    #
    #   If one value is included, the results will return only items that
    #   match the value.
    #
    #   If more than one value is included, the results will return all
    #   items that match any of the values.
    #   @return [Array<Types::StringCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/S3ItemFilter AWS API Documentation
    #
    class S3ItemFilter < Struct.new(
      :object_keys,
      :sizes,
      :creation_times,
      :version_ids,
      :etags)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are the items returned in the results of a search of Amazon S3
    # backup metadata.
    #
    # @!attribute [rw] backup_resource_arn
    #   These are items in the returned results that match recovery point
    #   Amazon Resource Names (ARN) input during a search of Amazon S3
    #   backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   These are items in the returned results that match source Amazon
    #   Resource Names (ARN) input during a search of Amazon S3 backup
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] backup_vault_name
    #   The name of the backup vault.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   This is one or more items returned in the results of a search of
    #   Amazon S3 backup metadata that match the values input for object
    #   key.
    #   @return [String]
    #
    # @!attribute [rw] object_size
    #   These are items in the returned results that match values for object
    #   size(s) input during a search of Amazon S3 backup metadata.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   These are one or more items in the returned results that match
    #   values for item creation time input during a search of Amazon S3
    #   backup metadata.
    #   @return [Time]
    #
    # @!attribute [rw] etag
    #   These are one or more items in the returned results that match
    #   values for ETags input during a search of Amazon S3 backup metadata.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   These are one or more items in the returned results that match
    #   values for version IDs input during a search of Amazon S3 backup
    #   metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/S3ResultItem AWS API Documentation
    #
    class S3ResultItem < Struct.new(
      :backup_resource_arn,
      :source_resource_arn,
      :backup_vault_name,
      :object_key,
      :object_size,
      :creation_time,
      :etag,
      :version_id)
      SENSITIVE = [:object_key]
      include Aws::Structure
    end

    # This contains the information about recovery points returned in
    # results of a search job.
    #
    # @!attribute [rw] status
    #   This is the status of the search job backup result.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   This is the status message included with the results.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   This is the resource type of the search.
    #   @return [String]
    #
    # @!attribute [rw] backup_resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the backup
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] source_resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the source
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] index_creation_time
    #   This is the creation time of the backup index.
    #   @return [Time]
    #
    # @!attribute [rw] backup_creation_time
    #   This is the creation time of the backup (recovery point).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/SearchJobBackupsResult AWS API Documentation
    #
    class SearchJobBackupsResult < Struct.new(
      :status,
      :status_message,
      :resource_type,
      :backup_resource_arn,
      :source_resource_arn,
      :index_creation_time,
      :backup_creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is information pertaining to a search job.
    #
    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @!attribute [rw] search_job_arn
    #   The unique string that identifies the Amazon Resource Name (ARN) of
    #   the specified search job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This is the name of the search job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This is the status of the search job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   This is the creation time of the search job.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   This is the completion time of the search job.
    #   @return [Time]
    #
    # @!attribute [rw] search_scope_summary
    #   Returned summary of the specified search job scope, including:
    #
    #   * TotalBackupsToScanCount, the number of recovery points returned by
    #     the search.
    #
    #   * TotalItemsToScanCount, the number of items returned by the search.
    #   @return [Types::SearchScopeSummary]
    #
    # @!attribute [rw] status_message
    #   A status message will be returned for either a earch job with a
    #   status of `ERRORED` or a status of `COMPLETED` jobs with issues.
    #
    #   For example, a message may say that a search contained recovery
    #   points unable to be scanned because of a permissions issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/SearchJobSummary AWS API Documentation
    #
    class SearchJobSummary < Struct.new(
      :search_job_identifier,
      :search_job_arn,
      :name,
      :status,
      :creation_time,
      :completion_time,
      :search_scope_summary,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The search scope is all backup properties input into a search.
    #
    # @!attribute [rw] backup_resource_types
    #   The resource types included in a search.
    #
    #   Eligible resource types include S3 and EBS.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_resource_creation_time
    #   This is the time a backup resource was created.
    #   @return [Types::BackupCreationTimeFilter]
    #
    # @!attribute [rw] source_resource_arns
    #   The Amazon Resource Name (ARN) that uniquely identifies the source
    #   resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_resource_arns
    #   The Amazon Resource Name (ARN) that uniquely identifies the backup
    #   resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_resource_tags
    #   These are one or more tags on the backup (recovery point).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/SearchScope AWS API Documentation
    #
    class SearchScope < Struct.new(
      :backup_resource_types,
      :backup_resource_creation_time,
      :source_resource_arns,
      :backup_resource_arns,
      :backup_resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the specified search job scope, including:
    #
    # * TotalBackupsToScanCount, the number of recovery points returned by
    #   the search.
    #
    # * TotalItemsToScanCount, the number of items returned by the search.
    #
    # @!attribute [rw] total_recovery_points_to_scan_count
    #   This is the count of the total number of backups that will be
    #   scanned in a search.
    #   @return [Integer]
    #
    # @!attribute [rw] total_items_to_scan_count
    #   This is the count of the total number of items that will be scanned
    #   in a search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/SearchScopeSummary AWS API Documentation
    #
    class SearchScopeSummary < Struct.new(
      :total_recovery_points_to_scan_count,
      :total_items_to_scan_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request denied due to exceeding the quota limits permitted.
    #
    # @!attribute [rw] message
    #   This request was not successful due to a service quota exceeding
    #   limits.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   This is the code unique to the originating service with the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   This is the code specific to the quota type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags returned by the operation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   Include alphanumeric characters to create a name for this search
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The encryption key for the specified search job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Include this parameter to allow multiple identical calls for
    #   idempotency.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it is completed. After this time, any request with the same
    #   token is treated as a new request.
    #   @return [String]
    #
    # @!attribute [rw] search_scope
    #   This object can contain BackupResourceTypes, BackupResourceArns,
    #   BackupResourceCreationTime, BackupResourceTags, and
    #   SourceResourceArns to filter the recovery points returned by the
    #   search job.
    #   @return [Types::SearchScope]
    #
    # @!attribute [rw] item_filters
    #   Item Filters represent all input item properties specified when the
    #   search was created.
    #
    #   Contains either EBSItemFilters or S3ItemFilters
    #   @return [Types::ItemFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchJobInput AWS API Documentation
    #
    class StartSearchJobInput < Struct.new(
      :tags,
      :name,
      :encryption_key_arn,
      :client_token,
      :search_scope,
      :item_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_job_arn
    #   The unique string that identifies the Amazon Resource Name (ARN) of
    #   the specified search job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a job was created, in Unix format and
    #   Coordinated Universal Time (UTC). The value of `CompletionTime` is
    #   accurate to milliseconds. For example, the value 1516925490.087
    #   represents Friday, January 26, 2018 12:11:30.087 AM.
    #   @return [Time]
    #
    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchJobOutput AWS API Documentation
    #
    class StartSearchJobOutput < Struct.new(
      :search_job_arn,
      :creation_time,
      :search_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @!attribute [rw] export_specification
    #   This specification contains a required string of the destination
    #   bucket; optionally, you can include the destination prefix.
    #   @return [Types::ExportSpecification]
    #
    # @!attribute [rw] client_token
    #   Include this parameter to allow multiple identical calls for
    #   idempotency.
    #
    #   A client token is valid for 8 hours after the first request that
    #   uses it is completed. After this time, any request with the same
    #   token is treated as a new request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following
    #   characters: + - = . \_ : /.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   This parameter specifies the role ARN used to start the search
    #   results export jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchResultExportJobInput AWS API Documentation
    #
    class StartSearchResultExportJobInput < Struct.new(
      :search_job_identifier,
      :export_specification,
      :client_token,
      :tags,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_job_arn
    #   This is the unique ARN (Amazon Resource Name) that belongs to the
    #   new export job.
    #   @return [String]
    #
    # @!attribute [rw] export_job_identifier
    #   This is the unique identifier that specifies the new export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchResultExportJobOutput AWS API Documentation
    #
    class StartSearchResultExportJobOutput < Struct.new(
      :export_job_arn,
      :export_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] search_job_identifier
    #   The unique string that specifies the search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StopSearchJobInput AWS API Documentation
    #
    class StopSearchJobInput < Struct.new(
      :search_job_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StopSearchJobOutput AWS API Documentation
    #
    class StopSearchJobOutput < Aws::EmptyStructure; end

    # This contains the value of the string and can contain one or more
    # operators.
    #
    # @!attribute [rw] value
    #   The value of the string.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   A string that defines what values will be returned.
    #
    #   If this is included, avoid combinations of operators that will
    #   return all possible values. For example, including both `EQUALS_TO`
    #   and `NOT_EQUALS_TO` with a value of `4` will return all values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StringCondition AWS API Documentation
    #
    class StringCondition < Struct.new(
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   resource.
    #
    #   This is the resource that will have the indicated tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Required tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following
    #   characters: + - = . \_ : /.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Request was unsuccessful due to request throttling.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   This is the code unique to the originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   This is the code unique to the originating service with the quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Retry the call after number of seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time condition denotes a creation time, last modification time, or
    # other time.
    #
    # @!attribute [rw] value
    #   This is the timestamp value of the time condition.
    #   @return [Time]
    #
    # @!attribute [rw] operator
    #   A string that defines what values will be returned.
    #
    #   If this is included, avoid combinations of operators that will
    #   return all possible values. For example, including both `EQUALS_TO`
    #   and `NOT_EQUALS_TO` with a value of `4` will return all values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/TimeCondition AWS API Documentation
    #
    class TimeCondition < Struct.new(
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the resource
    #   where you want to remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   This required parameter contains the tag keys you want to remove
    #   from the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by a service.
    #
    # @!attribute [rw] message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

