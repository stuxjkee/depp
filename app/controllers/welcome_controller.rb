class WelcomeController < ApplicationController
  def index
    @last_blog = Blog.last
    @news = News.all.limit(2)

  end
end
