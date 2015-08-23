Rails.application.routes.draw do
 get 'welcome/index'

  get 'welcome/about'

  get 'welcome/FAQ'

get 'welcome/contact'
  root to: 'welcome#index'
end
