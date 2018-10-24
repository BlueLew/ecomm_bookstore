require "rails_helper"

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end
  
  it "allows a visitor without a user account to view the books index" do
    
    visit "/"

    expect(page).to have_text(Book)
    expect(page).to have_text(Author)
  end
end
