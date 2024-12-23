# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::ECRPublic
  describe EndpointProvider do
    subject { Aws::ECRPublic::EndpointProvider.new }

    context "Valid with dualstack and FIPS disabled. i.e, IPv4 Only stack with no FIPS, with special prefix" do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://api.ecr-public.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_registries' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        resp = client.describe_registries(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Valid with dualstack enabled" do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://ecr-public.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Invalid with FIPS set, dualstack disabled" do
      let(:expected) do
        {"error"=>"ECR Public does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid with both dualstack and FIPS enabled" do
      let(:expected) do
        {"error"=>"ECR Public does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid with DualStack enabled and partition does not support Dualstack" do
      let(:expected) do
        {"error"=>"Dualstack is enabled but this partition does not support dualstack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-isob-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
