class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.place_id = params["place_id"]
    #@post.user_id = session[:user_id] 
  end

  def create 
      if @current_user # maybe not necesassry as I conctrol places page but good to have double confirmation
        @post = Post.new(params["post"])
        @post.user_id = session[:user_id]
        @post.save
      else  
        flash[:notice] = "Login First"
      end 
        redirect_to "/places/#{@post.place.id}"
  end

end
