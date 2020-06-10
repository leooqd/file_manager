Rails.application.routes.draw do
	
  get 'landing_page/home'
  
  root "landing_page#home"
  get '*path', to: redirect('/'), constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
