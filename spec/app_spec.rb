require 'capybara/rspec'

feature 'Testing infrastructure' do
  scenario 'Can input user names, submit, then see names on screen' do
    visit('/')
    player_1_name = 'Simon'
    player_2_name = 'Luke'

    fill_in 'player_1_name_input', with: player_1_name
    fill_in 'player_2_name_input', with: player_2_name

    click_button 'submit'

    expect(page).to have_content player_1_name && player_2_name
  end
end
