ActiveAdmin.register Student do
  permit_params :student_first_name, :student_surname_name, :parent_name, :parent_email, :student_email, :mobile_number, :full_address, :sick_or_holiday, :daily_arrival, :comments

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
