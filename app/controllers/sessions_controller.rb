class SessionsController < ApplicationController
  before_action :require_no_authentification, only: %i[new create]
  before_action :require_authentification, only: :destroy

  def new; end

  def create
    email = params[:email]

    if email.present?
      user = User.find_by(email:).decorate

      if user&.authenticate(params[:password])
        sign_in(user)
        remember(user) if params[:remember_user] == '1'
        flash[:success] = t('flash.welcome_back', name: current_user(user).name_or_email)
        redirect_to root_path
      else
        flash[:warning] = t('flash.incorrect_data')
        render :new
      end
    else
      flash[:warning] = t('flash.missing_email')
      render :new
    end
  end

  def destroy
    sign_out
    flash[:success] = t('flash.see_you_later')
    redirect_to root_path
  end
end
