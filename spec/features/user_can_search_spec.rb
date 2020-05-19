require 'rails_helper'

describe 'visitor' do
  it 'can search houses' do


    visit '/'
    find('#house').find(:xpath, 'option[1]').select_option

    click_on 'Search For Members'

    expect(current_path).to eq('/search')
    expect(page).to have_content("21 members from Gryffindor")
    expect(page).to have_content("Aberforth Dumbledore Gryffindor Owner, Hog's Head Inn goat")
    expect(page).to have_content("Sirius Black Gryffindor")
    expect(page).to have_content("Ronald Weasley Gryffindor student jack russell terrier")
  end

end
