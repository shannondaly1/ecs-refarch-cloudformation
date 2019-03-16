# myapp.rb
require 'sinatra'
require 'rest-client'
require 'json'

set :environment, :production
set :logging, true
set :port, ENV['PORT']

get '/' do
  result = JSON.parse(RestClient.get(ENV['PRODUCT_SERVICE']).body)
  erb :index, :locals => { products: result }
end
