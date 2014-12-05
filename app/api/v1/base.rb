require 'grape-swagger'

module V1
  class Base < Grape::API

    helpers do
      def authorize_session!(token)
        valid_token = token == ENV.fetch('SECRET_API_KEY') { nil }
        error! "invalid key: '#{token}'" unless valid_token
      end
    end
    version 'v1', using: :path

    mount V1::Doors
  end
end
