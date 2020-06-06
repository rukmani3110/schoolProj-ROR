
Rails.application.routes.draw do
 resources :users, only: [:new, :create, :addStudents,:search_class]
  resources :students, only: [:new, :create]
  resources :teachers, only: [:new, :create]
  resources :marks, only: [:new, :create]
  resources :subjects, only: [:new, :create]
    get 'login', to: 'sessions#new'
    get 'marks', to: 'marks#new'
   delete 'logout' => 'sessions#destroy'
    post 'marks', to: 'marks#create'
    get 'loginTeacher', to:'sessions#loginTeacher'
    post 'loginTeacher', to:'sessions#confirmLoginTeacher'
    get 'addStudents', to: 'students#new'
      post 'search_class', to: 'users#search_class'
    get 'teacherOptions', to: 'sessions#teacherLandingPage'
      get 'addTeachers', to: 'teachers#new'
    get 'addSubjects', to: 'subjects#new'
    get 'welcome', to: 'sessions#welcome'
   get 'options', to: 'sessions#options'
   post 'login' , to:'sessions#create'
    get 'show_projects', to: 'sessions#show_projects'
    post 'search_project', to: 'sessions#search_project'
    post 'search_project_by_name', to: 'sessions#search_project_by_name'
     get 'welcome', to: 'sessions#welcome'
     get 'welcomeTeacher', to: 'sessions#welcomeTeacher'
     get 'authorized', to: 'sessions#page_requires_login'
     post 'add_project', to: 'sessions#add_project'
     root 'sessions#main'
     get 'main' => 'sessions#main'
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
