class AnswersController < ApplicationController
  before_action :require_authentification, except: %i[show index]
  before_action :authorize_answer!
  before_action :set_question, only: %i[new create]
  before_action :find_answer, only: %i[destroy]

  def new
    @answer = @question.answers.build
  end

  def create
    @answer = @question.answers.build(answer_params)
    @answer.response_date = Date.current
    @answer.responder = current_user.name_or_email
    @answer.additional = "A{A[A{{A}}]}"
    @answer.additioner = current_user.name_or_email

    if @question.save
      flash[:success] = t('flash.success_create_answer')
      redirect_to @answer.question
    else
      render :new
    end
  end

  def destroy
    @answer.destroy
    flash[:success] = t('flash.success_delete_answer')
    redirect_to question_path(@answer.question)
  end

  private

  def answer_params
    params.require(:answer).permit(:text, :responce_date, :responder, :additional, :additioner)
  end

  def find_answer
    @answer = Answer.find(params[:id])
  end

  def authorize_answer!
    authorize(@answer || Answer)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end
end
