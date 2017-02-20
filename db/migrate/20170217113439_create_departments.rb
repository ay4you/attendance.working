class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :department_name

      t.timestamps default: Time.now, null: true
    end
  end
end
