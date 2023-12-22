# frozen_string_literal: true

class VacanciesController < ApplicationController # rubocop:disable Style/Documentation
  before_action :set_vacancy, only: %i[show]

  def index
    @vacancies = Vacancy.all
  end

  def show
    tag_id = params[:tag_id]

    @questions = if tag_id.present?
                   @vacancy.questions.where(tag: Tag.find_by(id: tag_id))
                 else
                   @vacancy.questions
                 end
    @tags = @vacancy.questions.includes([:tag]).flat_map(&:tag).uniq
  end

  private

  def set_vacancy
    @vacancy = Vacancy.find(params[:id])
  end
end
