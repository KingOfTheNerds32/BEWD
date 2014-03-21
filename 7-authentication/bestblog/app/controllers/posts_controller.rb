class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
	def show
		@post = Post.find(params[:id])
	end
	def new

	end
	def create
		post = Post.create(
				title: params[:title],
				gif_url: params[:gif_url]
			)
		redirect_to "/posts/#{post.id}"
	end
end