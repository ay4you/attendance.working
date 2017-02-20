class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.references :department, index: true
      t.string :subject_name

      t.timestamps default: Time.now, null: true
    end
  end
end
