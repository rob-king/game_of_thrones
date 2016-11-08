Rails.application.routes.draw do
  get 'characters/index'

  get 'characters/show'

  get 'characters/new'

  get 'characters/edit'

  get 'houses/index'

  get 'houses/show'

  get 'houses/new'

  get 'houses/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
