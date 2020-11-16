Rails.application.routes.draw do
  resources :read, only: :index, defaults: { format: 'text' }
end
