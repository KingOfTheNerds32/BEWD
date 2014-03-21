class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:post_id_number])
  end
  def new

  end
  def create
    Post.create(post_params)
    redirect_to '/posts'
  end

private
  def post_params
    params.permit(:title, :body, :author)
  end
end