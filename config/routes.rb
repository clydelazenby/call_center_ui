Rails.application.routes.draw do

  resources :chats
  resources :customers
  devise_for :users
  
  get 'homepage' => 'welcome#main_page'
  get 'dailytask' => 'welcome#all_task'
  get 'callswaiting' => 'welcome#queue'
  get 'tips' => 'welcome#helpful_tips'
  get 'teamchat' => 'chats#index'
  root 'welcome#index'
  get 'all_customers' => 'welcome#all_customers'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
