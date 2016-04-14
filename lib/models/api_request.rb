require 'net/http'
require 'json'


class ApiRequest

  class << self
    attr_reader :data_evaluate
  end

  def self.hit_api
    url = URI('https://api.gojimo.net/api/v4/qualifications')
    response = Net::HTTP.get(url)
    information = JSON.parse(response)
    @data_evaluate = DataEvaluate.new(information)
  end

end
