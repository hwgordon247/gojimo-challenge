require './lib/models/api_request'

describe ApiRequest do

  subject(:api_request) {described_class}

  it 'can return an array of all the qualifications' do
    api_request.hit_api
    expect(api_request.sort_qualifications).to include 'Test'
    expect(api_request.sort_qualifications.length).to eq 30
  end

  it 'can return an array of all subject for chosen qualification' do
    api_request.hit_api
    expect(api_request.sort_subjects('Junior Certificate')).to include 'Maths'
    expect(api_request.sort_subjects('Junior Certificate').length).to eq 8
  end
end
