require 'sinatra/base'
require 'sinatra'
require_relative 'models/api_request'

class Gojimo < Sinatra::Base
  enable :sessions

  get '/' do
    ApiRequest.hit_api
    @qualifications = ApiRequest.sort_qualifications
    erb :'/home'
  end

  get '/subjects' do
    @qualification = session[:qualification]
    @subjects = ApiRequest.sort_subjects(@qualification)
    erb :'/subjects'
  end

  post '/subjects' do
    session[:qualification] = params[:qualification]
    redirect '/subjects'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
