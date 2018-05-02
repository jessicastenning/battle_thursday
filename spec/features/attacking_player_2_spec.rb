feature 'Attack and confirm' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Dave attacks Mittens"
  end
end
