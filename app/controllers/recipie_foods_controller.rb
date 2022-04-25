class RecipieFoodsController < ApplicationController
  before_action :set_recipie_food, only: %i[ show edit update destroy ]

  # GET /recipie_foods or /recipie_foods.json
  def index
    @recipie_foods = RecipieFood.all
  end

  # GET /recipie_foods/1 or /recipie_foods/1.json
  def show
  end

  # GET /recipie_foods/new
  def new
    @recipie_food = RecipieFood.new
  end

  # GET /recipie_foods/1/edit
  def edit
  end

  # POST /recipie_foods or /recipie_foods.json
  def create
    @recipie_food = RecipieFood.new(recipie_food_params)

    respond_to do |format|
      if @recipie_food.save
        format.html { redirect_to recipie_food_url(@recipie_food), notice: "Recipie food was successfully created." }
        format.json { render :show, status: :created, location: @recipie_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipie_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipie_foods/1 or /recipie_foods/1.json
  def update
    respond_to do |format|
      if @recipie_food.update(recipie_food_params)
        format.html { redirect_to recipie_food_url(@recipie_food), notice: "Recipie food was successfully updated." }
        format.json { render :show, status: :ok, location: @recipie_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipie_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipie_foods/1 or /recipie_foods/1.json
  def destroy
    @recipie_food.destroy

    respond_to do |format|
      format.html { redirect_to recipie_foods_url, notice: "Recipie food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipie_food
      @recipie_food = RecipieFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipie_food_params
      params.require(:recipie_food).permit(:quantity)
    end
end
