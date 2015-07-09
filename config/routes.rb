Rails.application.routes.draw do
  resources :sub_cultures
  resources :cultures
  resources :sub_categories
  resources :categories
  resources :category_types
  # get => 'pages/home'
  get 'about'   => 'pages/about'
  get 'contact' => 'pages/contact'
  get 'terms'   => 'pages/terms'
  get 'privacy' => 'pages/privacy'
  get 'faqs'    => 'pages/faqs'
  get 'help'    => 'pages/help'

  resources :business_details
  resources :businesses
  root 'pages#home'
end
