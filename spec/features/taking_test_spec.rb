require 'rails_helper'
require_relative 'helpers/application'

include ApplicationHelper

context "when user signed in" do
  before do
    Test.create(name: 'Test')
    sign_up_one
  end

  it "they should see a new test link" do
    expect(page).to have_link('Take a paper now')
  end

  it "new test link takes them to the test" do
    click_link "Take a paper now"
    expect(page).to have_link("Let's get started!")
  end

end
