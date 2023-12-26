class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show]

  def show
    @answers = @question.answers
    @videos = @question.videos
  end

  private

  def find_question
    @question = Question.includes(:answers).find(params[:id])
  end
end
