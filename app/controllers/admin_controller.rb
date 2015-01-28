class AdminController < ApplicationController
  def login
  end

  def auth
    @user = User.find_by name: params[:name], password: params[:password]
    if @user
      $logged_in = true
      redirect_to beers_url
    else
      $logged_in = false
      redirect_to root_url
    end
  end
end
