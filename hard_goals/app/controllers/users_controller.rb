class UsersController < ApplicationController
  
  get "/signup" do 
    if !logged_in?
      erb :"/users/signup"
    elsif logged_in?
      redirect "/heartfelts" 
    end
  end
  
  post "/signup" do 
    if params[:username].empty? || params[:password].empty? 
      redirect "/signup"
    elsif User.find_by(username: params[:username])
      redirect "/signup"
    elsif !params[:username].empty? && !params[:password].empty? 
      @user=User.new(username: params[:username], password: params[:password])
      @user.save
      session[:id]=@user.id
      redirect "/heartfelts"
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
    if @user && @user.authenticate(params[:password])
      session[:id]=@user.id
      redirect "/heartfelts"
      else
        redirect "/login"
      end
    end
  
  get "/users/:id" do
    if params[:id].to_i==current_user.id
      @user=User.find_by_id(params[:id])
      erb :'/users/show'
    else
      redirect "/login"
    end 
  end
  
  get "/logout" do
      logged_out!
      redirect "/" 
  end
  


end 