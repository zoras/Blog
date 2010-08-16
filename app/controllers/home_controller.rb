class HomeController < ApplicationController
  def index
      @posts = Post.limit(5)
      @comments = Comment.limit(10)
  end
end
