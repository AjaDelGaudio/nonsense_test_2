class QuestionsController < ApplicationController
  def show
    @question = Question.all
  end
end
