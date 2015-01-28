class BeersController < ApplicationController
  before_filter :authenticate_user  

  def create 
    @beer = Beer.new
    @beer.name = params[:name]
    @beer.price = params[:price]
    @beer.save
    redirect_to action: "index"
  end

  def show
  end
 
  def delete
    Beer.find(params[:beer]).destroy
    redirect_to action: "index"
  end
end
