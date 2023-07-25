module V1
  class Base < Grape::API
    prefix :api
    version :v1, using: :path
    format 'json'
    default_format :json
    error_formatter :json, JsonErrorFormatter

    mount Plants
    route :any, '*path' do
      error!({ error_code: 404, error_message: "Endpoint #{request.path} Not Found" })
    end
  end
end