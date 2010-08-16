class HomeController < ApplicationController
  def index
      @posts = Post.limit(5).order("created_at desc")
      @comments = Comment.limit(10).order("created_at desc")
  end
end
