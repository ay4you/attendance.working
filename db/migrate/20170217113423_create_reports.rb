class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.integer :semester
      t.date :class_year
      t.references :subject, index: true
      t.references :student, index: true

      t.timestamps default: Time.now, null: true
    end
  end
end
