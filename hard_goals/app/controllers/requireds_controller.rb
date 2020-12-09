class RequiredsController < ApplicationController

  # GET: /requireds
  get "/requireds" do
    erb :"/requireds/index.html"
  end

  # GET: /requireds/new
  get "/requireds/new" do
    erb :"/requireds/new.html"
  end

  # POST: /requireds
  post "/requireds" do
    redirect "/requireds"
  end

  # GET: /requireds/5
  get "/requireds/:id" do
    erb :"/requireds/show.html"
  end

  # GET: /requireds/5/edit
  get "/requireds/:id/edit" do
    erb :"/requireds/edit.html"
  end

  # PATCH: /requireds/5
  patch "/requireds/:id" do
    redirect "/requireds/:id"
  end

  # DELETE: /requireds/5/delete
  delete "/requireds/:id/delete" do
    redirect "/requireds"
  end
end
