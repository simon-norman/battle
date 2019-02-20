require 'capybara/rspec'
require_relative 'web_helpers.rb'

feature "Testing infrastructure" do

  feature "When user inputs player names and submits" do

    let(:player_1_name) { "Simon" }
    let(:player_2_name) { "Luke" }

    before(:each) do
      sign_in_and_play(player_1_name, player_2_name)
    end

    scenario 'Can input user names, submit, then see names on screen' do
      expect(page).to have_content player_1_name
      expect(page).to have_content player_2_name
    end

    scenario "Be able to see player 2's hit points" do
      expect(page).to have_content "Player 2's hit points: 20"
    end
  end

end
