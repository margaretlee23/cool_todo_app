Rails.application.routes.draw do


    root to: 'site#index'
    get '/signup', to: 'site#signup'
    get '/login', to: 'site#login'
    get '/contact', to: 'site#contact'
    get '/about', to: 'site#about'

    # Also just to keep it RESTful
    get '/tasks', to: 'tasks#index'
end
