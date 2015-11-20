class BlogsController < ApplicationController
  def index
    @blogs = Blog.order(created_at: :desc)
  end

  def new
  end

  def show
    @blog = Blog.find(params[:id])
  end
end
