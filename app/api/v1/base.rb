module V1
  class Base < Grape::API
    prefix :api
    version :v1, using: :path
    format 'json'
    default_format :json
    error_formatter :json, JsonErrorFormatter

    mount Plants
  end
end