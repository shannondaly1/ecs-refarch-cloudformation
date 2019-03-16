# myapp.rb
require 'sinatra'
require 'json'

set :environment, :production
set :logging, true
set :port, ENV['PORT']

get '/' do
  content_type :json
  [
    {
        ID:          "0000-0000-0001",
        Title:       "Fork Handles",
        Description: "Got forks? Worn out ones? You need our all new Fork Handles",
        Price:       6.95,
      },
    {
        ID:          "0000-0000-0002",
        Title:       "Four Candles",
        Description: "One candle never enough? You need our new Four Candles bundle",
        Price:       3.75,
      },
    {
        ID:          "0000-0000-0003",
        Title:       "Egg Basket",
        Description: "Holds 6 unbroken eggs or 36 broken ones",
        Price:       9.99,
      }
    ].to_json
end
