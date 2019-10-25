Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'cobas-reagent', to: 'cobas_reagents#start'
  get 'cobas-reagent-entry', to: 'cobas_reagents#check'
  get 'vials-stock', to: 'vials#start'
  resources :cobas_reagents

end
