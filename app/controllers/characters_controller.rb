class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]
  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.where(User_id: current_user)
    @inventories = Inventory.where(User_id: current_user)
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
    respond_to do |format|
      if @character.save && @inventory.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
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
    @character.destroy
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
