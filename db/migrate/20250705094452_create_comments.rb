class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :store, null: false, foreign_key: true

      t.timestamps null: false
    end
    
    add_index :comments, :store_id
  end
end
