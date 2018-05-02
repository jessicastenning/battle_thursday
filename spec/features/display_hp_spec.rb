feature 'HP display' do
  scenario 'visibility of HP' do
    sign_in_and_play
    expect(page).to have_content "Dave: 60HP, Mittens: 60HP"
  end
end
