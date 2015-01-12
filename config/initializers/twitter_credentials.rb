require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'n6yB5IhmDxAzn93AOIcJhcYS4'
  config.consumer_secret = 'GfWCpo8uWWfGc0e6NrB23gOqdB43ZbSZObaa1eS17dZ2uwJkkn'
  config.oauth_token = '113056053-IRtNOxv3CKA7Cb30KTTZ3KZWUon8dZZtmRsYclHR'
  config.oauth_token_secret = 'OZd49wt3EpTH8v3DhKFT2WMiK9X6BMLUKvXnHdCwi0bYs'
end
