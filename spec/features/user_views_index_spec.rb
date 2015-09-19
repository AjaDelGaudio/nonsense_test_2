require 'spec_helper'
require 'rails_helper'
require 'capybara'

feature "User views the index page", %(
  As a user
  I want to navigate from the index page to the survey
  So that I can answer the first survey question.
) do
=begin
    Acceptance Criteria:
    [ ] When I visit the root path, I can see a welcome
        message.
    [ ] When I visit the root path, I have the choice
        to take the survey.
    [ ] If I choose to take the survey, I am sent to a
        "survey" page to view the survey questions.
=end

  scenario "user views the welcome page" do
    visit '/'

    expect(page).to have_content "Welcome!"
  end

  scenario "user navigates to the survey" do
    visit '/'
    find_link('Take the survey!')
    click_link('Take the survey!')
    visit '/survey/question-1'

    current_path.should == "/survey/question-1"
    expect(page).to have_content("Question 1")
  end
end
