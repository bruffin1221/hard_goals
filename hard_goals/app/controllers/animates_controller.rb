class AnimatesController < ApplicationController


  get "/animates" do
    if logged_in?
      @user=User.find_by_id(session[:id])
      erb :"/animates/index.html"
    elsif
      redirect "/"
    end
  end

  get "/animates/new" do
    if logged_in?
      #@heartfelts=Heartfelt.all
      @hearts=User.find_by_id(session[:id])
      erb :"/animates/new.html"
    elsif
      redirect "/"
    end
  end


  post "/animates" do
    if logged_in? && params.has_key?(:heart)
      goal=params[:heart][:heart_ids]
      @goal= Heartfelt.find_by(name: goal.first)
      @animate=Animate.find_or_create_by(name: params[:name], description: params[:description], size: params[:size],
      color: params[:color], emotion: params[:emotion], setting: params[:setting], movement: params[:movement],
      distinct_parts: params[:distinct_parts], heartfelt_id: @goal.id, user_id: session[:id])
      redirect "/animates/#{@animate.id}"
    elsif !params.has_key?(:heart)
       redirect "/animates/new"
    elsif !logged_in?
      redirect "/"
    end
  end

  get "/animates/:id" do
     if logged_in?
      @animate=Animate.find_by_id(params[:id])
      erb :"/animates/show.html"
    elsif
      redirect "/"
    end
  end

  get "/animates/:id/edit" do
    if logged_in?
      @animate= Animate.find_by_id(params[:id])
      erb :"/animates/edit.html"
    elsif
      redirect "/"
    end
  end

  patch "/animates/:id" do
    if logged_in?
      @animate=Animate.find_by_id(params[:id])
      @animate.update(name: params[:name], description: params[:description], size: params[:size],
      color: params[:color], emotion: params[:emotion], setting: params[:setting], movement: params[:movement],distinct_parts: params[:distinct_parts])
      redirect "/animates/#{@animate.id}"
    elsif
      redirect "/"
    end
  end

  delete "/animates/:id" do
    Animate.find_by_id(params[:id]).destroy
    redirect "/animates"
  end
end
