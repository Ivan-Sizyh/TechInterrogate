class VacanciesController < ApplicationController
  before_action :set_vacancy, only: %i[show]

  def index
    @vacancies = Vacancy.all
  end

  def show
    @questions = if @vacancy.questions.any? && params[:tag_id].present?
                   @vacancy.questions.includes(:tag).where(tags: { id: params[:tag_id] })
                 else
                   @vacancy.questions.includes(:tag)
                 end
    if @vacancy.cached_questions_count.nil?
      @vacancy.calculate_questions_count
    end
  end

  private

  def filter_by_tag
    @questions = load_filtered_questions
    render partial: 'questions_list', locals: { questions: @questions }
  end

  def set_vacancy
    @vacancy = Vacancy.includes(:questions).find(params[:id])
  end

  def load_filtered_questions
    if params[:tag_id].present?
      @vacancy.questions.includes(:tag).where(tags: { id: params[:tag_id] })
    else
      @vacancy.questions.includes(:tag)
    end
  end
end
