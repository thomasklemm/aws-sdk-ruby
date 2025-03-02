# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppConfig
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppConfig::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::AppConfig::EndpointParameters`.
        DOCS
        Aws::AppConfig::EndpointProvider.new
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
          when :create_application
            Aws::AppConfig::Endpoints::CreateApplication.build(context)
          when :create_configuration_profile
            Aws::AppConfig::Endpoints::CreateConfigurationProfile.build(context)
          when :create_deployment_strategy
            Aws::AppConfig::Endpoints::CreateDeploymentStrategy.build(context)
          when :create_environment
            Aws::AppConfig::Endpoints::CreateEnvironment.build(context)
          when :create_extension
            Aws::AppConfig::Endpoints::CreateExtension.build(context)
          when :create_extension_association
            Aws::AppConfig::Endpoints::CreateExtensionAssociation.build(context)
          when :create_hosted_configuration_version
            Aws::AppConfig::Endpoints::CreateHostedConfigurationVersion.build(context)
          when :delete_application
            Aws::AppConfig::Endpoints::DeleteApplication.build(context)
          when :delete_configuration_profile
            Aws::AppConfig::Endpoints::DeleteConfigurationProfile.build(context)
          when :delete_deployment_strategy
            Aws::AppConfig::Endpoints::DeleteDeploymentStrategy.build(context)
          when :delete_environment
            Aws::AppConfig::Endpoints::DeleteEnvironment.build(context)
          when :delete_extension
            Aws::AppConfig::Endpoints::DeleteExtension.build(context)
          when :delete_extension_association
            Aws::AppConfig::Endpoints::DeleteExtensionAssociation.build(context)
          when :delete_hosted_configuration_version
            Aws::AppConfig::Endpoints::DeleteHostedConfigurationVersion.build(context)
          when :get_account_settings
            Aws::AppConfig::Endpoints::GetAccountSettings.build(context)
          when :get_application
            Aws::AppConfig::Endpoints::GetApplication.build(context)
          when :get_configuration
            Aws::AppConfig::Endpoints::GetConfiguration.build(context)
          when :get_configuration_profile
            Aws::AppConfig::Endpoints::GetConfigurationProfile.build(context)
          when :get_deployment
            Aws::AppConfig::Endpoints::GetDeployment.build(context)
          when :get_deployment_strategy
            Aws::AppConfig::Endpoints::GetDeploymentStrategy.build(context)
          when :get_environment
            Aws::AppConfig::Endpoints::GetEnvironment.build(context)
          when :get_extension
            Aws::AppConfig::Endpoints::GetExtension.build(context)
          when :get_extension_association
            Aws::AppConfig::Endpoints::GetExtensionAssociation.build(context)
          when :get_hosted_configuration_version
            Aws::AppConfig::Endpoints::GetHostedConfigurationVersion.build(context)
          when :list_applications
            Aws::AppConfig::Endpoints::ListApplications.build(context)
          when :list_configuration_profiles
            Aws::AppConfig::Endpoints::ListConfigurationProfiles.build(context)
          when :list_deployment_strategies
            Aws::AppConfig::Endpoints::ListDeploymentStrategies.build(context)
          when :list_deployments
            Aws::AppConfig::Endpoints::ListDeployments.build(context)
          when :list_environments
            Aws::AppConfig::Endpoints::ListEnvironments.build(context)
          when :list_extension_associations
            Aws::AppConfig::Endpoints::ListExtensionAssociations.build(context)
          when :list_extensions
            Aws::AppConfig::Endpoints::ListExtensions.build(context)
          when :list_hosted_configuration_versions
            Aws::AppConfig::Endpoints::ListHostedConfigurationVersions.build(context)
          when :list_tags_for_resource
            Aws::AppConfig::Endpoints::ListTagsForResource.build(context)
          when :start_deployment
            Aws::AppConfig::Endpoints::StartDeployment.build(context)
          when :stop_deployment
            Aws::AppConfig::Endpoints::StopDeployment.build(context)
          when :tag_resource
            Aws::AppConfig::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppConfig::Endpoints::UntagResource.build(context)
          when :update_account_settings
            Aws::AppConfig::Endpoints::UpdateAccountSettings.build(context)
          when :update_application
            Aws::AppConfig::Endpoints::UpdateApplication.build(context)
          when :update_configuration_profile
            Aws::AppConfig::Endpoints::UpdateConfigurationProfile.build(context)
          when :update_deployment_strategy
            Aws::AppConfig::Endpoints::UpdateDeploymentStrategy.build(context)
          when :update_environment
            Aws::AppConfig::Endpoints::UpdateEnvironment.build(context)
          when :update_extension
            Aws::AppConfig::Endpoints::UpdateExtension.build(context)
          when :update_extension_association
            Aws::AppConfig::Endpoints::UpdateExtensionAssociation.build(context)
          when :validate_configuration
            Aws::AppConfig::Endpoints::ValidateConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
