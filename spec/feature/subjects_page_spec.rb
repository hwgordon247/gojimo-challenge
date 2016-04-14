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
end
