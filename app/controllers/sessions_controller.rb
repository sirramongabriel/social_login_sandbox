class SessionsController < ApplicationController
  def create
    raise request.env["omniauth.auth"].to_yaml
    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
    # User.create_with_omniauth(auth)
    # session[:user_id] = user.id
    # redirect_to root_path, success: 'Signed in!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, success: 'Signed out!'
  end
end
