class AnimatesController < ApplicationController

  # GET: /animates
  get "/animates" do
    @animates=Animate.all
    erb :"/animates/index.html"
  end

  # GET: /animates/new
  get "/animates/new" do
    @heartfelts=Heartfelt.all
    erb :"/animates/new.html"
  end

  # POST: /animates
  post "/animates" do
    goal=params["heart"]["heart_ids"]
    @goal= Heartfelt.find_by(name: goal.first)
    @animate=Animate.find_or_create_by(name: params[:name], description: params[:description], size: params[:size],
    color: params[:color], emotion: params[:emotion], setting: params[:setting], movement: params[:movement],
    distinct_parts: params[:distinct_parts], heartfelt_id: @goal.id)
    redirect "/animates/#{@animate.id}"
  end

  # GET: /animates/5
  get "/animates/:id" do
    @animate=Animate.find_by_id(params[:id])
    erb :"/animates/show.html"
  end

  # GET: /animates/5/edit
  get "/animates/:id/edit" do
    @animate= Animate.find_by_id(params[:id])
    erb :"/animates/edit.html"
  end

  # PATCH: /animates/5
  patch "/animates/:id" do
    @animate=Animate.find_by_id(params[:id])
    @animate.update(name: params[:name], description: params[:description], size: params[:size],
    color: params[:color], emotion: params[:emotion], setting: params[:setting], movement: params[:movement],
    distinct_parts: params[:distinct_parts])
    redirect "/animates/#{@animate.id}"
  end

  # DELETE: /animates/5/delete
  delete "/animates/:id" do
    Animate.find_by_id(params[:id]).destroy
    redirect "/animates"
  end
end
