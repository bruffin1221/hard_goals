require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    
    enable :sessions
    set :session_secret, "password_security"
  end

  get "/" do
    erb :welcome
  end

  helpers do 

    def logged_in?
      !!session[:id]
    end

    def logged_out!
      session.clear
    end
    
    def current_user
      User.find_by_id(session[:id])
    end
  
  end
  
end
