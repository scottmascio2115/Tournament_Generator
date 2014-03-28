class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post= Post.new(post_params)

    if @post.save
      render :json => @post, status: :created
    else
      render :json => @post, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def new
    @post= Post.new
  end

  private

  def post_params 
    params.require(:post).permit(:title, :description, :author)
  end

end
