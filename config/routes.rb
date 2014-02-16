SocialLoginSandbox::Application.routes.draw do
  root to: 'static_pages#index'

  devise_for :users, path_names:  { sign_in: 'login', sign_out: 'logout' } #,
                     # controllers: { omnniauth_callbacks: 'omnniauth_callbacks' }

  match "users/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout

  # match ':controller(/:action(/:id))(.:format)'
end
