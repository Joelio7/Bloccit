Rails.application.routes.draw do
  get 'advertisement/index'

  get 'advertisement/show'

  get 'advertisement/new'

  get 'advertisement/create'

  get 'about' => 'welcome#about'
  resources :posts
  resources :advertisement
  root to: 'welcome#index'
end
