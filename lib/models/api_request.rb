require 'net/http'
require 'json'


class ApiRequest

  def self.hit_api
    url = URI('https://api.gojimo.net/api/v4/qualifications')
    response = Net::HTTP.get(url)
    @information = JSON.parse(response)
    @data_evaluate = DataEvaluate.new(@information)
  end

  def self.sort_qualifications
    @data_evaluate.return_qualifications
  end

  def self.sort_subjects(chosen_qualification)
    @data_evaluate.return_subjects(chosen_qualification)
  end

  def self.qualification_country(chosen_qualification)
    @data_evaluate.return_country(chosen_qualification)
  end

end
