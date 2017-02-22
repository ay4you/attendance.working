class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :grade, index: true
      t.string :student_first_name
      t.string :student_surname_name
      t.string :parent_name
      t.string :image_path
      t.string :parent_email
      t.string :student_email
      t.string :mobile_number
      t.text :full_address
      t.boolean :sick_or_holiday
      t.text :comments

      t.timestamps default: Time.now, null: true
    end
  end
end
