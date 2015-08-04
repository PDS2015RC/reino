class QuizController < ApplicationController

  before_action :authenticate_user!

  def index
  	@lesson = Lesson.new(lesson_params)
  	@video = @lesson.url
  	@questions = Question.where(lesson: @lesson.subject).order("RANDOM()").limit(5)
  end
  
  def gerar_quiz
  	
  end


  def lesson_params
      params.permit(:subject, :url)
  end

  
end
