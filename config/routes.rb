Rails.application.routes.draw do
  # get '/frasses', to: 'frasses#index'
  # get '/frasses', to: 'frasses#new'
  resources :frasses do
    collection do
      post :confirm
    end
  end
end
