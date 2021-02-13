class HeartfeltsController < ApplicationController
   
 
  get "/heartfelts" do
    if logged_in? 
      @hearts=User.find_by_id(session[:id])
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
      @heartfelts=Heartfelt.find_or_create_by(name: params[:name], description: params[:description],
       enjoyments: params[:enjoyments], benefits: params[:benefits], rewards: params[:rewards], user_id: session[:id]) 
      redirect "/users/#{@heartfelts.user_id}"
    elsif
      redirect "/"
    end
  end

  # GET: /heartfelts/5/edit
  get "/heartfelts/:id/edit" do
      @heartfelts= Heartfelt.find_by_id(params[:id]) 
      if logged_in? && @heartfelts.user.id==current_user.id 
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
    @heartfelts=Heartfelt.find_by_id(params[:id])
    if logged_in? && @heartfelts.user.id==current_user.id
      erb :"/heartfelts/show.html"
    else
      redirect "/"
    end
  end

    
end

 


