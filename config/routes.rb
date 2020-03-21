Rails.application.routes.draw do
  get 'contacts/index', as: 'contacts'
  get 'contacts/new', as: 'new_contact'
  post '/contacts/create', to: 'contacts#create'
  root 'contacts#index'


end
