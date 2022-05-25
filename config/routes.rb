Rails.application.routes.draw do

#get 'new', to: 'teachers#new'
get 'about', to: 'teachers#about';
get 'hello', to: 'application#hello'

#resources :students
#get 'main', to: 'students#main'
resources :students, only: [:show, :index, :edit, :new, :create, :update, :destroy]
#get 'index', to: 'students#index'
#resources :teachers
#resources :articles, only: [:new, :create]
#get 'main', to: 'teachers#main'

get 'home', to: 'students#home'
#put 'inform', to: 'students#inform'
post 'inform', to: "students#inform"
get 'view', to: 'students#view'

resources :teachers, only: [:new, :create, :show, :index, :edit, :update, :destroy]
#root 'application#kika'
#get 'teacher', to: 'teachers#show'

#get 'teacher', action: :show, controller: 'teachers'
#root 'application#keka'

resources :users, only: [:new, :create, :show, :index, :edit, :update, :destroy]
resources :articles, only: [:new, :create, :show, :index, :edit, :update, :destroy]

end
