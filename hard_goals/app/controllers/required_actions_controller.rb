class RequiredActionsController < ApplicationController

  # GET: /required_actions
  get "/required_actions" do
    erb :"/required_actions/index.html"
  end

  # GET: /required_actions/new
  get "/required_actions/new" do
    erb :"/required_actions/new.html"
  end

  # POST: /required_actions
  post "/required_actions" do
    redirect "/required_actions"
  end

  # GET: /required_actions/5
  get "/required_actions/:id" do
    erb :"/required_actions/show.html"
  end

  # GET: /required_actions/5/edit
  get "/required_actions/:id/edit" do
    erb :"/required_actions/edit.html"
  end

  # PATCH: /required_actions/5
  patch "/required_actions/:id" do
    redirect "/required_actions/:id"
  end

  # DELETE: /required_actions/5/delete
  delete "/required_actions/:id/delete" do
    redirect "/required_actions"
  end
end
