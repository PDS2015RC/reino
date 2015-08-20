class QuizController < ApplicationController



  def index
  	@lesson = Lesson.new(lesson_params)
  	@video = @lesson.url
  	@questions = Question.where(lesson: @lesson.subject).order("RANDOM()").limit(5)
  end
  
  def gerar_quiz
  	
  end

  def answer
    @answer1 = params[:answer1]
    @answer2 = params[:answer2]
    @answer3 = params[:answer3]
    @answer4 = params[:answer4]
    @answer5 = params[:answer5]  
    @statement1 = params[:statement1]
    @statement2 = params[:statement2]
    @statement3 = params[:statement3]
    @statement4 = params[:statement4]
    @statement5 = params[:statement5]
    @question1 = Question.where(statement: @statement1).first
    @question2 = Question.where(statement: @statement2).first
    @question3 = Question.where(statement: @statement3).first
    @question4 = Question.where(statement: @statement4).first
    @question5 = Question.where(statement: @statement5).first
    @answers = [@answer1, @answer2, @answer3, @answer4, @answer5]

    @questions_answers = [@question1.a, @question2.a, @question3.a, @question4.a, @question5.a] 
    @result = 0

    for i in 0..4 do
      if (@answers[i] == @questions_answers[i])
         @result = @result + 1
      end  
    end  

  end  

  def lesson_params
      params.permit(:subject, :url)
  end

  
end
