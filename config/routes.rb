Rails.application.routes.draw do
  resources :employees
  resources :companies do
    collection { post :import }
  end
  devise_for :users
  get 'welcome/index'

  get 'welcome/contact'

  get 'welcome/about'

  get 'welcome/features'

  get 'welcome/faq'

  get 'welcome/pricing'

  get 'index/contact'

  get 'index/about'

  get 'index/features'

  get 'index/faq'

  get 'index/pricing'

  resources :invoices

  root to: 'welcome#index'

end
