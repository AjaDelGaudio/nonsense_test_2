require 'spec_helper'
require 'rails_helper'
require 'capybara'

feature "User answers survey questions", %(
  As a user
  I want to take a survey
  So that I can know my tolerence level for nonsense.
) do
=begin
    Acceptance Criteria:
    [ ] I can view the current question.
    [ ] If there are multiple choice answers associated with the question,
        I can view the choices and submit my answer choice.
    [ ] If it is an openended question, I can submit my answer via a text field.
    [ ] After I submit my answer, I am taken to the next question.
=end
  scenario "user views the current question and it's number" do
    question = FactoryGirl.create(:question)

    visit questions_path

    expect(page).to have_content(question.number)
    expect(page).to have_content(question.text)
  end

  scenario "only one question on the page" do
    question_1 = FactoryGirl.create(:question)
    question_2 = FactoryGirl.create(:question)

    visit questions_path

    expect(page).to have_content(question_1.text)
    expect(page).not_to have_content(question_2.text)
  end
end
