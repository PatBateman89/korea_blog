Rails.application.routes.draw do
  get 'pages/contact'

  get 'pages/esl_lessons'

  resources :lessons
  resources :articles do
    resources :comments
  end

  devise_for :users
  resources :posts
  root "posts#index"

  get '/articles', to: 'articles#index', as: "index"
end
