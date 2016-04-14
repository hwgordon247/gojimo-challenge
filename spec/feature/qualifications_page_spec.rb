feature 'qualification page' do

  scenario 'has the title of the web app' do
    proceed_qualifications
    expect(page).to have_content "Gojimo Challenge"
  end

  scenario 'has a list of qualifications' do
    proceed_qualifications
    expect(page).to have_content "Test"
  end

  scenario 'can refresh the data from the api_request' do
    proceed_qualifications
    expect(page).to have_content 'Refresh Information'
  end


end
