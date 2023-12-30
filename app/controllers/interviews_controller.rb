class InterviewsController < ApplicationController
  def index
    @vacancies = Vacancy.all

    @vacancy_id = params[:vacancy_id]

    @interviews = if @vacancy_id.present?
                    Interview.eager_load(:video, :vacancy, :grade).where(vacancy_id: @vacancy_id)
                  else
                    Interview.eager_load(:video, :vacancy, :grade).all
                  end
  end
end
