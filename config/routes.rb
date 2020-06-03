Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bottles, only: [:index, :show] do
    resources :feedbacks, only: [:create]
  end

  resources :user_answers, only: [:create]
  resources :user_profiles, only: [:create, :show, :delete]
  resources :user_favorites, only: [:create, :index]

  get 'quiz', to:'pages#quiz'

end
