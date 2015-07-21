require 'test_helper'

class QuizControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get gerar_quiz" do
    get :gerar_quiz
    assert_response :success
  end

end
