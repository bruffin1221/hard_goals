class RequiredsController < ApplicationController

  get "/requireds" do
    if logged_in?
      @required_actions= Required.all
      erb :"/requireds/index.html"
    elsif
      redirect "/"
    end
  end

  get "/requireds/new" do
    if logged_in?
      @animates= Animate.all
      erb :"/requireds/new.html"
    elsif
      redirect "/"
    end
  end

  post "/requireds" do
    if params.has_key?(:animate) && logged_in?
      animate=params[:animate][:animate_ids]
      animate_id=animate.first.to_i
      animate_info=Animate.find_by_id(animate_id)
      @required_action=Required.find_or_create_by(name: params[:name], description: params[:description],
      deadline: params[:deadline], heartfelt_id: animate_info.heartfelt_id, animate_id: animate_info.id)
      redirect "/requireds/#{@required_action.id}"
    elsif !params.has_key?(:animate)
      redirect "/requireds/new"
    elsif !logged_in?
      redirect "/"
    end
  end

  get "/requireds/:id" do
    if logged_in?
      @require_action= Required.find_by_id(params[:id])
      erb :"/requireds/show.html"
    elsif 
      redirect "/"
    end
  end

  get "/requireds/:id/edit" do
    if logged_in?
      @required= Required.find_by_id(params[:id])
      erb :"/requireds/edit.html"
    elsif
      redirect "/"
    end
  end

  patch "/requireds/:id" do
    if logged_in?
      @require_action=Required.find_by_id(params[:id])
      @require_action.update(name: params[:name], description: params[:description]) 
      redirect "/requireds/#{@require_action.id}"
    elsif 
      redirect "/"
    end
  end

  delete "/requireds/:id" do
    Required.find_by_id(params[:id]).delete
    redirect "/requireds"
  end
end
