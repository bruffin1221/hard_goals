class UsersController < ApplicationController
  
  configure do
    set :views, "app/views"
     enable :sessions
     set :session_secret, "password_security"
    end

    get "/signup" do 
      if !logged_in?
          erb :'/users/signup'
      elsif logged_in?
          redirect "/heartfelts" 
      end
  end
  
  post "/signup" do 
    if !params[:username].empty? && !params[:password].empty?
      user=User.new(username: params[:username], email: params[:email], password: params[:password])
      user.save
      session[:id]=user.id
      redirect "/hearfelts"
    else
      redirect "/signup"
    end
  end
  
  
  get "/login" do 
    if !logged_in?
      erb :'/users/login'
    else
      redirect "/"
    end
  end
  
  post "/login" do
    @user = User.find_by(username: params[:username])
    if @user=@user.authenticate(params[:password])
      session[:id]=@user.id
      redirect "/heartfelts"
      else
          redirect "/login"
      end
  end
  
  get "/users/:id" do
          @users=User.find_by_id(params[:id])
          erb :'/users/show'
  end 
  
  get "/logout" do
      logged_out!
      redirect "/" 
  end
  


end 