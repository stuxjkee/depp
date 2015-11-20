class WelcomeController < ApplicationController
  def index
    @last_blog = Blog.last
    @news = News.all.limit(2)
  end
  def about

  end

  def new_feedback
    @feedback = Feedback.new
  end

  def create_feedback
    feedback = Feedback.new(feedback_params)
    if feedback.save
      redirect_to '/'
    else
      redirect_to '/feedback'
    end
  end

  private
  def feedback_params
    params.require(:feedback).permit(:name, :email, :body)
  end
end
