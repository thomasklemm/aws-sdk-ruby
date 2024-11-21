# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTJobsDataPlane
  module Types

    # The certificate is invalid.
    #
    # @!attribute [rw] message
    #   Additional information about the exception.
    #   @return [String]
    #
    class CertificateValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of values used to describe a specific command parameter.
    #
    # @!attribute [rw] s
    #   An attribute of type String. For example:
    #
    #   `"S": "Hello"`
    #   @return [String]
    #
    # @!attribute [rw] b
    #   An attribute of type Boolean. For example:
    #
    #   `"BOOL": true`
    #   @return [Boolean]
    #
    # @!attribute [rw] i
    #   An attribute of type Integer (Thirty-Two Bits).
    #   @return [Integer]
    #
    # @!attribute [rw] l
    #   An attribute of type Long.
    #   @return [Integer]
    #
    # @!attribute [rw] d
    #   An attribute of type Double (Sixty-Four Bits).
    #   @return [Float]
    #
    # @!attribute [rw] bin
    #   An attribute of type Binary.
    #   @return [String]
    #
    # @!attribute [rw] ul
    #   An attribute of type Unsigned Long.
    #   @return [String]
    #
    class CommandParameterValue < Struct.new(
      :s,
      :b,
      :i,
      :l,
      :d,
      :bin,
      :ul)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict has occurred when performing the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   A conflict occurred while performing the API request on the resource
    #   ID.
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The thing name associated with the device the job execution is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] include_job_document
    #   Optional. Unless set to false, the response contains the job
    #   document. The default is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device. If not specified, the latest job execution is
    #   returned.
    #   @return [Integer]
    #
    class DescribeJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :include_job_document,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   Contains data about a job execution.
    #   @return [Types::JobExecution]
    #
    class DescribeJobExecutionResponse < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_name
    #   The name of the thing that is executing the job.
    #   @return [String]
    #
    class GetPendingJobExecutionsRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] in_progress_jobs
    #   A list of JobExecutionSummary objects with status IN\_PROGRESS.
    #   @return [Array<Types::JobExecutionSummary>]
    #
    # @!attribute [rw] queued_jobs
    #   A list of JobExecutionSummary objects with status QUEUED.
    #   @return [Array<Types::JobExecutionSummary>]
    #
    class GetPendingJobExecutionsResponse < Struct.new(
      :in_progress_jobs,
      :queued_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred when performing the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contents of the request were invalid.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An update attempted to change the job execution to a state that is
    # invalid because of the job execution's current state (for example, an
    # attempt to change a request in state SUCCESS to state IN\_PROGRESS).
    # In this case, the body of the error message also contains the
    # executionState field.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidStateTransitionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data about a job execution.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing that is executing the job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the job execution. Can be one of: "QUEUED",
    #   "IN\_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #   "TIMED\_OUT", "REJECTED", or "REMOVED".
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution.
    #
    #   The maximum length of the value in the name/value pair is 1,024
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] queued_at
    #   The time, in seconds since the epoch, when the job execution was
    #   enqueued.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The time, in seconds since the epoch, when the job execution was
    #   started.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job execution was
    #   last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_seconds_before_timed_out
    #   The estimated number of seconds that remain before the job execution
    #   status will be changed to `TIMED_OUT`. The actual job execution
    #   timeout can occur up to 60 seconds later than the estimated
    #   duration.
    #   @return [Integer]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time they are updated by a device.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_number
    #   A number that identifies a particular job execution on a particular
    #   device. It can be used later in commands that return or update job
    #   execution information.
    #   @return [Integer]
    #
    # @!attribute [rw] job_document
    #   The content of the job document.
    #   @return [String]
    #
    class JobExecution < Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :queued_at,
      :started_at,
      :last_updated_at,
      :approximate_seconds_before_timed_out,
      :version_number,
      :execution_number,
      :job_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains data about the state of a job execution.
    #
    # @!attribute [rw] status
    #   The status of the job execution. Can be one of: "QUEUED",
    #   "IN\_PROGRESS", "FAILED", "SUCCESS", "CANCELED",
    #   "TIMED\_OUT", "REJECTED", or "REMOVED".
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution.
    #
    #   The maximum length of the value in the name/value pair is 1,024
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time they are updated by a device.
    #   @return [Integer]
    #
    class JobExecutionState < Struct.new(
      :status,
      :status_details,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a subset of information about a job execution.
    #
    # @!attribute [rw] job_id
    #   The unique identifier you assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] queued_at
    #   The time, in seconds since the epoch, when the job execution was
    #   enqueued.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The time, in seconds since the epoch, when the job execution
    #   started.
    #   @return [Integer]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in seconds since the epoch, when the job execution was
    #   last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] version_number
    #   The version of the job execution. Job execution versions are
    #   incremented each time IoT Jobs receives an update from a device.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_number
    #   A number that identifies a particular job execution on a particular
    #   device.
    #   @return [Integer]
    #
    class JobExecutionSummary < Struct.new(
      :job_id,
      :queued_at,
      :started_at,
      :last_updated_at,
      :version_number,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota has been exceeded for this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable.
    #
    # @!attribute [rw] message
    #   The message for the exception.
    #   @return [String]
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The Amazon Resource Number (ARN) of the device where the command
    #   execution is occurring.
    #   @return [String]
    #
    # @!attribute [rw] command_arn
    #   The Amazon Resource Number (ARN) of the command. For example,
    #   `arn:aws:iot:<region>:<accountid>:command/<commandName>`
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters that are required by the
    #   `StartCommandExecution` API when performing the command on a device.
    #   @return [Hash<String,Types::CommandParameterValue>]
    #
    # @!attribute [rw] execution_timeout_seconds
    #   Specifies the amount of time in second the device has to finish the
    #   command execution. A timer is started as soon as the command
    #   execution is created. If the command execution status is not set to
    #   another terminal state before the timer expires, it will
    #   automatically update to `TIMED_OUT`.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   The client token is used to implement idempotency. It ensures that
    #   the request completes no more than one time. If you retry a request
    #   with the same token and the same parameters, the request will
    #   complete successfully. However, if you retry the request using the
    #   same token but different parameters, an HTTP 409 conflict occurs. If
    #   you omit this value, Amazon Web Services SDKs will automatically
    #   generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class StartCommandExecutionRequest < Struct.new(
      :target_arn,
      :command_arn,
      :parameters,
      :execution_timeout_seconds,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   A unique identifier for the command execution.
    #   @return [String]
    #
    class StartCommandExecutionResponse < Struct.new(
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_name
    #   The name of the thing associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   A collection of name/value pairs that describe the status of the job
    #   execution. If not specified, the statusDetails are unchanged.
    #
    #   The maximum length of the value in the name/value pair is 1,024
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] step_timeout_in_minutes
    #   Specifies the amount of time this device has to finish execution of
    #   this job. If the job execution status is not set to a terminal state
    #   before this timer expires, or before the timer is reset (by calling
    #   `UpdateJobExecution`, setting the status to `IN_PROGRESS`, and
    #   specifying a new timeout value in field `stepTimeoutInMinutes`) the
    #   job execution status will be automatically set to `TIMED_OUT`. Note
    #   that setting the step timeout has no effect on the in progress
    #   timeout that may have been specified when the job was created
    #   (`CreateJob` using field `timeoutConfig`).
    #
    #   Valid values for this parameter range from 1 to 10080 (1 minute to 7
    #   days).
    #   @return [Integer]
    #
    class StartNextPendingJobExecutionRequest < Struct.new(
      :thing_name,
      :status_details,
      :step_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution
    #   A JobExecution object.
    #   @return [Types::JobExecution]
    #
    class StartNextPendingJobExecutionResponse < Struct.new(
      :execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job is in a terminal state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class TerminalStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate exceeds the limit.
    #
    # @!attribute [rw] message
    #   The message associated with the exception.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   The payload associated with the exception.
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message,
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier assigned to this job when it was created.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status for the job execution (IN\_PROGRESS, FAILED, SUCCESS,
    #   or REJECTED). This must be specified on every update.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Optional. A collection of name/value pairs that describe the status
    #   of the job execution. If not specified, the statusDetails are
    #   unchanged.
    #
    #   The maximum length of the value in the name/value pair is 1,024
    #   characters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] step_timeout_in_minutes
    #   Specifies the amount of time this device has to finish execution of
    #   this job. If the job execution status is not set to a terminal state
    #   before this timer expires, or before the timer is reset (by again
    #   calling `UpdateJobExecution`, setting the status to `IN_PROGRESS`,
    #   and specifying a new timeout value in this field) the job execution
    #   status will be automatically set to `TIMED_OUT`. Note that setting
    #   or resetting the step timeout has no effect on the in progress
    #   timeout that may have been specified when the job was created
    #   (`CreateJob` using field `timeoutConfig`).
    #
    #   Valid values for this parameter range from 1 to 10080 (1 minute to 7
    #   days). A value of -1 is also valid and will cancel the current step
    #   timer (created by an earlier use of `UpdateJobExecutionRequest`).
    #   @return [Integer]
    #
    # @!attribute [rw] expected_version
    #   Optional. The expected current version of the job execution. Each
    #   time you update the job execution, its version is incremented. If
    #   the version of the job execution stored in Jobs does not match, the
    #   update is rejected with a VersionMismatch error, and an
    #   ErrorResponse that contains the current job execution status data is
    #   returned. (This makes it unnecessary to perform a separate
    #   DescribeJobExecution request in order to obtain the job execution
    #   status data.)
    #   @return [Integer]
    #
    # @!attribute [rw] include_job_execution_state
    #   Optional. When included and set to true, the response contains the
    #   JobExecutionState data. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_job_document
    #   Optional. When set to true, the response contains the job document.
    #   The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] execution_number
    #   Optional. A number that identifies a particular job execution on a
    #   particular device.
    #   @return [Integer]
    #
    class UpdateJobExecutionRequest < Struct.new(
      :job_id,
      :thing_name,
      :status,
      :status_details,
      :step_timeout_in_minutes,
      :expected_version,
      :include_job_execution_state,
      :include_job_document,
      :execution_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_state
    #   A JobExecutionState object.
    #   @return [Types::JobExecutionState]
    #
    # @!attribute [rw] job_document
    #   The contents of the Job Documents.
    #   @return [String]
    #
    class UpdateJobExecutionResponse < Struct.new(
      :execution_state,
      :job_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation error occurred when performing the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

