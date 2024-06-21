class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show destroy]
  before_action :require_authentification, except: %i[show index]
  before_action :authorize_question!
  before_action :set_vacancy, only: %i[new create]
  after_action :verify_authorized, except: %i[show index]

  def new
    @question = @vacancy.questions.build
  end

  def create
    @question = @vacancy.questions.build(question_params)

    if @question.save
      flash[:success] = t('flash.success_create_question')
      redirect_to @question
    else
      render :new
    end
  end

  def show
    @answers = @question.answers
    @videos = @question.videos unless @question.video_links.empty?
  end

  def destroy
    @question.destroy
    flash[:success] = t('flash.success_delete_question')
    redirect_to vacancy_path(@question.vacancy)
  end

  private

  def question_params
    params.require(:question).permit(:text, :tag_id)
  end

  def find_question
    @question = Question.includes(:answers).find(params[:id])
  end

  def authorize_question!
    authorize(@question || Question)
  end

  def set_vacancy
    @vacancy = Vacancy.find(params[:vacancy_id])
  end
end
