require 'net/http'
require 'json'

class ApiRequest

  attr_reader :information

  def initialize
    @information = []
  end

  def request
    url = URI('https://api.gojimo.net/api/v4/qualifications')
    response = Net::HTTP.get(url)
    @information = JSON.parse(response)
  end


end
