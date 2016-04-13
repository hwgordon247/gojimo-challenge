require 'sinatra/base'
require 'sinatra'
require_relative 'models/api_request'

class Gojimo < Sinatra::Base

  get '/' do
    api_request = ApiRequest.new

    erb :'/home'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
