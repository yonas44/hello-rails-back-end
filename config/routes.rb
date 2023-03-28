Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/greeting', to: 'message#index'
    end
  end
end
