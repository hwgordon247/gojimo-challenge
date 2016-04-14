require 'net/http'
require 'json'


class ApiRequest

  attr_reader :information

  def initialize
    response = Net::HTTP.get(URI('https://api.gojimo.net/api/v4/qualifications'))
    @information = JSON.parse(response)
  end

  def qualifications
    qualification_store = []
    @information.each do |qualification|
      qualification_store << qualification['name']
    end
    qualification_store
  end

  # def request
  #   url = URI('https://api.gojimo.net/api/v4/qualifications')
  #   response = Net::HTTP.get(url)
  #   @information = JSON.parse(response)
  # end


end
