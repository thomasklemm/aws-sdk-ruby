# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticTranscoder
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticTranscoder::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::ElasticTranscoder::EndpointParameters`.
        DOCS
        Aws::ElasticTranscoder::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :cancel_job
            Aws::ElasticTranscoder::Endpoints::CancelJob.build(context)
          when :create_job
            Aws::ElasticTranscoder::Endpoints::CreateJob.build(context)
          when :create_pipeline
            Aws::ElasticTranscoder::Endpoints::CreatePipeline.build(context)
          when :create_preset
            Aws::ElasticTranscoder::Endpoints::CreatePreset.build(context)
          when :delete_pipeline
            Aws::ElasticTranscoder::Endpoints::DeletePipeline.build(context)
          when :delete_preset
            Aws::ElasticTranscoder::Endpoints::DeletePreset.build(context)
          when :list_jobs_by_pipeline
            Aws::ElasticTranscoder::Endpoints::ListJobsByPipeline.build(context)
          when :list_jobs_by_status
            Aws::ElasticTranscoder::Endpoints::ListJobsByStatus.build(context)
          when :list_pipelines
            Aws::ElasticTranscoder::Endpoints::ListPipelines.build(context)
          when :list_presets
            Aws::ElasticTranscoder::Endpoints::ListPresets.build(context)
          when :read_job
            Aws::ElasticTranscoder::Endpoints::ReadJob.build(context)
          when :read_pipeline
            Aws::ElasticTranscoder::Endpoints::ReadPipeline.build(context)
          when :read_preset
            Aws::ElasticTranscoder::Endpoints::ReadPreset.build(context)
          when :test_role
            Aws::ElasticTranscoder::Endpoints::TestRole.build(context)
          when :update_pipeline
            Aws::ElasticTranscoder::Endpoints::UpdatePipeline.build(context)
          when :update_pipeline_notifications
            Aws::ElasticTranscoder::Endpoints::UpdatePipelineNotifications.build(context)
          when :update_pipeline_status
            Aws::ElasticTranscoder::Endpoints::UpdatePipelineStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
