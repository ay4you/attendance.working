class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :fullname
      t.string :email
      t.string :title
      t.string :mobile_number
      t.string :image_path


      t.timestamps default: Time.now, null: true
    end
  end
end
