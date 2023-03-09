Rails.application.routes.draw do
  resources :language_flashcards
  resources :flashcards
  resources :lessons
  resources :languages
  resources :users
  
   #user
   post "/signup", to: "users#create"
   get "/me", to: "users#me"
   post "/login", to: "sessions#create"
   delete "/logout", to: "sessions#destroy"
   get "/profile", to: "users#me"
   get "/learning", to: "languages#languages"
   get "/uncompleted/:id", to: "flashcards#uncompleted"
   get "/next/:id", to: "flashcards#next"
end
