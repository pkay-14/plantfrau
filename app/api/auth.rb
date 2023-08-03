class Auth < Grape::API
  namespace :auth do

    desc "Creates and returns access_token if valid login"
    params do
      requires :email, type: String, desc: "email address"
      requires :password, type: String, desc: "Password"
    end
    post :generate_token do
      begin
        user = User.find_by_email(params[:email])
        if user && user.valid_password?(params[:password])
            user.api_keys.destroy_all
            key = user.api_keys.create!
            {api_token: key.access_token}

        else
          error!('Unauthorized.', 401)
        end
      rescue => e
        error!(e)
      end
    end

    desc "Returns success if logged in correctly"
    get :ping do
      { message: "success" }
    end
  end
end