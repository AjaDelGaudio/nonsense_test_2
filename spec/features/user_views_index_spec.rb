require 'spec_helper'
require 'rails_helper'
require 'capybara'

feature "User answers survey questions - ", %(
  As a user
  I want to take a survey
  So that I can know my tolerence level for nonsense.
) do
=begin
    Acceptance Criteria:
    [x] I can view the current question.
    [ ] If there are multiple choice answers associated with the question,
        I can view the choices and submit my answer choice.
    [ ] If it is an open-ended question, I can submit my answer via a text field.
    [ ] After I submit my answer, I am taken to the next question.
=end
  scenario "user views the current question and its number" do
    question = FactoryGirl.create(:question)

    visit question_path(question)

    expect(page).to have_content(question.number)
    expect(page).to have_content(question.text)
  end

  scenario "only one question on the page" do
    question_1 = Question.create(number: 1, text: "What is this?", multiple_choice: true)
    question_2 = Question.create(number: 1, text: "What is that?", multiple_choice: true)

    visit question_path(question_1)

    expect(page).to have_content(question_1.text)
    expect(page).not_to have_content(question_2.text)
  end

  scenario "user submits the answer to a multiple choice question" do
    question = FactoryGirl.create(:question)
    choices = FactoryGirl.create(:choices)

    choice_a = choices.hash.data["a"]
    choice_b = choices.hash.data["b"]

    visit question_path(question)

    expect(page).to have_content(choice_a)
    expect(page).to have_content(choice_b)

  end

end
