class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade_name
      t.references :teacher, index: true
      t.references :department, index: true

      t.timestamps default: Time.now, null: true
    end
  end
end
