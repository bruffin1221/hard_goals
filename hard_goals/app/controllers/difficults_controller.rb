class DifficultsController < ApplicationController

  # GET: /difficults
  get "/difficults" do
    @difficult=Difficult.all
    erb :"/difficults/index.html"
  end

  # GET: /difficults/new
  get "/difficults/new" do
    @required_action=Required.all
    erb :"/difficults/new.html"
  end

  # POST: /difficults
  post "/difficults" do

  # redirect "/difficults"
  end

  # GET: /difficults/5
  get "/difficults/:id" do
    erb :"/difficults/show.html"
  end

  # GET: /difficults/5/edit
  get "/difficults/:id/edit" do
    erb :"/difficults/edit.html"
  end

  # PATCH: /difficults/5
  patch "/difficults/:id" do
    redirect "/difficults/:id"
  end

  # DELETE: /difficults/5/delete
  delete "/difficults/:id/delete" do
    redirect "/difficults"
  end
end
