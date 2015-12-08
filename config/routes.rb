Rails.application.routes.draw do


get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create'


  root  'pages#home'
  get   'pages/about'
  get   'pages/contact'

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :messages
  resources :organizations
  resources :work_fields
  resources :degres
  resources :institutes
  resources :cities
  resources :users do
    resources :userinfos
    resources :educations
    resources :experiences
  end
  resources :advertises do
    resources :jobs
    resources :comments
	end



end
