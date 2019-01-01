class PostsController < ApplicationController
  def index
    posts1 = Post.created_today
    posts2 = Post.created_yesterday
    posts3 = Post.created_a_week_ago
    posts4 = Post.created_a_month_ago
    posts5 = Post.created_a_year_ago
    @posts = posts1 + posts2 + posts3 + posts4 + posts5
    
    @posts = @posts.sort_by{|post| post[:created_at].strftime('%X')}.reverse
    @posts = @posts.select do |post|
      post[:created_at].strftime('%X') <= Time.zone.now.strftime('%X')
    end
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end
