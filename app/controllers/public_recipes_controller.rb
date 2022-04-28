class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.all.where('public = true').order(created_at: :desc)
  end
end
