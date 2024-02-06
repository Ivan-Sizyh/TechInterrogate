class VacanciesController < ApplicationController
  before_action :set_vacancy, only: %i[show]

  def index
    @vacancies = Vacancy.all
  end

  def show
    tag_id = params[:tag_id]

    @questions = @vacancy.questions.includes(:tag)

    @tags = @questions.map(&:tag).uniq

    return unless tag_id.present?

    @questions = @questions.where(tag: tag_id)
  end

  private

  def set_vacancy
    @vacancy = Vacancy.find(params[:id])
  end
end
