require './lib/models/data_evaluate'
require 'json'

describe DataEvaluate do

  subject(:data_evaluate) do
    file = File.join(File.dirname(__FILE__), '../api_response.json')
    json_file = File.read(file)
    described_class.new(JSON.parse(json_file))
  end

  it 'can return an array of all the qualifications' do
    expect(data_evaluate.return_qualifications).to include 'Test'
    expect(data_evaluate.return_qualifications.length).to eq 30
  end

  it 'can return an array of all subject for chosen qualification' do
    expect(data_evaluate.return_subjects('Junior Certificate')).to include 'Maths'
    expect(data_evaluate.return_subjects('Junior Certificate').length).to eq 8
  end

  it 'can return the country of the chosen qualification' do
    expect(data_evaluate.return_country('Junior Certificate')).to eq "Ireland"
  end

end
