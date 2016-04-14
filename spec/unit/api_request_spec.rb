require './lib/models/api_request'

describe ApiRequest do

  subject(:api_request) {described_class.new}

  it 'can return an array of all the qualifications' do
    expect(api_request.qualifications).to include 'Test'
    expect(api_request.qualifications.length).to eq 30
  end
end
