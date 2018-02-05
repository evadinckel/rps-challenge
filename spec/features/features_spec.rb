describe RPSWeb, :type => :feature do

  scenario "entering a player name" do
    visit "/"
    expect(page).to have_content('Enter your name')
  end

  scenario "starting the game" do
    visit "/play"
    expect(page).to have_content("Start Rock/Paper/Scissors game")
  end
  
end
