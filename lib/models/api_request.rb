require 'net/http'
require 'json'


class ApiRequest

  attr_reader :information

  def initialize
    response = Net::HTTP.get(URI('https://api.gojimo.net/api/v4/qualifications'))
    @information = JSON.parse(response)
  end

  def sort_qualifications
    qualification_store = []
    @information.each do |qualification|
      qualification_store << qualification['name']
    end
    qualification_store
  end

  def sort_subjects(chosen_qualification)
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
