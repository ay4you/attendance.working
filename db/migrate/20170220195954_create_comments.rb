class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.integer :parent_id
      t.text :body

      t.timestamps default: Time.now, null: true
    end
  end
end
