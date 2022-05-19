Rails.application.routes.draw do

#get 'new', to: 'teachers#new'

resources :teachers, only: [:new, :create, :show, :index, :edit, :destroy, :update]

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
end
