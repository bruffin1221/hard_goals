class AnimatesController < ApplicationController

  # GET: /animates
  get "/animates" do
    erb :"/animates/index.html"
  end

  # GET: /animates/new
  get "/animates/new" do
    erb :"/animates/new.html"
  end

  # POST: /animates
  post "/animates" do
    redirect "/animates"
  end

  # GET: /animates/5
  get "/animates/:id" do
    erb :"/animates/show.html"
  end

  # GET: /animates/5/edit
  get "/animates/:id/edit" do
    erb :"/animates/edit.html"
  end

  # PATCH: /animates/5
  patch "/animates/:id" do
    redirect "/animates/:id"
  end

  # DELETE: /animates/5/delete
  delete "/animates/:id/delete" do
    redirect "/animates"
  end
end
