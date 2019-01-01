class PostsController < ApplicationController
  def index
    @posts = Post.all.sort_by{|post| post[:created_at].strftime('%X')}.reverse
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end
