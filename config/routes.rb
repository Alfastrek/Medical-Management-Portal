Rails.application.routes.draw do
  devise_for :users

  get '/receptionist', to: 'receptionists#index'

  scope '/receptionist' do
    resources :patients
  end

  scope '/doctor' do
    resources :patients, only: [:index]
  end
end