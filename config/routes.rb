Rails.application.routes.draw do
  post 'push' , to: "push#create" , as: "push"
  get '/home', to: "home#index", as: "home"
end

