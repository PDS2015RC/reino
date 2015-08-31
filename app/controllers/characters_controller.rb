class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.where(User_id: current_user)
    @inventories = Inventory.where(User_id: current_user)
  end

  def addItem
    item_name = params[:item_name]
    item_img = params[:item_img]
    item_part = params[:part]
    @character = Character.where(User_id: current_user).first
    if item_part == "helmet"
      @character.helmet = item_img
    elsif item_part == "shield"
      @character.shield = item_img
    elsif item_part == "weapon"
      @character.weapon = item_img
    elsif item_part == "armor"
      @character.armor = item_img            
    end  
    
    if @character.save
    redirect_to :action => :index
    end
  end

  def removeItem
    item_part = params[:part]
    @character = Character.where(User_id: current_user).first
    if item_part == "helmet"
      @character.helmet = "none"
    elsif item_part == "shield"
      @character.shield = "none"
    elsif item_part == "weapon"
      @character.weapon = "none"
    elsif item_part == "armor"
      @character.armor = "none"            
    end  


    if @character.save
    redirect_to :action => :index
    end
  end  
  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @characters = Character.where(User_id: current_user)
    if(@characters.size >= 1)
      redirect_to characters_url
    else  
      @character = Character.new
    end  
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @inventory = Inventory.new
    @inventory.User_id = current_user.id
    @character = Character.new(character_params)
    @character.User_id = current_user.id
    @character.level = 1
    @character.xp = 0
    @character.gold = 200
    @character.helmet = "none"
    @character.armor = "none"
    @character.weapon = "none"
    @character.shield = "none"
    @character.wrong = 0
    @character.correct = 0
    respond_to do |format|
      if @character.save && @inventory.save
        format.html { redirect_to characters_url, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @done_lessons = DoneLesson.where(character_id: @character.id)
    @done_lessons.each do |done_lesson|
      done_lesson.destroy
    end  
    @character.destroy
    @inventories = Inventory.where(User_id: current_user)
    @inventories.each do |inventory|
      inventory.destroy
    end  
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :xp, :gold, :hair, :skin, :shirt, :pants, :User_id)
    end
end
