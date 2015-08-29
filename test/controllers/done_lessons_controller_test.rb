require 'test_helper'

class DoneLessonsControllerTest < ActionController::TestCase
  setup do
    @done_lesson = done_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:done_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create done_lesson" do
    assert_difference('DoneLesson.count') do
      post :create, done_lesson: { Character_id: @done_lesson.Character_id, Lesson_id: @done_lesson.Lesson_id }
    end

    assert_redirected_to done_lesson_path(assigns(:done_lesson))
  end

  test "should show done_lesson" do
    get :show, id: @done_lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @done_lesson
    assert_response :success
  end

  test "should update done_lesson" do
    patch :update, id: @done_lesson, done_lesson: { Character_id: @done_lesson.Character_id, Lesson_id: @done_lesson.Lesson_id }
    assert_redirected_to done_lesson_path(assigns(:done_lesson))
  end

  test "should destroy done_lesson" do
    assert_difference('DoneLesson.count', -1) do
      delete :destroy, id: @done_lesson
    end

    assert_redirected_to done_lessons_path
  end
end
