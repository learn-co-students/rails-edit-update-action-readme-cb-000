class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
		@post = Post.find_by_id(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		@post.update(title: params[:title]) unless params[:title].empty?
		@post.update(description: params[:description]) unless params[:description].empty?
		redirect_to post_path(@post)
	end

end
