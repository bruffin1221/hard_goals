class DifficultsController < ApplicationController

  get "/difficults" do
    if logged_in?
       @difficults=Difficult.all
       erb :"/difficults/index.html"
    elsif
      redirect "/"
    end
  end

  # GET: /difficults/new
  get "/difficults/new" do
    @required_action=Required.all
    erb :"/difficults/new.html"
  end

  # POST: /difficults
  post "/difficults" do
    require_action=params[:require][:require_ids]
    require_id=require_action.first.to_i
    require_info=Required.find_by_id(require_id)
    @difficult=Difficult.find_or_create_by(name: params[:name], description: params[:description],
    tactic_1: params[:tactic_1], tactic_2: params[:tactic_2], tactic_3: params[:tactic_3], 
    heartfelt_id: require_info.heartfelt_id, animate_id: require_info.animate_id, required_id: require_info.id)
   redirect "/difficults/#{@difficult.id}"
  end

  # GET: /difficults/5
  get "/difficults/:id" do
    @difficult=Difficult.find_by_id(params[:id])
    erb :"/difficults/show.html"
  end

  # GET: /difficults/5/edit
  get "/difficults/:id/edit" do
    @difficult=Difficult.find_by_id(params[:id])
    erb :"/difficults/edit.html"
  end

  # PATCH: /difficults/5
  patch "/difficults/:id" do
    @difficult=Difficult.find_by_id(params[:id]) 
    @difficult.update(name: params[:name], description: params[:description], tactic_1: 
    params[:tactic_1], tactic_2: params[:tactic_2], tactic_3: params[:tactic_3])
    redirect "/difficults/#{@difficult.id}"
  end

  # DELETE: /difficults/5/delete
  delete "/difficults/:id" do
    Difficult.find_by_id(params[:id]).delete
    redirect "/difficults"
  end
end
