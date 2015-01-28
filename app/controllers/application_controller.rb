class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_beers
  $logged_in = false
  
  def get_beers
    @all_beers = Beer.order('name').all
  end
  
  def authenticate_user
    if $logged_in == false
      redirect_to admin_login_url 
    end
  end
end
