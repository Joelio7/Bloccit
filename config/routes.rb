Rails.application.routes.draw do

  get 'contact' => 'welcome#contact'
  get 'about' => 'welcome#about'
  resources :posts
  resources :advertisement
  root to: 'welcome#index'
end
