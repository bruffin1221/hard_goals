class RequiredsController < ApplicationController

  # GET: /requireds
  get "/requireds" do
    @required_actions= Required.all
    erb :"/requireds/index.html"
  end

  # GET: /requireds/new
  get "/requireds/new" do
    @animates= Animate.all
    erb :"/requireds/new.html"
  end

  # POST: /requireds
  post "/requireds" do
    animate=params[:animate][:animate_ids]
    animate_id=animate.first.to_i
    animate_info=Animate.find_by_id(animate_id)
    @required_action=Required.find_or_create_by(name: params[:name], description: params[:description],
    deadline: params[:deadline], heartfelt_id: animate_info.heartfelt_id, animate_id: animate_info.id)
    redirect "/requireds/#{@required_action.id}"
  end

  # GET: /requireds/5
  get "/requireds/:id" do
    @require_action= Required.find_by_id(params[:id])
    erb :"/requireds/show.html"
  end

  # GET: /requireds/5/edit
  get "/requireds/:id/edit" do
    @required= Required.find_by_id(params[:id])
    erb :"/requireds/edit.html"
  end

  # PATCH: /requireds/5
  patch "/requireds/:id" do
    @require_action=Required.find_by_id(params[:id])
    @require_action.update(name: params[:name], description: params[:description], 
    deadline: params[:deadline])
    redirect "/requireds/#{@require_action.id}"
  end

  # DELETE: /requireds/5/delete
  delete "/requireds/:id" do
    Required.find_by_id(params[:id]).delete
    redirect "/requireds"
  end
end
