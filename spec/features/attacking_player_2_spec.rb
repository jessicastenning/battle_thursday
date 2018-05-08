feature 'Attack and confirm' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Dave attacked Mittens"
  end

  scenario 'reduce player 2s hp by 10' do
    sign_in_and_play
    click_button("Attack")
    click_button("Ok")
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario 'switches turns' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Mittens's turn to attack"
  end

  scenario 'attacking player 1' do
    sign_in_and_play
    click_button("Attack")
    click_button("Ok")
    click_button("Attack")
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
