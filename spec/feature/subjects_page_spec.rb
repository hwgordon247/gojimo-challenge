feature 'subject page' do

  scenario 'displays the chosen qualification title' do
    proceed_subjects
    expect(page).to have_content 'Junior Certificate'
  end

  scenario 'displays the qualification country' do
    proceed_subjects
    expect(page).to have_content 'Ireland'
  end

  scenario 'displays the relevant subject for the chosen qualification' do
    proceed_subjects
    expect(page).to have_content 'Maths'
  end

  scenario 'has a return button' do
    proceed_subjects
    click_button('Return')
    expect(page).to have_content 'Qualifications'
  end

  scenario 'displays error when there are no subjects' do
    proceed_qualifications
    click_button('Test')
    expect(page).to have_content 'No subjects available for this qualification'
  end

  scenario 'displays error when there is no county data' do
    proceed_qualifications
    click_button('Test')
    expect(page).to have_content 'N/A'
  end

end
