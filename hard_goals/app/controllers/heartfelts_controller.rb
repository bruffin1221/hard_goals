class HeartfeltsController < ApplicationController

  # GET: /heartfelts
  get "/heartfelts" do
    @heartfelts=Heartfelt.all
    erb :"/heartfelts/index.html"
  end

  # GET: /heartfelts/new
  get "/heartfelts/new" do
    erb :"/heartfelts/new.html"
  end

  # POST: /heartfelts
  post "/heartfelts" do
    @heartfelts=Heartfelt.find_or_create_by(name: params[:name], description: params[:description], enjoyments: params[:enjoyments], benefits: params[:benefits], rewards: params[:rewards]) 
    redirect "/heartfelts/#{@heartfelts.id}"
  end

  # GET: /heartfelts/5/edit
  get "/heartfelts/:id/edit" do
    @heartfelts= Heartfelt.find_by_id(params[:id]) 
    erb :"/heartfelts/edit.html"
  end

  # PATCH: /heartfelts/5
  patch "/heartfelts/:id" do
    @heartfelts=Heartfelt.find_by_id(params[:id])
    @heartfelts.update(name: params[:name], description: params[:description], enjoyments: params[:enjoyments], benefits: params[:benefits], rewards: params[:rewards])
    redirect "/heartfelts/#{@heartfelts.id}"
  end

  # DELETE: /heartfelts/5/delete
  delete "/heartfelts/:id" do
    Heartfelt.find_by_id(params[:id]).destroy
    redirect "/heartfelts"
  end

   # GET: /heartfelts/5
   get "/heartfelts/:id" do
    @heartfelts=Heartfelt.find_by_id(params[:id])
    erb :"/heartfelts/show.html"
  end

    
end

   

