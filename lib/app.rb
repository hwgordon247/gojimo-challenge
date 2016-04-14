require 'sinatra/base'
require 'sinatra'
require_relative 'models/api_request'

class Gojimo < Sinatra::Base

  get '/' do
    api_request = ApiRequest.new
    @qualifications = api_request.qualifications
    erb :'/home'
  end

  post '/subjects' do
    @qualification = params[:qualification]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
