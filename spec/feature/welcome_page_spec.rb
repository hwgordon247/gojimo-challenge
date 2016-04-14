feature 'welcome page' do

  scenario 'has the application title' do
    visit '/'
    expect(page).to have_content 'Gojimo Challenge'
  end

  scenario 'has a button to the qualifications page' do
    proceed_qualifications
    expect(page).to have_content 'Qualifications'
  end
end
