class Users::ConfirmationsController < Devise::ConfirmationsController
  include ApplicationHelper

  private
  def after_confirmation_path_for(resource_name, resource)
    your_new_after_confirmation_path
  end
end