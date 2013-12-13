class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :store

      t.timestamps
    end
    add_index :comments, :store_id
  end
end
