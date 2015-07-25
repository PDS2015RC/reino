class QuizController < ApplicationController

  before_action :authenticate_user!

  def index
  	@questions = Question.order("RANDOM()").limit(5)
  end
  
  def gerar_quiz
  	
  end
end
