Rails.application.routes.draw do
 
  devise_for :users
  resources :tasks, except: [:index]

  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "error", to: "pages#error"

  get "blog", to: redirect("http://google.com") #to redirect to another url.

  resources :projects do 
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'

  get "*path", to: redirect("/error")
end
