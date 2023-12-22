# frozen_string_literal: true

class VacanciesController < ApplicationController # rubocop:disable Style/Documentation
  before_action :set_vacancy, only: %i[show]

  def index
    @vacancies = Vacancy.all
  end

  def show
    if params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      @questions = @vacancy.questions.where(tag: @tag)
    else
      @questions = @vacancy.questions
    end

    @tags = @vacancy.questions.includes(:tag).flat_map(&:tag).uniq
  end

  private

  def set_vacancy
    @vacancy = Vacancy.find(params[:id])
  end
end
