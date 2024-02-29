Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'times', to: 'times#current_times'
    end
  end
end
