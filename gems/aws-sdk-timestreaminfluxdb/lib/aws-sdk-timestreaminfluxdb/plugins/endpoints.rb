# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TimestreamInfluxDB
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::TimestreamInfluxDB::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::TimestreamInfluxDB::EndpointParameters`.
        DOCS
        Aws::TimestreamInfluxDB::EndpointProvider.new
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
          when :create_db_instance
            Aws::TimestreamInfluxDB::Endpoints::CreateDbInstance.build(context)
          when :create_db_parameter_group
            Aws::TimestreamInfluxDB::Endpoints::CreateDbParameterGroup.build(context)
          when :delete_db_instance
            Aws::TimestreamInfluxDB::Endpoints::DeleteDbInstance.build(context)
          when :get_db_instance
            Aws::TimestreamInfluxDB::Endpoints::GetDbInstance.build(context)
          when :get_db_parameter_group
            Aws::TimestreamInfluxDB::Endpoints::GetDbParameterGroup.build(context)
          when :list_db_instances
            Aws::TimestreamInfluxDB::Endpoints::ListDbInstances.build(context)
          when :list_db_parameter_groups
            Aws::TimestreamInfluxDB::Endpoints::ListDbParameterGroups.build(context)
          when :list_tags_for_resource
            Aws::TimestreamInfluxDB::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::TimestreamInfluxDB::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::TimestreamInfluxDB::Endpoints::UntagResource.build(context)
          when :update_db_instance
            Aws::TimestreamInfluxDB::Endpoints::UpdateDbInstance.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
