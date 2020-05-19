require 'rails_helper'

describe 'visitor' do
  it 'can search houses' do


    visit '/'
    find('#house').find(:xpath, 'option[1]').select_option

    click_on 'Search For Members'

    expect(current_path).to eq('/search')
    expect(page).to have_content("21 members from Gryffindor")
    expect(page).to have_content("Aberforth Dumbledore")
    expect(page).to have_content("House: Gryffindor")
    expect(page).to have_content("Role: Owner, Hog's Head Inn")
    expect(page).to have_content("Patronus: goat")

    visit '/'
    find('#house').find(:xpath, 'option[3]').select_option

    click_on 'Search For Members'
    expect(page).to have_content("1 members from Slytherin")
    expect(page).to have_content("Severus Snape")
    expect(page).to have_content("House: Slytherin")
    expect(page).to have_content("Role: Professor, Potions")
    expect(page).to have_content("Patronus: doe")
  end

end
