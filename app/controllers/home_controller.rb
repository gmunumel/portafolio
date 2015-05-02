class HomeController < ApplicationController
  def index
    @projects = Project.order(:created_at).take(2)
    @posts = Post.order(:created_at).take(2)
  end
end
