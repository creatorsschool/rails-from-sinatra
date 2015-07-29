Rails.application.routes.draw do
  get '/', to: 'test#my_action'

  resources :posts
end
