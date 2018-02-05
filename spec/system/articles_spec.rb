require 'rails_helper'

RSpec.describe 'Homepage', type: :system do
  before do
    driven_by :rack_test
  end

  it "shows greeting" do
    visit root_url
    expect(page).to have_content 'Hello!'
  end

  it 'enables me create articles' do
    visit '/articles/new'

    fill_in 'Title', with: "My Article"
    click_button "Create Article"

    expect(page).to have_text("Article was successfully created.")
  end
end
