Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'time', to: 'time#current_time'
    end
  end
end
