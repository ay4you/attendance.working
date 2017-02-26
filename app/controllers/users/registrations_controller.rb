class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper


  def create
    super
    pp current_user
  end

  def new
    # @user = User.new
    # @user.role_id = current_user.role_id
    super
  end

  def edit
    super
  end

  def find_userable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def destroy
    User.update(current_user.id, role_id: 2)
    flash[:success] = "User Banned"
    sign_out current_user
    session[:user_id] = nil
    redirect_to root_path
    end

end
