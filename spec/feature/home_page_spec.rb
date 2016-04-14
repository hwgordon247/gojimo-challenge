feature 'home page' do

  scenario 'has the title of the web app' do
    visit '/'
    expect(page).to have_content "Gojimo Challenge"
  end

  scenario 'has a list of qualifications' do
    visit '/'
    expect(page).to have_content "Test"
  end

end
