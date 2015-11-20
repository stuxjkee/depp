class NewsController < ApplicationController

  load_and_authorize_resource

  def index
    @news = News.order(created_at: :desc)
  end

  def show
    @news = News.find(params[:id])
  end

  def edit
  end

  def destroy
    @post = News.find(params[:id])
    if @post.destroy
      flash[:info] = 'Новину успішно видалено'
      redirect_to news_index_path
    end
  end

  def new
  end

  def create
    news = News.create(news_params)
    if news.save
      redirect_to news
    else
      flash[:danger] = "Something was wrong"
      redirect_to '/'
    end
  end

  private
  def news_params
    params.require(:news).permit(:title, :html)
  end
end
