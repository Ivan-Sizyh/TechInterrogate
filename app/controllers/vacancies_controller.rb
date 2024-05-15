class VacanciesController < ApplicationController
  before_action :set_vacancy, only: %i[show destroy]

  def index
    @pagy, @vacancies = pagy Vacancy.all
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.create(vacancy_params)

    if @vacancy.save
      flash[:success] = t('flash.success_create_vacancy')
      redirect_to vacancy_path(@vacancy)
    else
      render :new
    end
  end

  def show
    tag_id = params[:tag_id]

    @questions = if tag_id.present?
                   @vacancy.questions.where(tag: tag_id).includes(:tag)
                 else
                   @vacancy.questions.includes(:tag)
                 end

    @tags = @questions.map(&:tag).uniq
  end

  def edit; end

  def update; end

  def destroy
    @vacancy.destroy
    flash[:success] = t('flash.success_delete_vacancy')
    redirect_to root_path
  end

  private

  def set_vacancy
    @vacancy = Vacancy.find(params[:id])
  end

  def vacancy_params
    params.require(:vacancy).permit(:title, :description)
  end
end
