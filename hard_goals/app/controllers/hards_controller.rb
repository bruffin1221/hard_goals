class HardsController < ApplicationController

  # GET: /hards
  get "/hards" do
    erb :"/hards/index.html"
  end

  # GET: /hards/new
  get "/hards/new" do
    erb :"/hards/new.html"
  end

  # POST: /hards
  post "/hards" do
    redirect "/hards"
  end

  # GET: /hards/5
  get "/hards/:id" do
    erb :"/hards/show.html"
  end

  # GET: /hards/5/edit
  get "/hards/:id/edit" do
    erb :"/hards/edit.html"
  end

  # PATCH: /hards/5
  patch "/hards/:id" do
    redirect "/hards/:id"
  end

  # DELETE: /hards/5/delete
  delete "/hards/:id/delete" do
    redirect "/hards"
  end
end
