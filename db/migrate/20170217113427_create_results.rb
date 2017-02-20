class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :student, index: true
      t.string :name
      t.references :workload, index: true
      t.references :report, index: true

      t.timestamps default: Time.now, null: true
    end
  end
end
