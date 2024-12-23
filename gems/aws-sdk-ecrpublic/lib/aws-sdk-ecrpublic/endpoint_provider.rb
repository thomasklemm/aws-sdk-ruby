# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ECRPublic
  class EndpointProvider
    def resolve_endpoint(parameters)
      region = parameters.region
      use_fips = parameters.use_fips
      use_dual_stack = parameters.use_dual_stack
      if Aws::Endpoints::Matchers.set?(region) && (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          raise ArgumentError, "ECR Public does not support FIPS"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(use_dual_stack, true)
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            return Aws::Endpoints::Endpoint.new(url: "https://ecr-public.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          raise ArgumentError, "Dualstack is enabled but this partition does not support dualstack"
        end
        return Aws::Endpoints::Endpoint.new(url: "https://api.ecr-public.#{region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
      end
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
