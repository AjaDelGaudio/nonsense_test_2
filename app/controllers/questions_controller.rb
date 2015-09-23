class QuestionsController < ApplicationController

  def show
    @questions = Question.all
    @question = @questions.first
    @choices = Choice.all
    binding.pry
    @choices = @question.choice

  end
end
