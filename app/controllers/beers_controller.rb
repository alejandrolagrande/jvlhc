class BeersController < ApplicationController
 # before_filter :authenticate_user  
  
  def create 
    @beer = Beer.new
    @beer.name = params[:name]
    @beer.price = params[:price]
    @beer.save
    redirect_to action: "index"
  end

  def show
  end
 
  def upload 
    uploaded_io = params[:picture]
    File.open(Rails.root.join('app', 'assets', 'images', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    redirect_to action: "index"
  end 

  def newCal
    @calendar = Calendar.new
    @calendar.date = params[:date]
    @calendar.event = params[:event]
    path = params[:image_name]

    @calendar.path = path
    @calendar.save 
    redirect_to action: "index"
  end

  def delCal
    Calendar.find(params[:event]).destroy
    redirect_to action: "index"
  end

  def delete
    Beer.find(params[:beer]).destroy
    redirect_to action: "index"
  end
end
