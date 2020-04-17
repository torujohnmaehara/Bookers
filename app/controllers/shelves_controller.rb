class ShelvesController < ApplicationController

  def index
  	@shelves = Shelf.all
  end

  def show
  	@shelf = Shelf.find (params[:id])
  end

  def new
  	@shelf = Shelf.new
  end

  def create
    @shelf = Shelf.new(shelf_params)
    @shelf.save
    redirect_to shelf_path(@shelf)
  end

  def edit
  	@shelf = Shelf.find(params[:id])
  end

  def update
  	@shelf = Shelf.find (params[:id])

  	if @shelf.update(shelf_params)
      redirect_to shelf_path(@shelf)
    else
       render 'edit'
    end
  end

  def destroy
    shelf = Shelf.find (params[:id])
  	shelf.destroy
  	redirect_to shelves_path(@shelf)
  end


  private

  def shelf_params
  	params.require(:shelf).permit(:title, :body)
  end


end
