module V1
  class Base < Grape::API
    prefix :api
    version :v1, using: :path
    format 'json'
    default_format :json
    error_formatter :json, JsonErrorFormatter

    before do
      authenticate!
    end

    helpers do
      def authenticate!
        error!({error_code: 401, error_message: 'Unauthorized. Invalid or expired token.'}) unless current_user
      end

      def current_user
        # find token. Check if valid.
        token = ApiKey.where(access_token: params[:api_token]).first
        if token.present? && !token.expired?
          @current_user = User.find(token.user_id)
        else
          false
        end
      end
    end

    mount Plants
    route :any, '*path' do
      error!({ error_code: 404, error_message: "Endpoint #{request.path} Not Found" })
    end
  end
end