require 'sinatra/base'
require 'sinatra'

class Gojimo < Sinatra::Base

  get '/' do
    erb :'/home'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
