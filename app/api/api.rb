class API < Grape::API

  format :json
  formatter :json, Grape::Formatter::ActiveModelSerializers
  logger Rails.logger

  mount V1::Base

  add_swagger_documentation(
    api_version: 'v1',
    markdown: true,
    hide_documentation_path: true,
  )
end
