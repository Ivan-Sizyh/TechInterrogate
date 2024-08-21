class VacanciesController < ApplicationController
  before_action :set_vacancy, only: %i[show destroy]
  before_action :require_authentification, except: %i[show index]
  before_action :authorize_vacancy!
  after_action :verify_authorized, except: %i[show index]

  def index
    @pagy, @vacancies = pagy Vacancy.order(created_at: :asc)
  end

  def show
    tag_id = params[:tag_id]

    @questions = if tag_id.present?
                   @vacancy.questions.where(tag: tag_id)
                 else
                   @vacancy.questions
                 end

    @tags = Tag.all.uniq
  end

  def new
    @vacancy = Vacancy.new
  end

  def edit; end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    if @vacancy.save
      flash[:success] = t('flash.success_create_vacancy')
      redirect_to vacancy_path(@vacancy)
    else
      render :new
    end
  end

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

  def authorize_vacancy!
    authorize(@vacancy || Vacancy)
  end
end
