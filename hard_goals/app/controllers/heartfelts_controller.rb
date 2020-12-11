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
    redirect "/heartfelts"
  end

  # GET: /heartfelts/5
  get "/heartfelts/:id" do
    erb :"/heartfelts/show.html"
  end

  # GET: /heartfelts/5/edit
  get "/heartfelts/:id/edit" do
    erb :"/heartfelts/edit.html"
  end

  # PATCH: /heartfelts/5
  patch "/heartfelts/:id" do
    redirect "/heartfelts/:id"
  end

  # DELETE: /heartfelts/5/delete
  delete "/heartfelts/:id/delete" do
    redirect "/heartfelts"
  end
end
