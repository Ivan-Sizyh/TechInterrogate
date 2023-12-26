class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show]

  def show
    @answers = @question.answers
    @video_links = @question.video_links
  end

  private

  def find_question
    @question = Question.includes(:video_links, :answers).find(params[:id])
  end
end
