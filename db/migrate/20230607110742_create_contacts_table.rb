class CreateContactsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :status
      t.string :location
      t.timestamps
    end
  end
end
