class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :store, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
