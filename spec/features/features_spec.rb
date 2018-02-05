describe RPSWeb, :type => :feature do

  scenario "entering a player name" do
    visit "/"
    expect(page).to have_content('Enter your name')
  end

  scenario "starting the game" do
    visit "/play"
    expect(page).to have_content("Choose your weapon")
  end

  scenario "the player can choose a weapon" do
    visit "/choice"
    expect(page).to have_content("player chose this, computer chose this...")
  end

end
