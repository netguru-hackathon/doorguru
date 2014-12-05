require 'grape-swagger'

module V1
  class Base < Grape::API

    version 'v1', using: :path

    mount V1::Door
  end
end
