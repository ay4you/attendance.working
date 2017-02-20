class CreateWorkloads < ActiveRecord::Migration
  def change
    create_table :workloads do |t|
      t.string :name
      t.text :comments
      t.string :image_path
      t.string :score
      t.references :subject, index: true

      t.timestamps default: Time.now, null: true
    end
  end
end
