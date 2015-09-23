class QuestionsController < ApplicationController
  def show
    @questions = Question.all
    @question = @questions.find_by(number: 1)
  end
end
