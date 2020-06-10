# frozen_string_literal: true

Rails.application.routes.draw do
  get 'landing_page/home'

  post '/directories/delete_file/:slug', to: 'directories#delete_file', as: :directories_delete_file
  resources :directories, param: :slug

  root 'landing_page#home'
  get '*path', to: redirect('/'), constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
