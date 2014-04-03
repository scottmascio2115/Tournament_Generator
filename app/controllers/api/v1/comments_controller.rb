class Api::V1::CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end

  def create
    @comment= Comment.new(comment_params)

    if @comment.save
      render :json => @comment, status: :created
    else
      render :json => @comment, status: :unprocessable_entity
    end
  end

  def new
    @comment= Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :description, :replier)
  end

end
