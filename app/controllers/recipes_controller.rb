class RecipesController < ApplicationController
  def index
  	if !params[:ingred].nil?
  		@recipes = Recipe.for(params[:ingred])
  	end
  end
end
