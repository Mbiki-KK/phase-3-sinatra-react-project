class CreateContactTable < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts, id: false do|t|
      t.integer :id
      t.string :name
      t.string :email
      t.integer :phone
      t.string :status
      t.string :location
      t.string :relation
      t.timestamps
    end
  end
end
