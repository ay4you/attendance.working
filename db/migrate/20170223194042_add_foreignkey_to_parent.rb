class AddForeignkeyToParent < ActiveRecord::Migration
  def change
    add_column :parents, :student_id, :integer, index: true, null: false
    add_foreign_key :parents, :students, index: true, foreign_key: true
  end
end
