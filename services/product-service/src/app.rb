# myapp.rb
require 'sinatra'

set :environment, :production
set :logging, true

get '/' do
  'Hello world!!!'
end
