# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53RecoveryControlConfig
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53RecoveryControlConfig::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::Route53RecoveryControlConfig::EndpointParameters`.
        DOCS
        Aws::Route53RecoveryControlConfig::EndpointProvider.new
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
          when :create_cluster
            Aws::Route53RecoveryControlConfig::Endpoints::CreateCluster.build(context)
          when :create_control_panel
            Aws::Route53RecoveryControlConfig::Endpoints::CreateControlPanel.build(context)
          when :create_routing_control
            Aws::Route53RecoveryControlConfig::Endpoints::CreateRoutingControl.build(context)
          when :create_safety_rule
            Aws::Route53RecoveryControlConfig::Endpoints::CreateSafetyRule.build(context)
          when :delete_cluster
            Aws::Route53RecoveryControlConfig::Endpoints::DeleteCluster.build(context)
          when :delete_control_panel
            Aws::Route53RecoveryControlConfig::Endpoints::DeleteControlPanel.build(context)
          when :delete_routing_control
            Aws::Route53RecoveryControlConfig::Endpoints::DeleteRoutingControl.build(context)
          when :delete_safety_rule
            Aws::Route53RecoveryControlConfig::Endpoints::DeleteSafetyRule.build(context)
          when :describe_cluster
            Aws::Route53RecoveryControlConfig::Endpoints::DescribeCluster.build(context)
          when :describe_control_panel
            Aws::Route53RecoveryControlConfig::Endpoints::DescribeControlPanel.build(context)
          when :describe_routing_control
            Aws::Route53RecoveryControlConfig::Endpoints::DescribeRoutingControl.build(context)
          when :describe_safety_rule
            Aws::Route53RecoveryControlConfig::Endpoints::DescribeSafetyRule.build(context)
          when :get_resource_policy
            Aws::Route53RecoveryControlConfig::Endpoints::GetResourcePolicy.build(context)
          when :list_associated_route_53_health_checks
            Aws::Route53RecoveryControlConfig::Endpoints::ListAssociatedRoute53HealthChecks.build(context)
          when :list_clusters
            Aws::Route53RecoveryControlConfig::Endpoints::ListClusters.build(context)
          when :list_control_panels
            Aws::Route53RecoveryControlConfig::Endpoints::ListControlPanels.build(context)
          when :list_routing_controls
            Aws::Route53RecoveryControlConfig::Endpoints::ListRoutingControls.build(context)
          when :list_safety_rules
            Aws::Route53RecoveryControlConfig::Endpoints::ListSafetyRules.build(context)
          when :list_tags_for_resource
            Aws::Route53RecoveryControlConfig::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::Route53RecoveryControlConfig::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Route53RecoveryControlConfig::Endpoints::UntagResource.build(context)
          when :update_control_panel
            Aws::Route53RecoveryControlConfig::Endpoints::UpdateControlPanel.build(context)
          when :update_routing_control
            Aws::Route53RecoveryControlConfig::Endpoints::UpdateRoutingControl.build(context)
          when :update_safety_rule
            Aws::Route53RecoveryControlConfig::Endpoints::UpdateSafetyRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
