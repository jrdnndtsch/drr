class SkinDietsController < ApplicationController
  before_action :set_skin_diet, only: [:show, :edit, :update, :destroy]

  # GET /skin_diets
  # GET /skin_diets.json
  def index
    @skin_diets = SkinDiet.all
  end

  # GET /skin_diets/1
  # GET /skin_diets/1.json
  def show
  end

  # GET /skin_diets/new
  def new
    @skin_diet = SkinDiet.new
  end

  # GET /skin_diets/1/edit
  def edit
  end

  # POST /skin_diets
  # POST /skin_diets.json
  def create
    @skin_diet = SkinDiet.new(skin_diet_params)

    respond_to do |format|
      if @skin_diet.save
        format.html { redirect_to @skin_diet, notice: 'Skin diet was successfully created.' }
        format.json { render :show, status: :created, location: @skin_diet }
      else
        format.html { render :new }
        format.json { render json: @skin_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skin_diets/1
  # PATCH/PUT /skin_diets/1.json
  def update
    respond_to do |format|
      if @skin_diet.update(skin_diet_params)
        format.html { redirect_to @skin_diet, notice: 'Skin diet was successfully updated.' }
        format.json { render :show, status: :ok, location: @skin_diet }
      else
        format.html { render :edit }
        format.json { render json: @skin_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skin_diets/1
  # DELETE /skin_diets/1.json
  def destroy
    @skin_diet.destroy
    respond_to do |format|
      format.html { redirect_to admin_show_path, notice: 'Skin diet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skin_diet
      @skin_diet = SkinDiet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skin_diet_params
      params.require(:skin_diet).permit(:title, :image, :pdf)
    end
end
