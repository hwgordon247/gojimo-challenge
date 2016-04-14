require 'net/http'
require 'json'


class ApiRequest

  attr_reader :information

  def self.hit_api
    url = URI('https://api.gojimo.net/api/v4/qualifications')
    response = Net::HTTP.get(url)
    @information = JSON.parse(response)
  end

  def self.sort_qualifications
    qualification_store = []
    @information.each do |qualification|
      qualification_store << qualification['name']
    end
    qualification_store
  end

  def self.sort_subjects(chosen_qualification)
    subject_store = []
    @information.each do |qualification|
      if chosen_qualification == qualification['name']
        qualification['subjects'].each do |subject|
          subject_store << subject['title']
        end
      end
    end
    subject_store
  end




end
