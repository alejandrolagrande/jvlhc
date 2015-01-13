class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @tweets = []
  client = Twitter::REST::Client.new do |config|
    config.consumer_key = 'n6yB5IhmDxAzn93AOIcJhcYS4'
    config.consumer_secret = 'GfWCpo8uWWfGc0e6NrB23gOqdB43ZbSZObaa1eS17dZ2uwJkkn'
    config.access_token = '113056053-IRtNOxv3CKA7Cb30KTTZ3KZWUon8dZZtmRsYclHR'
    config.access_token_secret = 'OZd49wt3EpTH8v3DhKFT2WMiK9X6BMLUKvXnHdCwi0bYs'
  end

  client.search("to:justinbieber marry me", result_type: "recent").take(3).each do |tweet|
    @tweets << tweet
  end
end
