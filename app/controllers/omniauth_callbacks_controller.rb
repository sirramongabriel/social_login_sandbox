class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      sign_in_and_redirect user, success: 'Signed in!'
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to root_path # new_user_registration_path
    end
  end

  alias_method :facebook, :all
end
