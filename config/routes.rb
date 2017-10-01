Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'contacts#index'

  resources :contacts do
    member do
      post :send_message
    end
  end
end
