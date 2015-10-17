Rails.application.routes.draw do

  root 'items#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :items, :only => [:index, :show]

  resources :item_contacts, :only => [:new, :create]


end
