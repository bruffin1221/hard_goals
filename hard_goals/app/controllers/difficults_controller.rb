class DifficultsController < ApplicationController

  get "/difficults" do
    if logged_in?
       @difficults=User.find_by_id(session[:id])
       erb :"/difficults/index.html"
    elsif
      redirect "/"
    end
  end

  get "/difficults/new" do
    if logged_in?
      @required_action=User.find_by_id(session[:id])
      erb :"/difficults/new.html"
    elsif 
      redirect "/"
    end
  end 

  post "/difficults" do
    if params.has_key?(:require) && logged_in?
      require_action=params[:require][:require_ids]
      require_id=require_action.first.to_i
      require_info=Required.find_by_id(require_id)
      @difficult=Difficult.find_or_create_by(name: params[:name], description: params[:description],
      tactic_1: params[:tactic_1], tactic_2: params[:tactic_2], tactic_3: params[:tactic_3], 
      heartfelt_id: require_info.heartfelt_id, animate_id: require_info.animate_id, 
      required_id: require_info.id, user_id: session[:id])
      redirect "/difficults/#{@difficult.id}"
    elsif !params.has_key?(:require)
      redirect "/difficults/new"
    elsif !logged_in?
      redirect "/"
    end
  end 

 
  get "/difficults/:id" do
      @difficult=Difficult.find_by_id(params[:id])
      if logged_in? && @difficult.user.id==current_user.id
        erb :"/difficults/show.html"
    elsif
      redirect "/"
    end
  end 

  get "/difficults/:id/edit" do
      @difficult=Difficult.find_by_id(params[:id])
      if logged_in? && @difficult.user_id==current_user.id
      erb :"/difficults/edit.html"
    elsif
      redirect "/"
    end
  end 

  patch "/difficults/:id" do
    if logged_in?
      @difficult=Difficult.find_by_id(params[:id]) 
      @difficult.update(name: params[:name], description: params[:description], tactic_1: params[:tactic_1], 
      tactic_2: params[:tactic_2], tactic_3: params[:tactic_3])
      redirect "/difficults/#{@difficult.id}"
    elsif
      redirect "/"
    end
  end

  delete "/difficults/:id" do
    Difficult.find_by_id(params[:id]).delete
    redirect "/difficults"
  end

end
