Rails.application.routes.draw do
  root 'frontend#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    devise_for :users,
      path: '',
      path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
      },
      controllers: {
        sessions: 'sessions',
        registrations: 'registrations'
      }
  end

  match '*path', to: 'frontend#index', via: :get
end
