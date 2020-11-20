class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new # instance vide pour le formulaire
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.valid?
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
