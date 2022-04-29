class RecipieFoodsController < ApplicationController
  # before_action :set_recipe_food, only: %i[show edit update destroy]

  # GET /recipe_foods or /recipe_foods.json
  def index
    @recipie_foods = Food.includes(:user).all
  end

  # GET /recipe_foods/1 or /recipe_foods/1.json
  def show; end

  # GET /recipe_foods/new
  def new
    @recipie_food = RecipieFood.new
    @recipe = Recipe.find(params[:recipe_id])
    @recipie_food.recipe_id = @recipe.id
    @foods = Food.all
  end

  # GET /recipe_foods/1/edit
  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @recipie_food = RecipieFood.find(params[:id])
  end

  # POST /recipe_foods or /recipe_foods.json
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipie_food = @recipe.recipie_foods.new(recipie_food_params)

    respond_to do |format|
      if @recipie_food.save
        format.html { redirect_to recipe_url(@recipe), notice: 'Recipe food was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_foods/1 or /recipe_foods/1.json
  def update
    @recipe = Recipe.find(params[:recipe_id])
    @recipie_food = @recipe.recipie_foods

    respond_to do |format|
      if @recipie_food.update(recipie_food_params)
        format.html { redirect_to recipes_path(params[:recipe_id]), notice: 'Recipe food was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipie_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_foods/1 or /recipe_foods/1.json
  def destroy
    @recipie_food = RecipieFood.find(params[:id])
    @recipie_food.destroy

    respond_to do |format|
      format.html { redirect_to recipes_path, notice: 'Recipe food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_recipe_food
  #   @recipe_food = RecipeFood.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def recipie_food_params
    params.require(:recipie_food).permit(:quantity, :food_id)
  end
end
