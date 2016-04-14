require 'sinatra/base'
require 'sinatra'
require_relative 'models/api_request'

class Gojimo < Sinatra::Base

  get '/' do
    api_request = ApiRequest.new
    @qualifications = api_request.sort_qualifications
    erb :'/home'
  end

  post '/subjects' do
    api_request = ApiRequest.new
    @qualification = params[:qualification]
    @subjects = api_request.sort_subjects(@qualification)
    erb :'/subjects'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
