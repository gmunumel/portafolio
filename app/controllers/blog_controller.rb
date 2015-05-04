class BlogController < ApplicationController
  def index
    @posts = Post.paginate(:page => params[:page], :order => 'created_at DESC')
    #@posts = Post.page(params[:page]).order(:created_at)
  end

  def show
    @post = Post.find(params[:id])
  end
end
