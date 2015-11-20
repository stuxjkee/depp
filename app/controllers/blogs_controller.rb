class BlogsController < ApplicationController

  load_and_authorize_resource

  def index
    @blogs = Blog.order(created_at: :desc)
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    blog = Blog.new(blog_params)
    if blog.save
      redirect_to blog
    else
      flash[:danger] = 'Something was wrong'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
      flash[:success] = 'Блог успішно видалено'
      redirect_to blogs_path
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :html)
  end
end
