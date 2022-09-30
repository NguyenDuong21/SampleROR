Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope "(:locale)", locale: /en|vi|jp/ do
    root "application#hello"
    get "/home" , to: "static_pages#home"
    get "static_pages/help"
    get "users/new"
    get "static_pages/about"
    get "static_pages/contact"
  end
  
end
