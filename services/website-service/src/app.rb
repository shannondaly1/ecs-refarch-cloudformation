# myapp.rb
require 'sinatra'
require 'rest-client'
require 'json'

set :environment, :production
set :logging, true

get '/' do
  result = JSON.parse(RestClient.get('http://localhost:9494').body)
  erb :index, :locals => { products: result }
end
