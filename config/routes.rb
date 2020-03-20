Rails.application.routes.draw do
  get 'contacts/index', as: 'contacts'
  root 'contacts#index'


end
