require 'rails_helper'

describe 'visitor' do
  it 'can search houses' do


    visit '/'
    find('#house').find(:xpath, 'option[1]').select_option

    click_on 'Search For Members'

    expect(current_path).to eq('/search')
    expect(page).to have_content("Gryffindor")

  end

end
