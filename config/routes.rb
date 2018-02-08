Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions'
  }
  devise_for :students

  devise_scope :admin do
    get '/god', to: 'admins/sessions#new'
    get '/god/sign_out' => 'admins/sessions#destroy'
  end
  devise_scope :teacher do
    root to: "teachers/sessions#new"
  end

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'  do
    scope module: :v1 do
      # We are going to list our resources here
      resources :students, :only => [:show]
    end
  end

  resources :courses

  get '/god/home' => 'god#home'

end
