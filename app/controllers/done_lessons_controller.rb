class DoneLessonsController < ApplicationController
  before_action :set_done_lesson, only: [:show, :edit, :update, :destroy]

  # GET /done_lessons
  # GET /done_lessons.json
  def index
    @done_lessons = DoneLesson.all
  end

  # GET /done_lessons/1
  # GET /done_lessons/1.json
  def show
  end

  # GET /done_lessons/new
  def new
    @done_lesson = DoneLesson.new
  end

  # GET /done_lessons/1/edit
  def edit
  end

  # POST /done_lessons
  # POST /done_lessons.json
  def create
    @done_lesson = DoneLesson.new(done_lesson_params)

    respond_to do |format|
      if @done_lesson.save
        format.html { redirect_to @done_lesson, notice: 'Done lesson was successfully created.' }
        format.json { render :show, status: :created, location: @done_lesson }
      else
        format.html { render :new }
        format.json { render json: @done_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /done_lessons/1
  # PATCH/PUT /done_lessons/1.json
  def update
    respond_to do |format|
      if @done_lesson.update(done_lesson_params)
        format.html { redirect_to @done_lesson, notice: 'Done lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @done_lesson }
      else
        format.html { render :edit }
        format.json { render json: @done_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /done_lessons/1
  # DELETE /done_lessons/1.json
  def destroy
    @done_lesson.destroy
    respond_to do |format|
      format.html { redirect_to done_lessons_url, notice: 'Done lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_done_lesson
      @done_lesson = DoneLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def done_lesson_params
      params.require(:done_lesson).permit(:Lesson_id, :Character_id)
    end
end
