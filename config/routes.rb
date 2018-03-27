Rails.application.routes.draw do
resources :movies #resources are kind of like data, which in this case are movies.    
    
root :to => redirect('/movies')

get 'auth/twitter/callback' =>'sessions#create',:as => 'login'
get 'logout' => 'sessions#destroy'
get 'auth/failure' => 'sessions#failure'
    
    
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
