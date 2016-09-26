Rails.application.routes.draw do
  post 'push' , to: "push#create" , as: "push"
  get '/home', to: "home#index", as: "home"
  get '/home2', to: "home#dashboard1", as: "home2"
  get '/home3', to: "home#dashboard2", as: "home3"
end

