# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTTwinMaker
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTTwinMaker::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::IoTTwinMaker::EndpointParameters`.
        DOCS
        Aws::IoTTwinMaker::EndpointProvider.new
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
          when :batch_put_property_values
            Aws::IoTTwinMaker::Endpoints::BatchPutPropertyValues.build(context)
          when :cancel_metadata_transfer_job
            Aws::IoTTwinMaker::Endpoints::CancelMetadataTransferJob.build(context)
          when :create_component_type
            Aws::IoTTwinMaker::Endpoints::CreateComponentType.build(context)
          when :create_entity
            Aws::IoTTwinMaker::Endpoints::CreateEntity.build(context)
          when :create_metadata_transfer_job
            Aws::IoTTwinMaker::Endpoints::CreateMetadataTransferJob.build(context)
          when :create_scene
            Aws::IoTTwinMaker::Endpoints::CreateScene.build(context)
          when :create_sync_job
            Aws::IoTTwinMaker::Endpoints::CreateSyncJob.build(context)
          when :create_workspace
            Aws::IoTTwinMaker::Endpoints::CreateWorkspace.build(context)
          when :delete_component_type
            Aws::IoTTwinMaker::Endpoints::DeleteComponentType.build(context)
          when :delete_entity
            Aws::IoTTwinMaker::Endpoints::DeleteEntity.build(context)
          when :delete_scene
            Aws::IoTTwinMaker::Endpoints::DeleteScene.build(context)
          when :delete_sync_job
            Aws::IoTTwinMaker::Endpoints::DeleteSyncJob.build(context)
          when :delete_workspace
            Aws::IoTTwinMaker::Endpoints::DeleteWorkspace.build(context)
          when :execute_query
            Aws::IoTTwinMaker::Endpoints::ExecuteQuery.build(context)
          when :get_component_type
            Aws::IoTTwinMaker::Endpoints::GetComponentType.build(context)
          when :get_entity
            Aws::IoTTwinMaker::Endpoints::GetEntity.build(context)
          when :get_metadata_transfer_job
            Aws::IoTTwinMaker::Endpoints::GetMetadataTransferJob.build(context)
          when :get_pricing_plan
            Aws::IoTTwinMaker::Endpoints::GetPricingPlan.build(context)
          when :get_property_value
            Aws::IoTTwinMaker::Endpoints::GetPropertyValue.build(context)
          when :get_property_value_history
            Aws::IoTTwinMaker::Endpoints::GetPropertyValueHistory.build(context)
          when :get_scene
            Aws::IoTTwinMaker::Endpoints::GetScene.build(context)
          when :get_sync_job
            Aws::IoTTwinMaker::Endpoints::GetSyncJob.build(context)
          when :get_workspace
            Aws::IoTTwinMaker::Endpoints::GetWorkspace.build(context)
          when :list_component_types
            Aws::IoTTwinMaker::Endpoints::ListComponentTypes.build(context)
          when :list_components
            Aws::IoTTwinMaker::Endpoints::ListComponents.build(context)
          when :list_entities
            Aws::IoTTwinMaker::Endpoints::ListEntities.build(context)
          when :list_metadata_transfer_jobs
            Aws::IoTTwinMaker::Endpoints::ListMetadataTransferJobs.build(context)
          when :list_properties
            Aws::IoTTwinMaker::Endpoints::ListProperties.build(context)
          when :list_scenes
            Aws::IoTTwinMaker::Endpoints::ListScenes.build(context)
          when :list_sync_jobs
            Aws::IoTTwinMaker::Endpoints::ListSyncJobs.build(context)
          when :list_sync_resources
            Aws::IoTTwinMaker::Endpoints::ListSyncResources.build(context)
          when :list_tags_for_resource
            Aws::IoTTwinMaker::Endpoints::ListTagsForResource.build(context)
          when :list_workspaces
            Aws::IoTTwinMaker::Endpoints::ListWorkspaces.build(context)
          when :tag_resource
            Aws::IoTTwinMaker::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTTwinMaker::Endpoints::UntagResource.build(context)
          when :update_component_type
            Aws::IoTTwinMaker::Endpoints::UpdateComponentType.build(context)
          when :update_entity
            Aws::IoTTwinMaker::Endpoints::UpdateEntity.build(context)
          when :update_pricing_plan
            Aws::IoTTwinMaker::Endpoints::UpdatePricingPlan.build(context)
          when :update_scene
            Aws::IoTTwinMaker::Endpoints::UpdateScene.build(context)
          when :update_workspace
            Aws::IoTTwinMaker::Endpoints::UpdateWorkspace.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
