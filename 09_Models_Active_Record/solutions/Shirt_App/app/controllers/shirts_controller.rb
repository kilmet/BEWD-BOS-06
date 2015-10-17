class ShirtsController < ApplicationController
  def index
    query = params[:query]
    @shirts = Shirt.where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(get_safe_params(params))
    if @shirt.save
      redirect_to @shirt
    else
      render 'new'
    end
  end

  def show
    @shirt = Shirt.find(params[:id])
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
    @shirt = Shirt.find(params[:id])
    if @shirt.update get_safe_params params
      redirect_to @shirt
    else
      render 'edit'
    end
  end

private

  def get_safe_params params
    params.require(:shirt).permit(:name, :description, :image)
  end

end