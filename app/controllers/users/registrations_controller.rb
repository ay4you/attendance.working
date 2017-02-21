class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super
  end

  def new
    super
  end

  def edit
    super
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to root_path
  end
end
