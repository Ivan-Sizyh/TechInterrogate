class InterviewsController < ApplicationController
  def index
    @vacancy_id = params[:vacancy_id]

    @grade_id = params[:grade_id]

    @interviews = Interview.includes(:video, :vacancy, :grade)

    @interviews = @interviews.where(vacancy_id: @vacancy_id) if @vacancy_id.present?

    @interviews = @interviews.where(grade_id: @grade_id) if @grade_id.present?
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
