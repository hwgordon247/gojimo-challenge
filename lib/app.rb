require 'sinatra/base'
require 'sinatra'
require_relative 'models/api_request'
require_relative 'models/data_evaluate'


class Gojimo < Sinatra::Base
  enable :sessions

  get '/' do
    ApiRequest.hit_api
    erb :'welcome'
  end

  get '/qualifications' do
    @qualifications = ApiRequest.data_evaluate.return_qualifications
    erb :'/qualifications'
  end

  get '/subjects' do
    @qualification = session[:qualification]
    @subjects = ApiRequest.data_evaluate.return_subjects(@qualification)
    @country = ApiRequest.data_evaluate.return_country(@qualification)
    erb :'/subjects'
  end

  post '/subjects' do
    session[:qualification] = params[:qualification]
    redirect '/subjects'
  end

  post '/refresh' do
    ApiRequest.hit_api
    redirect '/qualifications'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
