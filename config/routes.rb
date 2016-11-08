Rails.application.routes.draw do
  resources :houses do
    resources :characters
  end
end
