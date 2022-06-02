Rails.application.routes.draw do
  resources :frasses do
    collection do
      post :confirm
    end
  end
end
