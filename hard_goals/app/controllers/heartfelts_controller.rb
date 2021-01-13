class HeartfeltsController < ApplicationController
  
  configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "password_security"
  end
  
  # GET: /heartfelts
  get "/heartfelts" do
    if logged_in?
      @heartfelts=Heartfelt.all
      erb :"/heartfelts/index.html"
    elsif
      redirect "/"
    end
  end

  # GET: /heartfelts/new
  get "/heartfelts/new" do
    if logged_in?  
      erb :"/heartfelts/new.html"
    elsif
      redirect "/"
    end
  end

  # POST: /heartfelts
  post "/heartfelts" do
    if logged_in?
      @heartfelts=Heartfelt.find_or_create_by(name: params[:name], description: params[:description], enjoyments: params[:enjoyments], benefits: params[:benefits], rewards: params[:rewards]) 
      redirect "/heartfelts/#{@heartfelts.id}"
    elsif
      redirect "/"
    end
  end

  # GET: /heartfelts/5/edit
  get "/heartfelts/:id/edit" do
    if logged_in?
      @heartfelts= Heartfelt.find_by_id(params[:id]) 
      erb :"/heartfelts/edit.html"
    elsif 
      redirect "/"
    end
  end

  # PATCH: /heartfelts/5
  patch "/heartfelts/:id" do
    if logged_in>
      @heartfelts=Heartfelt.find_by_id(params[:id])
      @heartfelts.update(name: params[:name], description: params[:description], enjoyments: params[:enjoyments], benefits: params[:benefits], rewards: params[:rewards])
      redirect "/heartfelts/#{@heartfelts.id}"
    elsif 
      redirect "/"
    end
  end

  # DELETE: /heartfelts/5/delete
  delete "/heartfelts/:id" do
    if logged_in?
      Heartfelt.find_by_id(params[:id]).destroy
      redirect "/heartfelts"
    elsif
      redirect "/"
    end
  end

   # GET: /heartfelts/5
   get "/heartfelts/:id" do
    if logged_in?
      @heartfelts=Heartfelt.find_by_id(params[:id])
      erb :"/heartfelts/show.html"
    elsif
      redirect "/"
    end
  end

    
end

   

