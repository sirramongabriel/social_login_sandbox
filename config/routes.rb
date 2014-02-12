SocialLoginSandbox::Application.routes.draw do
  root to: 'static_pages#index'

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' },
                     controllers: { omnniauth_callbacks: 'omnniauth_callbacks' }

  # match ':controller(/:action(/:id))(.:format)'
end
