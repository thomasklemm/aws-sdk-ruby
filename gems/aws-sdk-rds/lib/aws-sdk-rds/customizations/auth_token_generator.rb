# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module RDS
    # A utility class that generates an auth token that supports database
    # logins. IAM credentials are used for authentication instead of the
    # database password.
    #
    # @see https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    class AuthTokenGenerator
      # @option options [Credentials] :credentials An object that
      #   responds to `#credentials` returning another object that responds to
      #   `#access_key_id`, `#secret_access_key`, and `#session_token`.
      def initialize(options = {})
        @credentials = options.fetch(:credentials)
      end

      # Creates an auth login token.
      #
      # @param [Hash] options The options for auth token creation.
      # @option options [String] :region The region where the database
      #  is located.
      # @option options [String] :endpoint The hostname of the database
      #  with a port number.
      #  For example: my-instance.us-west-2.rds.amazonaws.com:3306
      # @option options [String] :user_name The username to login as.
      # @option options [Integer] :expires_in (900) The number of seconds the
      #  token is valid for.
      # @return [String]
      def generate_auth_token(options)
        region = options.fetch(:region)
        endpoint = options.fetch(:endpoint)
        user_name = options.fetch(:user_name)

        param_list = Aws::Query::ParamList.new
        param_list.set('Action', 'connect')
        param_list.set('DBUser', user_name)

        signer = Aws::Sigv4::Signer.new(
          service: 'rds-db',
          region: region,
          credentials_provider: @credentials
        )

        presigned_url = signer.presign_url(
          http_method: 'GET',
          url: "https://#{endpoint}/?#{param_list}",
          body: '',
          expires_in: options[:expires_in]
        ).to_s
        # Remove extra scheme for token
        presigned_url[8..-1]
      end
      alias_method :auth_token, :generate_auth_token
    end
  end
end
