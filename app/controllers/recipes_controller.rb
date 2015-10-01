class RecipesController < ApplicationController
  def index
  	if !params[:ingred].nil?
  	else
  		params[:ingred] = "chocolate"
  	end
  	@recipes = Recipe.for(params[:ingred])
  end
end
