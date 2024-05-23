class UsersController < ApplicationController
  before_action :require_no_authentification, only: %i[new create]
  before_action :require_authentification, only: %i[edit update]
  before_action :set_user!, only: %i[edit update]

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params).decorate

    if @user.save
      sign_in(@user)
      flash[:success] = t('flash.welcome_back', name: @user.name_or_email)
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = t('flash.successful_update')
      redirect_to edit_user_path(@user)
    else
      render :edit
    end
  end

  private

  def set_user!
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation, :old_password)
  end
end
