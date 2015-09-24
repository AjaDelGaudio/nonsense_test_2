class QuestionsController < ApplicationController

  def show
    @questions = Question.all
    @question = @questions.first
    @choices = Choice.all
    @choice = @question.choice

  end
end
