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
      body: params[:body]
    )

    redirect_to "/posts/#{post.id}"
  end


  def edit
    @post = Post.find(params[:id])
  end


  def update
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      body: params[:body]
    )

    redirect_to "/posts/#{post.id}"
  end


  def destroy
    Post.destroy(params[:id])

    redirect_to "/posts"
  end
end
