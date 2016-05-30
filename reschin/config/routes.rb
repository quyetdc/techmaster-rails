Rails.application.routes.draw do

  root 'restaurants#index'

  get 'articles/:id' => 'articles#show', as: :article

  namespace :admin do
    resources :articles
    resources :banners
  end

  scope :admin do
    root 'admin#dashboard', as: :admin_root
  end
end
