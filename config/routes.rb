Rails.application.routes.draw do

  resources :labels, only: [:show]

  resources :topics do

     resources  :posts, except: [:index]
  resources :advertisements
end

resources :posts, only: [] do
  resources :comments, only: [:create, :destroy]
  post '/up-vote' => 'votes#up_vote', as: :up_vote
  post '/down-vote' => 'votes#down_vote', as: :down_vote
end
resources :questions

    resources :sessions, only: [:new, :create, :destroy]

    resources  :users, only: [:new, :create]
        post   "/confirm" => "users#confirm"


  get 'about' => 'welcome#about'
  root to: 'welcome#index'
end
