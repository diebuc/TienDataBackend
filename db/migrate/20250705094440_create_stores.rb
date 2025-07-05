class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :URL
      t.string :hoursOfOperation

      t.timestamps null: false
    end
  end
end
