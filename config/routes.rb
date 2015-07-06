Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/terms'
  get 'pages/privacy'
  get 'pages/faqs'
  get 'pages/help'

  resources :business_details
  resources :businesses
  root 'businesses#index'
end
