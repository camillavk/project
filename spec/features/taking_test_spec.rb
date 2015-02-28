require 'rails_helper'
require_relative 'helpers/application'

include ApplicationHelper

context "when user signed in" do
  before do
    Test.create(name: 'Test')
    Question.create(question: "1", answer: "a")
    Question.create(question: "2", answer: "c")
    sign_up_one
  end

  it "they should see a new test link" do
    expect(page).to have_link('Take a paper now')
  end

  it "new test link takes them to the test" do
    click_link "Take a paper now"
    expect(page).to have_link("Test")
  end

  xit "test link takes them to new question" do
    click_link "Take a paper now"
    click_link "Test"
    click_link "Let's get started!"
    expect(page).to have_content "Question 1"
  end

end
