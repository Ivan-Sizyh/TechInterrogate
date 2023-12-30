class VacanciesController < ApplicationController
  before_action :set_vacancy, only: %i[show]

  def index
    @vacancies = Vacancy.all
  end

  def show
    tag_id = params[:tag_id]

    @questions = @vacancy.questions.includes(:tag)

    @tags = @questions.map(&:tag).uniq

    if tag_id.present?
      @questions = @questions.select { |question| question.tag_id == tag_id.to_i }
    end
  end

  private

  def set_vacancy
    @vacancy = Vacancy.find(params[:id])
  end
end
